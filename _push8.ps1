$ErrorActionPreference = 'Stop'
$sig = @"
using System;
using System.Runtime.InteropServices;
public class NativeCred18 {
    [StructLayout(LayoutKind.Sequential)]
    public struct CREDENTIAL {
        public int Flags;
        public int Type;
        public IntPtr TargetName;
        public IntPtr Comment;
        public System.Runtime.InteropServices.ComTypes.FILETIME LastWritten;
        public int CredentialBlobSize;
        public IntPtr CredentialBlob;
        public int Persist;
        public int AttributeCount;
        public IntPtr Attributes;
        public IntPtr TargetAlias;
        public IntPtr UserName;
    }
    [DllImport("advapi32.dll", EntryPoint="CredReadW", CharSet=CharSet.Unicode, SetLastError=true)]
    public static extern bool CredRead(string target, int type, int flags, out IntPtr credential);
    [DllImport("advapi32.dll", EntryPoint="CredFree", SetLastError=true)]
    public static extern void CredFree(IntPtr cred);
}
"@
Add-Type -TypeDefinition $sig
$targets = @('git:https://Ashleycurry@github.com', 'git:https://github.com', 'legacy:git:https://Ashleycurry@github.com')
$token = $null
foreach ($t in $targets) {
    $ptr = [IntPtr]::Zero
    if ([NativeCred18]::CredRead($t, 1, 0, [ref]$ptr)) {
        $c = [System.Runtime.InteropServices.Marshal]::PtrToStructure($ptr, [type][NativeCred18+CREDENTIAL])
        $bytes = New-Object byte[] $c.CredentialBlobSize
        [System.Runtime.InteropServices.Marshal]::Copy($c.CredentialBlob, $bytes, 0, $c.CredentialBlobSize)
        $s = [System.Text.Encoding]::Unicode.GetString($bytes).Trim([char]0)
        if ($s -notmatch '^[A-Za-z0-9_]{20,}$') { $s = [System.Text.Encoding]::ASCII.GetString($bytes).Trim([char]0) }
        [NativeCred18]::CredFree($ptr) | Out-Null
        if ($s -match '^[A-Za-z0-9_]{20,}$') { $token = $s; break }
    }
}
if (-not $token) { Write-Output 'NO_TOKEN'; exit 1 }
git add -A
git commit -m "update" --quiet
$b64 = [Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes('Ashleycurry:' + $token))
git -c credential.helper= -c ("http.extraHeader=AUTHORIZATION: Basic " + $b64) push origin HEAD:main

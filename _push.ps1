$ErrorActionPreference = 'Continue'
$sig = @"
using System;
using System.Runtime.InteropServices;
public class NativeCred3 {
    [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
    public struct CREDENTIAL {
        public uint Flags; public uint Type; public IntPtr TargetName; public IntPtr Comment;
        public System.Runtime.InteropServices.ComTypes.FILETIME LastWritten;
        public uint CredentialBlobSize; public IntPtr CredentialBlob; public uint Persist;
        public uint AttributeCount; public IntPtr Attributes; public IntPtr TargetAlias; public IntPtr UserName;
    }
    [DllImport("advapi32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
    public static extern bool CredReadW(string target, uint type, uint flags, out IntPtr credential);
    [DllImport("advapi32.dll", SetLastError = true)]
    public static extern void CredFree(IntPtr cred);
    public static string GetSecret(string target) {
        IntPtr p;
        if (!CredReadW(target, 1, 0, out p)) return null;
        try {
            CREDENTIAL c = (CREDENTIAL)Marshal.PtrToStructure(p, typeof(CREDENTIAL));
            if (c.CredentialBlobSize == 0) return "";
            byte[] b = new byte[c.CredentialBlobSize];
            Marshal.Copy(c.CredentialBlob, b, 0, b.Length);
            return System.Text.Encoding.Unicode.GetString(b);
        } finally { CredFree(p); }
    }
}
"@
Add-Type -TypeDefinition $sig -Language CSharp
$secret = $null
foreach ($t in @('git:https://Ashleycurry@github.com', 'git:https://github.com')) {
    $s = [NativeCred3]::GetSecret($t)
    if ($s) { $secret = $s; break }
}
if (-not $secret) { Write-Output 'NO CREDENTIAL'; exit 1 }
$basic = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes("Ashleycurry:$secret"))
Push-Location 'h:\GitHub-Repository-Backup\ai-foundations-handbook'
git add -A
git -c http.extraHeader="AUTHORIZATION: Basic $basic" commit -m "update" 2>&1 | Out-Null
git -c http.extraHeader="AUTHORIZATION: Basic $basic" push origin main 2>&1 | Out-Null
$code = $LASTEXITCODE
Pop-Location
Write-Output "pushExit=$code"

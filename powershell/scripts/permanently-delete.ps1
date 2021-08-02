$path = $args[0]

$shell = new-object -comobject "WScript.Shell"
$choice = $shell.popup("Are you sure you want to permanently delete this?",0,"Permanent Delete",4+32)

if ($choice -eq 6) {
    rimraf $path
}
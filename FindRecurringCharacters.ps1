
function get-firstduplicate {

    Param ([string] $string) 
    
    $newarr = @()
    for( $x = 0; $x -lt $string.length; $x++ ){
        if ($newarr.Contains($string[$x]) ){
            return $string[$x]
        }
        $newarr += $string[$x]
    }
    write-host 'There are no recurring characters in the string'
}


get-firstduplicate -string 'abccdrfasdgasg'
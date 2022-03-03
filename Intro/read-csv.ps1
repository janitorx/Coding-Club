$csv = Import-Csv .\emp-records.txt

$mvalue = 0
$fvalue = 0
$mvalue = 0

$csv.Gender | ForEach-Object {
    # In here, we do whatever want to the 'cell' that's currently in the pipeline
    # For now, let's just output it.
    $gender_val = $_

    if ($gender_val -ilike "M")
    {
      $mvalue++
    }
    elseif ($gender_val -ilike "F")
    {
      $fvalue++
    }
    else
    {
      $ovalue++
    }

}

Write-Output $mavlue
Write-Output $favlue
Write-Output $ovalue

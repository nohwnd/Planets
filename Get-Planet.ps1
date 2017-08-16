function Get-Planet ([string]$Name='*', [int]$Population) 
{
  $planets = @(
    @{ Name = 'Mercury'; Population = 0 }
    @{ Name = 'Venus';   Population = 0 }
    @{ Name = 'Earth';   Population = 7.5e9 }
    @{ Name = 'Mars';    Population = 0 }
    @{ Name = 'Jupiter'; Population = 0 }
    @{ Name = 'Saturn';  Population = 0 }
    @{ Name = 'Uranus';  Population = 0 }
    @{ Name = 'Neptune'; Population = 0 }
  ) | foreach {[PSCustomObject]$_} `
    | where { $_.Population -ge $Population } `
    | where { $_.Name -like $Name }

  $planets
}



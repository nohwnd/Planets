
# imports the Get-Planet function into local scope
. $PSScriptRoot\Get-Planet.ps1

# To run the tests run the script file, 
# for example by pressing F5.
Describe 'Get-Planet' {
  It 'Lists all 8 planets' {
    $planets = Get-Planet
    $planets.Count | Should -Be 8
  }

  It 'Filters planets by name' {
    $planetsStartingWithNe = Get-Planet -Name 'ne*' 
    $planetsStartingWithNe.Name | Should -Be 'Neptune'
  }

  It 'Filters planets by population' {
    $planetsStartingWithEa = Get-Planet -Population 1
    $planetsStartingWithEa.Name | Should -Be 'Earth'
  }
}

# Invoke the default OneNote application and load a page
Function Invoke-ONApp {
    [CmdletBinding(DefaultParameterSetName='page')]
    Param(
        [parameter(Position=0,ParameterSetName="page",Mandatory=$true)]
        [object]$Page,
        [parameter(Position=0,ParameterSetName="id",Mandatory=$true)]
        [string]$Id
    )
    If ($Id) {
        $page = Get-ONItem -ItemType 'pages' -Id $id
    }
    Start-Process  $page.links.oneNoteClientUrl.href
}
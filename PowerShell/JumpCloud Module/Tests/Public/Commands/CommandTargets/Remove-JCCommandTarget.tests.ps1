Describe -Tag:('JCCommandTarget') 'Add-JCCommandTarget 1.3' {
    Connect-JCOnline -JumpCloudApiKey:($TestOrgAPIKey) -force | Out-Null
    It "Removes a single system to a JumpCloud command" {


        $TargetAdd = Add-JCCommandTarget -CommandID $PesterParams.CommandID -SystemID $PesterParams.SystemID


        $TargetRemove = Remove-JCCommandTarget -CommandID $PesterParams.CommandID -SystemID $PesterParams.SystemID

        $TargetRemove.Status | Should -Be 'Removed'



    }

    It "Removes a single system group to a JumpCloud command by GroupName" {

        $TargetAdd = Add-JCCommandTarget -CommandID $PesterParams.CommandID -GroupName $PesterParams.SystemGroupName

        $TargetRemove = Remove-JCCommandTarget -CommandID $PesterParams.CommandID -GroupName $PesterParams.SystemGroupName

        $TargetRemove.Status | Should -Be 'Removed'

    }

    It "Removes a single system group to a JumpCloud command by GroupID" {

        $TargetAdd = Add-JCCommandTarget -CommandID $PesterParams.CommandID -GroupID $PesterParams.SystemGroupID

        $TargetRemove = Remove-JCCommandTarget -CommandID $PesterParams.CommandID -GroupName $PesterParams.SystemGroupName

        $TargetRemove.Status | Should -Be 'Removed'

    }


}

---
external help file: JumpCloud-help.xml
Module Name: JumpCloud
online version: https://github.com/TheJumpCloud/support/wiki/Get-JCSystemInsights
schema: 2.0.0
---

# Get-JCSystemInsights

## SYNOPSIS
JumpCloud's System Insights feature provides admins with the ability to easily interrogate their
fleet of systems to find important pieces of information. Using this function you
can easily gather heightened levels of information from your fleet of JumpCloud managed
systems.

## SYNTAX

### Default
```
Get-JCSystemInsights -Table <String> [[-Fields] <Array>] [[-Filter] <String>] [[-Limit] <Int32>]
 [[-Skip] <Int32>] [[-Paginate] <Boolean>] [<CommonParameters>]
```

### ById
```
Get-JCSystemInsights -Table <String> [-Id] <String[]> [[-Fields] <Array>] [[-Filter] <String>]
 [[-Limit] <Int32>] [[-Skip] <Int32>] [[-Paginate] <Boolean>] [<CommonParameters>]
```

### ByName
```
Get-JCSystemInsights -Table <String> [-Name] <String[]> [[-Fields] <Array>] [[-Filter] <String>]
 [[-Limit] <Int32>] [[-Skip] <Int32>] [[-Paginate] <Boolean>] [<CommonParameters>]
```

### ByValue
```
Get-JCSystemInsights -Table <String> [[-Fields] <Array>] [[-Filter] <String>] [[-Limit] <Int32>]
 [[-Skip] <Int32>] [[-Paginate] <Boolean>] [<CommonParameters>]
```

## DESCRIPTION
Using Get-JCSystemInsights will allow you to easily query JumpCloud's RESTful API to return information from your fleet of JumpCloud managed
systems.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-JCSystemInsights -Table:('os_version');
```

Return os_version data for all systems that have system insights enabled.

### Example 2
```powershell
PS C:\> Get-JCSystemInsights -Table:('os_version') -Id:('5d0917420905f70e36e3c0d3');
```

Return os_version data for a system with a specified id.

### Example 3
```powershell
PS C:\> Get-JCSystemInsights -Table:('os_version') -Id:('5d0917420905f70e36e3c0d3', '5d0bc68b8e41442ccd10254a');
```

Return os_version data for systems with specific ids.

### Example 4
```powershell
PS C:\> Get-JCSystemInsights -Table:('os_version') -Name:('MacBook-Pro.local_TEST');
```

Return os_version data for a system with a specified name.

### Example 5
```powershell
PS C:\> Get-JCSystemInsights -Table:('os_version') -Name:('MacBook-Pro.local_TEST', 'Holly-Flax-Mac.local_TEST');
```

Return os_version data for systems with specific names.

### Example 6
```powershell
PS C:\> Get-JCSystemInsights -Table users -Filter username:eq:jcadmin
```

Filters the users table for any system with the username jcadmin.

## PARAMETERS

### -Fields
An array of the fields/properties/columns you want to return from the search.

```yaml
Type: System.Array
Parameter Sets: (All)
Aliases:

Required: False
Position: 95
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Filter
Filters to narrow down search.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: False
Position: 96
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Id
The unique id of the object.

```yaml
Type: System.String[]
Parameter Sets: ById
Aliases: _id

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Limit
The number of items you want to return per API call.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 97
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Name
The name of the object.

```yaml
Type: System.String[]
Parameter Sets: ByName
Aliases: displayName

Required: True
Position: 1
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Paginate
Whether or not you want to paginate through the results.

```yaml
Type: System.Boolean
Parameter Sets: (All)
Aliases:
Accepted values: True, False

Required: False
Position: 99
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Skip
The number of items you want to skip over per API call.

```yaml
Type: System.Int32
Parameter Sets: (All)
Aliases:

Required: False
Position: 98
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### -Table
The SystemInsights table to query against.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:
Accepted values: battery, managed_policies, sip_config, alf, crashes, usb_devices, ie_extensions, launchd, shared_folders, shared_resources, user_ssh_keys, logged_in_users, shadow, sharing_preferences, user_groups, kernel_info, system_controls, uptime, etc_hosts, logical_drives, disk_info, bitlocker_info, patches, programs, apps, browser_plugins, chrome_extensions, disk_encryption, firefox_addons, groups, interface_addresses, mounts, os_version, safari_extensions, system_info, users, certificates, cups_destinations, interface_details, python_packages, registry, scheduled_tasks, services, startup_items

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String
### System.String[]
### System.Array
### System.Int32
### System.Boolean
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS

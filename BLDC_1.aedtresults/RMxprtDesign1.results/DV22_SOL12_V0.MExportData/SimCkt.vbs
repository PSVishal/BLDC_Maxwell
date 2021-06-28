' -----------------------------------------------------------------------------  
' Script Created by RMxprt Version 14.0 to generate Simplorer Circuit design     
' Expect 2 args, first the project name,                                         
'                second the design name                                          
' -------------------------------------------------------------------------------
Dim oAnsoftApp
Dim oDesktop
Dim oProject
Dim oDesign
Dim oEditor
Dim oModule
Dim oSml1, oSml2, oModName
oModName = "Setup1"

Set oAnsoftApp = CreateObject("AnsoftSimplorer.SimplorerScript")
' -----------------------------------------------------------------------------  
' Determine the path of this vbs and resolve path to other referenced files      
' -----------------------------------------------------------------------------  
Dim vbspath, dir, path, fileName, filesys, pathArray, count
vbspath = AnsoftScript.GetScriptPath
Set filesys = CreateObject("Scripting.FileSystemObject")
dir = filesys.GetParentFolderName(vbspath)
fileName = filesys.GetFileName(vbspath)
fileName = filesys.GetBaseName(fileName)
pathArray = Split(fileName, "_")
' Form the path
count = UBound(pathArray) - 1
if (count > 0) Then
For i = 0 to count
path = path + pathArray(i)
if (i < count) Then
path = path + "_"
End If
Next
oSml1 = dir + "/" + path + ".sml"
oSml2 = dir + "/" + path + "_signals.sml"
Else ' no _ in file name
oSml1 = dir + "/" + oModName + ".sml"
oSml2 = dir + "/" + "signals.sml"
End if

Set oArgs = AnsoftScript.arguments
Set oDesktop = oAnsoftApp.GetAppDesktop()
Set oProject = oDesktop.NewProject
if (oArgs.Count > 1) then 
  oProject.InsertDesign "Simplorer", oArgs(1), "", ""
else
  oProject.InsertDesign "Simplorer", "Simplorer1", "", ""
end if
Set oDesign = oProject.GetActiveDesign()
Set oEditor = oDesign.SetActiveEditor("SchematicEditor")
Set oDefinitionManager = oProject.GetDefinitionManager()
Set oComponentManager = oDefinitionManager.GetManager("Component")
oComponentManager.ImportModelsFromFile oSml1, Array("NAME:Options", "Mode:=", _
  1)
oComponentManager.ImportModelsFromFile oSml2, Array("NAME:Options", "Mode:=", _
  1)
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Setup1", _
  "Id:=", "51"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14224, "Y:=", _
  0.04572, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Setup1;51;0"), Array(_
  "NAME:ChangedProps", Array("NAME:InstanceName", "OverridingDef:=", true, _
  "Value:=", "BLDC"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@Setup1;51;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Center"))))
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "A", "Id:=", 52), _
  Array("NAME:Attributes", "Page:=", 1, "X:=", 0.13716, "Y:=", 0.04826, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "B", "Id:=", 53), _
  Array("NAME:Attributes", "Page:=", 1, "X:=", 0.13716, "Y:=", 0.04572, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "X", "Id:=", 54), _
  Array("NAME:Attributes", "Page:=", 1, "X:=", 0.13716, "Y:=", 0.04318, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "Y", "Id:=", 55), _
  Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14732, "Y:=", 0.04826, _
  "Degrees:=", 180, "Flip:=", false) 
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "ROT1", "Id:=", _
  56), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14732, "Y:=", 0.04572, _
  "Degrees:=", 180, "Flip:=", false) 
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "ROT2", "Id:=", _
  57), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14732, "Y:=", 0.04318, _
  "Degrees:=", 180, "Flip:=", false) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "V_ROT", "Id:=", _
  "58"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.18034, "Y:=", 0.0508, _
  "Degrees:=", 180, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@V_ROT;58;0"), Array("NAME:ChangedProps", _
  Array("NAME:InstanceName", "OverridingDef:=", true, "Value:=", "speed"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@V_ROT;58;0"), Array("NAME:ChangedProps", _
  Array("NAME:VALUE", "OverridingDef:=", true, "Value:=", "257.843rpm"))))
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "ROT1", "Id:=", _
  59), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.17526, "Y:=", 0.04826, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "ROT2", "Id:=", _
  60), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.17526, "Y:=", 0.0381, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.CreateGround Array("NAME:GroundProps", "Id:=", "50"), Array(_
  "NAME:Attributes", "Page:=", 1, "X:=", 0.17526, "Y:=", 0.03556, "Degrees:=", _
  0, "Flip:=", false) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "AM", "Id:=", _
  "61"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14478, "Y:=", 0.00508, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@AM;61;0"), Array("NAME:ChangedProps", _
  Array("NAME:InstanceName", "OverridingDef:=", true, "Value:=", "IA"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@AM;61;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "AM", "Id:=", _
  "62"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14478, "Y:=", _
  -0.00508, "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@AM;62;0"), Array("NAME:ChangedProps", _
  Array("NAME:InstanceName", "OverridingDef:=", true, "Value:=", "IB"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@AM;62;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "A", "Id:=", 63), _
  Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14986, "Y:=", 0.00762, _
  "Degrees:=", 180, "Flip:=", false) 
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "B", "Id:=", 64), _
  Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14986, "Y:=", -0.00254, _
  "Degrees:=", 180, "Flip:=", false) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Pulse", "Id:=", _
  "65"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.127, "Y:=", -0.0508, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Pulse;65;0"), Array("NAME:ChangedProps", _
  Array("NAME:InstanceName", "OverridingDef:=", true, "Value:=", "Pulse0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@Pulse;65;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Top"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;65;0"), Array("NAME:ChangedProps", _
  Array("NAME:input", "OverridingDef:=", true, "Value:=", "BLDC.Pos"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;65;0"), Array("NAME:ChangedProps", _
  Array("NAME:period", "OverridingDef:=", true, "Value:=", "180"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;65;0"), Array("NAME:ChangedProps", _
  Array("NAME:pulseWidth", "OverridingDef:=", true, "Value:=", "45"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;65;0"), Array("NAME:ChangedProps", _
  Array("NAME:delay", "OverridingDef:=", true, "Value:=", "22.5"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Pulse", "Id:=", _
  "66"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1397, "Y:=", -0.0508, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Pulse;66;0"), Array("NAME:ChangedProps", _
  Array("NAME:InstanceName", "OverridingDef:=", true, "Value:=", "Pulse1"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@Pulse;66;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Top"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;66;0"), Array("NAME:ChangedProps", _
  Array("NAME:input", "OverridingDef:=", true, "Value:=", "BLDC.Pos"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;66;0"), Array("NAME:ChangedProps", _
  Array("NAME:period", "OverridingDef:=", true, "Value:=", "180"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;66;0"), Array("NAME:ChangedProps", _
  Array("NAME:pulseWidth", "OverridingDef:=", true, "Value:=", "45"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;66;0"), Array("NAME:ChangedProps", _
  Array("NAME:delay", "OverridingDef:=", true, "Value:=", "67.5"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Pulse", "Id:=", _
  "67"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1524, "Y:=", -0.0508, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Pulse;67;0"), Array("NAME:ChangedProps", _
  Array("NAME:InstanceName", "OverridingDef:=", true, "Value:=", "Pulse2"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@Pulse;67;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Top"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;67;0"), Array("NAME:ChangedProps", _
  Array("NAME:input", "OverridingDef:=", true, "Value:=", "BLDC.Pos"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;67;0"), Array("NAME:ChangedProps", _
  Array("NAME:period", "OverridingDef:=", true, "Value:=", "180"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;67;0"), Array("NAME:ChangedProps", _
  Array("NAME:pulseWidth", "OverridingDef:=", true, "Value:=", "45"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;67;0"), Array("NAME:ChangedProps", _
  Array("NAME:delay", "OverridingDef:=", true, "Value:=", "112.5"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Pulse", "Id:=", _
  "68"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1651, "Y:=", -0.0508, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Pulse;68;0"), Array("NAME:ChangedProps", _
  Array("NAME:InstanceName", "OverridingDef:=", true, "Value:=", "Pulse3"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@Pulse;68;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Top"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;68;0"), Array("NAME:ChangedProps", _
  Array("NAME:input", "OverridingDef:=", true, "Value:=", "BLDC.Pos"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;68;0"), Array("NAME:ChangedProps", _
  Array("NAME:period", "OverridingDef:=", true, "Value:=", "180"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;68;0"), Array("NAME:ChangedProps", _
  Array("NAME:pulseWidth", "OverridingDef:=", true, "Value:=", "45"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@Pulse;68;0"), Array("NAME:ChangedProps", _
  Array("NAME:delay", "OverridingDef:=", true, "Value:=", "157.5"))))
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "X", "Id:=", 69), _
  Array("NAME:Attributes", "Page:=", 1, "X:=", 0.17526, "Y:=", 0.00762, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1397, 0.00254)", "(0.17526, 0.00254)", "(0.17526, 0.00762)")), Array(_
  "NAME:Attributes", "Page:=", 1) 
oEditor.CreatePagePort Array("NAME:PagePortProps", "Name:=", "Y", "Id:=", 70), _
  Array("NAME:Attributes", "Page:=", 1, "X:=", 0.17526, "Y:=", -0.00254, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1397, -0.00762)", "(0.17526, -0.00762)", "(0.17526, -0.00254)")), _
  Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "E", "Id:=", _
  "71"), Array("NAME:Attributes", "Page:=", 1, "X:=", -0.00254, "Y:=", 0.0127, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@E;71;0"), Array("NAME:ChangedProps", Array(_
  "NAME:EMF", "OverridingDef:=", true, "Value:=", "110V"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@E;71;0"), Array("NAME:NewProps", Array(_
  "NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "E", "Id:=", _
  "72"), Array("NAME:Attributes", "Page:=", 1, "X:=", -0.00254, "Y:=", _
  -0.0127, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@E;72;0"), Array("NAME:ChangedProps", Array(_
  "NAME:EMF", "OverridingDef:=", true, "Value:=", "110V"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@E;72;0"), Array("NAME:NewProps", Array(_
  "NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0, 0.01778)", "(0, 0.0508)", "(0.1143, 0.0508)")), Array(_
  "NAME:Attributes", "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0, 0.00762)", "(0, -0.00762)")), Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0, -0.01778)", "(0, -0.0508)", "(0.1143, -0.0508)")), Array(_
  "NAME:Attributes", "Page:=", 1) 
oEditor.CreateGround Array("NAME:GroundProps", "Id:=", "50"), Array(_
  "NAME:Attributes", "Page:=", 1, "X:=", -0.00508, "Y:=", -0.00254, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0, 0)", "(-0.00508, 0)")), Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0254, -0.0254)", "(0.0254, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "73"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0254, "Y:=", _
  -0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;73;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0381, 0.03556)", "(0.0381, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "74"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0381, "Y:=", _
  0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;74;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0508, -0.0254)", "(0.0508, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "75"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0508, "Y:=", _
  -0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;75;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0635, 0.03556)", "(0.0635, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "76"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0635, "Y:=", _
  0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;76;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0762, -0.0254)", "(0.0762, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "77"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0762, "Y:=", _
  -0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;77;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0889, 0.03556)", "(0.0889, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "78"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0889, "Y:=", _
  0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;78;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1016, -0.0254)", "(0.1016, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "79"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1016, "Y:=", _
  -0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;79;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1143, 0.03556)", "(0.1143, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "80"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1143, "Y:=", _
  0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;80;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0254, 0.04826)", "(0.0254, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "81"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0254, "Y:=", _
  0.04318, "Degrees:=", 180, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;81;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0381, -0.0127)", "(0.0381, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "82"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0381, "Y:=", _
  -0.01778, "Degrees:=", 180, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;82;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0508, 0.04826)", "(0.0508, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "83"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0508, "Y:=", _
  0.04318, "Degrees:=", 180, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;83;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0635, -0.0127)", "(0.0635, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "84"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0635, "Y:=", _
  -0.01778, "Degrees:=", 180, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;84;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0762, 0.04826)", "(0.0762, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "85"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0762, "Y:=", _
  0.04318, "Degrees:=", 180, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;85;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0889, -0.0127)", "(0.0889, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "86"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0889, "Y:=", _
  -0.01778, "Degrees:=", 180, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;86;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1016, 0.04826)", "(0.1016, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "87"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1016, "Y:=", _
  0.04318, "Degrees:=", 180, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;87;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1143, -0.0127)", "(0.1143, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SPICE_D", _
  "Id:=", "88"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1143, "Y:=", _
  -0.01778, "Degrees:=", 180, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@SPICE_D;88;0"), Array("NAME:NewProps", _
  Array("NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0254, 0.03556)", "(0.0254, 0.0381)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "S", "Id:=", _
  "89"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.02286, "Y:=", 0.03048, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@S;89;0"), Array("NAME:NewProps", Array(_
  "NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@S;89;0"), Array("NAME:ChangedProps", Array(_
  "NAME:CTRL", "OverridingDef:=", true, "Value:=", "Pulse0.output"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0381, -0.0254)", "(0.0381, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "S", "Id:=", _
  "90"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.03556, "Y:=", _
  -0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@S;90;0"), Array("NAME:NewProps", Array(_
  "NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@S;90;0"), Array("NAME:ChangedProps", Array(_
  "NAME:CTRL", "OverridingDef:=", true, "Value:=", "Pulse2.output"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0508, 0.03556)", "(0.0508, 0.0381)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "S", "Id:=", _
  "91"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.04826, "Y:=", 0.03048, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@S;91;0"), Array("NAME:NewProps", Array(_
  "NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@S;91;0"), Array("NAME:ChangedProps", Array(_
  "NAME:CTRL", "OverridingDef:=", true, "Value:=", "Pulse1.output"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0635, -0.0254)", "(0.0635, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "S", "Id:=", _
  "92"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.06096, "Y:=", _
  -0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@S;92;0"), Array("NAME:NewProps", Array(_
  "NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@S;92;0"), Array("NAME:ChangedProps", Array(_
  "NAME:CTRL", "OverridingDef:=", true, "Value:=", "Pulse3.output"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0762, 0.03556)", "(0.0762, 0.0381)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "S", "Id:=", _
  "93"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.07366, "Y:=", 0.03048, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@S;93;0"), Array("NAME:NewProps", Array(_
  "NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@S;93;0"), Array("NAME:ChangedProps", Array(_
  "NAME:CTRL", "OverridingDef:=", true, "Value:=", "Pulse2.output"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0889, -0.0254)", "(0.0889, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "S", "Id:=", _
  "94"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.08636, "Y:=", _
  -0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@S;94;0"), Array("NAME:NewProps", Array(_
  "NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@S;94;0"), Array("NAME:ChangedProps", Array(_
  "NAME:CTRL", "OverridingDef:=", true, "Value:=", "Pulse0.output"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1016, 0.03556)", "(0.1016, 0.0381)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "S", "Id:=", _
  "95"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.09906, "Y:=", 0.03048, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@S;95;0"), Array("NAME:NewProps", Array(_
  "NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@S;95;0"), Array("NAME:ChangedProps", Array(_
  "NAME:CTRL", "OverridingDef:=", true, "Value:=", "Pulse3.output"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1143, -0.0254)", "(0.1143, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "S", "Id:=", _
  "96"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.11176, "Y:=", _
  -0.03048, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PropDisplayPropTab", _
  Array("NAME:PropServers", "CompInst@S;96;0"), Array("NAME:NewProps", Array(_
  "NAME:InstanceName", "Format:=", "Value", "Location:=", "Right"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Quantities", Array(_
  "NAME:PropServers", "CompInst@S;96;0"), Array("NAME:ChangedProps", Array(_
  "NAME:CTRL", "OverridingDef:=", true, "Value:=", "Pulse1.output"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0254, -0.0508)", "(0.0254, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0381, -0.0508)", "(0.0381, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0508, -0.0508)", "(0.0508, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0635, -0.0508)", "(0.0635, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0762, -0.0508)", "(0.0762, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0889, -0.0508)", "(0.0889, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1016, -0.0508)", "(0.1016, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1143, -0.0508)", "(0.1143, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0254, 0.00762)", "(0.0381, 0.00762)", "(0.13462, 0.00762)", _
  "(0.13462, 0.00762)", "(0.1397, 0.00762)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0762, 0.00254)", "(0.0889, 0.00254)", "(0.13716, 0.00254)", _
  "(0.13716, 0.00254)", "(0.1397, 0.00254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0508, -0.00254)", "(0.0635, -0.00254)", "(0.13716, -0.00254)", _
  "(0.13716, -0.00254)", "(0.1397, -0.00254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1016, -0.00762)", "(0.1143, -0.00762)", "(0.13462, -0.00762)", _
  "(0.13462, -0.00762)", "(0.1397, -0.00762)")), Array("NAME:Attributes", _
  "Page:=", 1) 
Set oModule = oDesign.GetModule("SimSetup")
oModule.EditTransient "TR", Array("NAME:SimSetup", "OptionName:=", _
  "(Default Options)", "AnalysisEnabled:=", 1, "Name:=", "TR", _
  "TransientData:=", Array("500ms", "10us", "100us", false, ""), _
  "EnableContSolve:=", false)
Set oModule = oDesign.GetModule("ReportSetup")
oModule.CreateReport "Load Torque", "Standard", "Rectangular Plot", "TR", _
  Array("NAME:Context", "SimValueContext:=", _
  Array(1, 0, 2, 0, false, false, -1, 1, 0, 1, 1, "", 0, 0)), Array("Time:=", _
  Array("All")), Array("X Component:=", "Time", "Y Component:=", Array(_
  "speed.TORQUE")), Array()
oModule.CreateReport "Current", "Standard", "Rectangular Plot", "TR", Array(_
  "NAME:Context", "SimValueContext:=", _
  Array(1, 0, 2, 0, false, false, -1, 1, 0, 1, 1, "", 0, 0)), Array("Time:=", _
  Array("All")), Array("X Component:=", "Time", "Y Component:=", Array(_
  "IA.I", "IB.I")), Array()
if (oArgs.Count > 1) then 
  oProject.SetActiveDesign oArgs(1)
else
  oProject.SetActiveDesign "Simplorer1"
end if
oEditor.ZoomToFit
if (oArgs.Count > 0) then 
  oProject.SaveAs oArgs(0), TRUE
end if

' --------------------------------------------------------------------
' Script Created by RMxprt to generate Maxwell 3D Version 13.0 design 
' Can specify one arg to setup external circuit                       
' --------------------------------------------------------------------

Set oAnsoftApp = CreateObject("AnsoftMaxwell.MaxwellScriptInterface")
Set oDesktop = oAnsoftApp.GetAppDesktop()
Set oArgs = AnsoftScript.arguments
oDesktop.RestoreWindow
Set oProject = oDesktop.GetActiveProject()
Set oDesign = oProject.GetActiveDesign()
designName = oDesign.GetName
Set oEditor = oDesign.SetActiveEditor("3D Modeler")
oEditor.SetModelUnits Array("NAME:Units Parameter", "Units:=", "mm", _
  "Rescale:=", false)
oDesign.SetSolutionType "Transient"
Set oModule = oDesign.GetModule("BoundarySetup")
if (oArgs.Count = 1) then 
oModule.EditExternalCircuit oArgs(0), Array(), Array(), Array(), Array()
end if
oEditor.SetModelValidationSettings Array("NAME:Validation Options", _
  "EntityCheckLevel:=", "Strict", "IgnoreUnclassifiedObjects:=", true)
On Error Resume Next
oDesign.ChangeProperty Array("NAME:AllTabs", Array("NAME:LocalVariableTab", _
  Array("NAME:PropServers", "LocalVariables"), Array("NAME:NewProps", Array(_
  "NAME:fractions", "PropType:=", "VariableProp", "UserDef:=", true, _
  "Value:=", "4"))))
oDesign.ChangeProperty Array("NAME:AllTabs", Array("NAME:LocalVariableTab", _
  Array("NAME:PropServers", "LocalVariables"), Array("NAME:NewProps", Array(_
  "NAME:halfAxial", "PropType:=", "VariableProp", "UserDef:=", true, _
  "Value:=", "1"))))
oDesign.ChangeProperty Array("NAME:AllTabs", Array("NAME:LocalVariableTab", _
  Array("NAME:PropServers", "LocalVariables"), Array("NAME:NewProps", Array(_
  "NAME:skew", "PropType:=", "VariableProp", "UserDef:=", true, "Value:=", _
  "0"))))
On Error Goto 0
Set oDefinitionManager = oProject.GetDefinitionManager()
oDefinitionManager.ModifyLibraries designName, Array("NAME:PersonalLib"), _
  Array("NAME:UserLib"), Array("NAME:SystemLib", "Materials:=", Array(_
  "Materials", "RMxprt"))
if (oDefinitionManager.DoesMaterialExist("mu_metal_3DSF0.950")) then
else
oDefinitionManager.AddMaterial Array("NAME:mu_metal_3DSF0.950", _
  "CoordinateSystemType:=", "Cartesian", Array("NAME:AttachedData"), Array(_
  "NAME:ModifierData"), Array("NAME:permeability", "property_type:=", _
  "nonlinear", "HUnit:=", "A_per_meter", "BUnit:=", "tesla", Array(_
  "NAME:BHCoordinates", Array("NAME:Coordinate", "X:=", 0, "Y:=", 0), Array(_
  "NAME:Coordinate", "X:=", 0.8, "Y:=", 0.080001), Array("NAME:Coordinate", _
  "X:=", 1.2, "Y:=", 0.120002), Array("NAME:Coordinate", "X:=", 1.6, "Y:=", _
  0.150002), Array("NAME:Coordinate", "X:=", 2, "Y:=", 0.190002), Array(_
  "NAME:Coordinate", "X:=", 2.4, "Y:=", 0.230003), Array("NAME:Coordinate", _
  "X:=", 2.8, "Y:=", 0.280004), Array("NAME:Coordinate", "X:=", 3.2, "Y:=", _
  0.300004), Array("NAME:Coordinate", "X:=", 3.6, "Y:=", 0.325004), Array(_
  "NAME:Coordinate", "X:=", 4, "Y:=", 0.350005), Array("NAME:Coordinate", _
  "X:=", 4.4, "Y:=", 0.370005), Array("NAME:Coordinate", "X:=", 4.8, "Y:=", _
  0.390006), Array("NAME:Coordinate", "X:=", 5.2, "Y:=", 0.400006), Array(_
  "NAME:Coordinate", "X:=", 5.6, "Y:=", 0.410007), Array("NAME:Coordinate", _
  "X:=", 6.4, "Y:=", 0.430008), Array("NAME:Coordinate", "X:=", 7.2, "Y:=", _
  0.440009), Array("NAME:Coordinate", "X:=", 8, "Y:=", 0.46001), Array(_
  "NAME:Coordinate", "X:=", 11.9, "Y:=", 0.500015), Array("NAME:Coordinate", _
  "X:=", 15.9, "Y:=", 0.52502), Array("NAME:Coordinate", "X:=", 19.9, "Y:=", _
  0.540025), Array("NAME:Coordinate", "X:=", 23.9, "Y:=", 0.54503), Array(_
  "NAME:Coordinate", "X:=", 27.9, "Y:=", 0.555035), Array("NAME:Coordinate", _
  "X:=", 31.8, "Y:=", 0.56004), Array("NAME:Coordinate", "X:=", 35.8, "Y:=", _
  0.565045), Array("NAME:Coordinate", "X:=", 39.8, "Y:=", 0.57005), Array(_
  "NAME:Coordinate", "X:=", 43.8, "Y:=", 0.575055), Array("NAME:Coordinate", _
  "X:=", 47.7, "Y:=", 0.58006), Array("NAME:Coordinate", "X:=", 51.7, "Y:=", _
  0.585065), Array("NAME:Coordinate", "X:=", 55.7, "Y:=", 0.59007), Array(_
  "NAME:Coordinate", "X:=", 63.7, "Y:=", 0.59338), Array("NAME:Coordinate", _
  "X:=", 71.6, "Y:=", 0.59669), Array("NAME:Coordinate", "X:=", 79.6, "Y:=", _
  0.6001), Array("NAME:Coordinate", "X:=", 119.4, "Y:=", 0.62015), Array(_
  "NAME:Coordinate", "X:=", 159.2, "Y:=", 0.6252), Array("NAME:Coordinate", _
  "X:=", 198.9, "Y:=", 0.63025), Array("NAME:Coordinate", "X:=", 238.7, "Y:=", _
  0.6353), Array("NAME:Coordinate", "X:=", 278.5, "Y:=", 0.64035), Array(_
  "NAME:Coordinate", "X:=", 318.3, "Y:=", 0.6454), Array("NAME:Coordinate", _
  "X:=", 358.1, "Y:=", 0.64705), Array("NAME:Coordinate", "X:=", 397.9, "Y:=", _
  0.6488), Array("NAME:Coordinate", "X:=", 437.7, "Y:=", 0.65055), Array(_
  "NAME:Coordinate", "X:=", 477.5, "Y:=", 0.6522), Array("NAME:Coordinate", _
  "X:=", 517.3, "Y:=", 0.65385), Array("NAME:Coordinate", "X:=", 557, "Y:=", _
  0.6555), Array("NAME:Coordinate", "X:=", 636.6, "Y:=", 0.6572), Array(_
  "NAME:Coordinate", "X:=", 716.2, "Y:=", 0.6589), Array("NAME:Coordinate", _
  "X:=", 795.8, "Y:=", 0.661), Array("NAME:Coordinate", "X:=", 1193.7, "Y:=", _
  0.664), Array("NAME:Coordinate", "X:=", 1591.5, "Y:=", 0.667), Array(_
  "NAME:Coordinate", "X:=", 1989.4, "Y:=", 0.67), Array("NAME:Coordinate", _
  "X:=", 2387.3, "Y:=", 0.673), Array("NAME:Coordinate", "X:=", 2785.2, "Y:=", _
  0.6735), Array("NAME:Coordinate", "X:=", 3183.1, "Y:=", 0.674), Array(_
  "NAME:Coordinate", "X:=", 7162.1, "Y:=", 0.679))), "mass_density:=", 0, _
  Array("NAME:stacking_type", "property_type:=", "ChoiceProperty", "Choice:=", _
  "Lamination"), "stacking_factor:=", "0.95", Array("NAME:stacking_direction", _
  "property_type:=", "ChoiceProperty", "Choice:=", "V(3)"))
end if
if (oDefinitionManager.DoesMaterialExist("NdFe35_3DSF1.000_N")) then
else
oDefinitionManager.AddMaterial Array("NAME:NdFe35_3DSF1.000_N", _
  "CoordinateSystemType:=", "Cylindrical", Array("NAME:AttachedData"), Array(_
  "NAME:ModifierData"), "permeability:=", "1.09978", Array(_
  "NAME:magnetic_coercivity", "property_type:=", "VectorProperty", _
  "Magnitude:=", "-890000A_per_meter", "DirComp1:=", "1", "DirComp2:=", "0", _
  "DirComp3:=", "0"))
end if
if (oDefinitionManager.DoesMaterialExist("NdFe35_3DSF1.000_S")) then
else
oDefinitionManager.AddMaterial Array("NAME:NdFe35_3DSF1.000_S", _
  "CoordinateSystemType:=", "Cylindrical", Array("NAME:AttachedData"), Array(_
  "NAME:ModifierData"), "permeability:=", "1.09978", Array(_
  "NAME:magnetic_coercivity", "property_type:=", "VectorProperty", _
  "Magnitude:=", "-890000A_per_meter", "DirComp1:=", "-1", "DirComp2:=", "0", _
  "DirComp3:=", "0"))
end if
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/Band", "Version:=", "12.1", "NoOfParameters:=", 7, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74.5mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "26mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "145.1043497390809mm"), Array("NAME:Pair", "Name:=", "SegAngle", _
  "Value:=", "1.875deg"), Array("NAME:Pair", "Name:=", "Fractions", "Value:=", _
  "1"), Array("NAME:Pair", "Name:=", "HalfAxial", "Value:=", "0"), Array(_
  "NAME:Pair", "Name:=", "InfoCore", "Value:=", "0"))), Array(_
  "NAME:Attributes", "Name:=", "Band", "Flags:=", "", "Color:=", _
  "(0 255 255)", "Transparency:=", 0, "PartCoordinateSystem:=", "Global", _
  "MaterialName:=", "vacuum", "SolveInside:=", true) 
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/Band", "Version:=", "12.1", "NoOfParameters:=", 7, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74.5mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "26mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "145.1043497390809mm"), Array("NAME:Pair", "Name:=", "SegAngle", _
  "Value:=", "1.875deg"), Array("NAME:Pair", "Name:=", "Fractions", "Value:=", _
  "1"), Array("NAME:Pair", "Name:=", "HalfAxial", "Value:=", "0"), Array(_
  "NAME:Pair", "Name:=", "InfoCore", "Value:=", "100"))), Array(_
  "NAME:Attributes", "Name:=", "Shaft", "Flags:=", "", "Color:=", _
  "(0 255 255)", "Transparency:=", 0, "PartCoordinateSystem:=", "Global", _
  "MaterialName:=", "vacuum", "SolveInside:=", true) 
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/Band", "Version:=", "12.1", "NoOfParameters:=", 7, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74.5mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "120mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "145.1043497390809mm"), Array("NAME:Pair", "Name:=", "SegAngle", _
  "Value:=", "1.875deg"), Array("NAME:Pair", "Name:=", "Fractions", "Value:=", _
  "4"), Array("NAME:Pair", "Name:=", "HalfAxial", "Value:=", "0"), Array(_
  "NAME:Pair", "Name:=", "InfoCore", "Value:=", "100"))), Array(_
  "NAME:Attributes", "Name:=", "OuterRegion", "Flags:=", "", "Color:=", _
  "(0 255 255)", "Transparency:=", 0, "PartCoordinateSystem:=", "Global", _
  "MaterialName:=", "vacuum", "SolveInside:=", true) 
oEditor.SetPropertyValue "Geometry3DCmdTab", _
  "OuterRegion:CreateUserDefinedPart:1", "Fractions", "fractions"
On Error Resume Next
oEditor.SetPropertyValue "Geometry3DCmdTab", _
  "OuterRegion:CreateUserDefinedPart:1", "HalfAxial", "halfAxial"
On Error Goto 0
oEditor.Copy Array("NAME:Selections", "Selections:=", "OuterRegion")
oEditor.Paste
oEditor.SetPropertyValue "Geometry3DCmdTab", _
  "OuterRegion1:CreateUserDefinedPart:1", "InfoCore", "2"
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "OuterRegion1"), _
  Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "MasterSheet"))))
oEditor.Copy Array("NAME:Selections", "Selections:=", "MasterSheet")
oEditor.Paste
oEditor.SetPropertyValue "Geometry3DCmdTab", _
  "MasterSheet1:CreateUserDefinedPart:1", "InfoCore", "3"
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "MasterSheet1"), _
  Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "SlaveSheet"))))
oEditor.Copy Array("NAME:Selections", "Selections:=", "OuterRegion")
oEditor.Paste
oEditor.SetPropertyValue "Geometry3DCmdTab", _
  "OuterRegion1:CreateUserDefinedPart:1", "InfoCore", "1"
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "OuterRegion1"), _
  Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "Tool"))))
oEditor.FitAll
Set oModule = oDesign.GetModule("ModelSetup")
oModule.SetSymmetryMultiplier "fractions*(1+halfAxial)"
Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignMaster Array("NAME:Master", "Objects:=", Array("MasterSheet"), _
  Array("NAME:CoordSysVector", "Origin:=", Array("0mm", "0mm", "0mm"), _
  "UPos:=", Array("60mm", "0mm", "0mm")), "ReverseV:=", true)
oModule.AssignSlave Array("NAME:Slave", "Objects:=", Array("SlaveSheet"), _
  Array("NAME:CoordSysVector", "Origin:=", Array("0mm", "0mm", "0mm"), _
  "UPos:=", Array("3.67394039744206e-015mm", "60mm", "0mm")), "ReverseV:=", _
  true, "Master:=", "Master", "RelationIsSame:=", false)
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/SlotCore", "Version:=", "12.1", "NoOfParameters:=", 19, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "75mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "120mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "65mm"), Array("NAME:Pair", "Name:=", "Skew", "Value:=", "0deg"), _
  Array("NAME:Pair", "Name:=", "Slots", "Value:=", "24"), Array("NAME:Pair", _
  "Name:=", "SlotType", "Value:=", "2"), Array("NAME:Pair", "Name:=", "Hs0", _
  "Value:=", "0.5mm"), Array("NAME:Pair", "Name:=", "Hs01", "Value:=", "0mm"), _
  Array("NAME:Pair", "Name:=", "Hs1", "Value:=", "1mm"), Array("NAME:Pair", _
  "Name:=", "Hs2", "Value:=", "8.199999999999999mm"), Array("NAME:Pair", _
  "Name:=", "Bs0", "Value:=", "2.5mm"), Array("NAME:Pair", "Name:=", "Bs1", _
  "Value:=", "5.6mm"), Array("NAME:Pair", "Name:=", "Bs2", "Value:=", "7.6mm"), _
  Array("NAME:Pair", "Name:=", "Rs", "Value:=", "3.8mm"), Array("NAME:Pair", _
  "Name:=", "FilletType", "Value:=", "0"), Array("NAME:Pair", "Name:=", _
  "HalfSlot", "Value:=", "0"), Array("NAME:Pair", "Name:=", "SegAngle", _
  "Value:=", "30deg"), Array("NAME:Pair", "Name:=", "LenRegion", "Value:=", _
  "145.1043497390809mm"), Array("NAME:Pair", "Name:=", "InfoCore", "Value:=", _
  "0"))), Array("NAME:Attributes", "Name:=", "Stator", "Flags:=", "", _
  "Color:=", "(132 132 193)", "Transparency:=", 0, "PartCoordinateSystem:=", _
  "Global", "MaterialName:=", "mu_metal_3DSF0.950", "SolveInside:=", true) 
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/LapCoil", "Version:=", "12.0", "NoOfParameters:=", 21, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "75mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "120mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "65mm"), Array("NAME:Pair", "Name:=", "Skew", "Value:=", "0deg"), _
  Array("NAME:Pair", "Name:=", "Slots", "Value:=", "24"), Array("NAME:Pair", _
  "Name:=", "SlotType", "Value:=", "2"), Array("NAME:Pair", "Name:=", "Hs0", _
  "Value:=", "0.5mm"), Array("NAME:Pair", "Name:=", "Hs1", "Value:=", "1mm"), _
  Array("NAME:Pair", "Name:=", "Hs2", "Value:=", "8.199999999999999mm"), _
  Array("NAME:Pair", "Name:=", "Bs0", "Value:=", "2.5mm"), Array("NAME:Pair", _
  "Name:=", "Bs1", "Value:=", "5.6mm"), Array("NAME:Pair", "Name:=", "Bs2", _
  "Value:=", "7.6mm"), Array("NAME:Pair", "Name:=", "Rs", "Value:=", "3.8mm"), _
  Array("NAME:Pair", "Name:=", "FilletType", "Value:=", "0"), Array(_
  "NAME:Pair", "Name:=", "Layers", "Value:=", "2"), Array("NAME:Pair", _
  "Name:=", "CoilPitch", "Value:=", "5"), Array("NAME:Pair", "Name:=", _
  "EndExt", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "SpanExt", _
  "Value:=", "0.1mm"), Array("NAME:Pair", "Name:=", "SegAngle", "Value:=", _
  "5deg"), Array("NAME:Pair", "Name:=", "LenRegion", "Value:=", _
  "145.1043497390809mm"), Array("NAME:Pair", "Name:=", "InfoCoil", "Value:=", _
  "1"))), Array("NAME:Attributes", "Name:=", "Coil", "Flags:=", "", "Color:=", _
  "(250 167 14)", "Transparency:=", 0, "PartCoordinateSystem:=", "Global", _
  "MaterialName:=", "copper", "SolveInside:=", true) 
oEditor.DuplicateAroundAxis Array("NAME:Selections", "Selections:=", "Coil"), _
  Array("NAME:DuplicateAroundAxisParameters", "CoordinateSystemID:=", -1, _
  "CreateNewObjects:=", true, "WhichAxis:=", "Z", "AngleStr:=", "15deg", _
  "NumClones:=", "24"), Array("NAME:Options", "DuplicateBoundaries:=", false)
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "Coil"), Array(_
  "NAME:ChangedProps", Array("NAME:Name", "Value:=", "Coil_0"))))
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/LapCoil", "Version:=", "12.0", "NoOfParameters:=", 21, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "75mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "120mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "65mm"), Array("NAME:Pair", "Name:=", "Skew", "Value:=", "0deg"), _
  Array("NAME:Pair", "Name:=", "Slots", "Value:=", "24"), Array("NAME:Pair", _
  "Name:=", "SlotType", "Value:=", "2"), Array("NAME:Pair", "Name:=", "Hs0", _
  "Value:=", "0.5mm"), Array("NAME:Pair", "Name:=", "Hs1", "Value:=", "1mm"), _
  Array("NAME:Pair", "Name:=", "Hs2", "Value:=", "8.199999999999999mm"), _
  Array("NAME:Pair", "Name:=", "Bs0", "Value:=", "2.5mm"), Array("NAME:Pair", _
  "Name:=", "Bs1", "Value:=", "5.6mm"), Array("NAME:Pair", "Name:=", "Bs2", _
  "Value:=", "7.6mm"), Array("NAME:Pair", "Name:=", "Rs", "Value:=", "3.8mm"), _
  Array("NAME:Pair", "Name:=", "FilletType", "Value:=", "0"), Array(_
  "NAME:Pair", "Name:=", "Layers", "Value:=", "2"), Array("NAME:Pair", _
  "Name:=", "CoilPitch", "Value:=", "5"), Array("NAME:Pair", "Name:=", _
  "EndExt", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "SpanExt", _
  "Value:=", "0.1mm"), Array("NAME:Pair", "Name:=", "SegAngle", "Value:=", _
  "5deg"), Array("NAME:Pair", "Name:=", "LenRegion", "Value:=", _
  "145.1043497390809mm"), Array("NAME:Pair", "Name:=", "InfoCoil", "Value:=", _
  "2"))), Array("NAME:Attributes", "Name:=", "CoilTerm", "Flags:=", "", _
  "Color:=", "(250 167 14)", "Transparency:=", 0, "PartCoordinateSystem:=", _
  "Global", "MaterialName:=", "copper", "SolveInside:=", true) 
oEditor.DuplicateAroundAxis Array("NAME:Selections", "Selections:=", _
  "CoilTerm"), Array("NAME:DuplicateAroundAxisParameters", _
  "CoordinateSystemID:=", -1, "CreateNewObjects:=", true, "WhichAxis:=", "Z", _
  "AngleStr:=", "15deg", "NumClones:=", "24"), Array("NAME:Options", _
  "DuplicateBoundaries:=", false)
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "CoilTerm"), _
  Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "CoilTerm_0"))))
Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignWindingGroup Array("NAME:PhaseA", "Type:=", "External", _
  "IsSolid:=", false, "Current:=", "0A", "Resistance:=", "0ohm", _
  "Inductance:=", "0H", "Voltage:=", "0V", "ParallelBranchesNum:=", "1")
Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignWindingGroup Array("NAME:PhaseB", "Type:=", "External", _
  "IsSolid:=", false, "Current:=", "0A", "Resistance:=", "0ohm", _
  "Inductance:=", "0H", "Voltage:=", "0V", "ParallelBranchesNum:=", "1")
oModule.AssignCoilTerminal Array("NAME:PhA_0", "Objects:=", Array("CoilTerm_0"), _
  "Conductor number:=", 30, "Point out of terminal:=", false, "Winding:=", _
  "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhA_1", "Objects:=", Array("CoilTerm_1"), _
  "Conductor number:=", 30, "Point out of terminal:=", false, "Winding:=", _
  "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhA_2", "Objects:=", Array("CoilTerm_2"), _
  "Conductor number:=", 30, "Point out of terminal:=", false, "Winding:=", _
  "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhB_3", "Objects:=", Array("CoilTerm_3"), _
  "Conductor number:=", 30, "Point out of terminal:=", false, "Winding:=", _
  "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhB_4", "Objects:=", Array("CoilTerm_4"), _
  "Conductor number:=", 30, "Point out of terminal:=", false, "Winding:=", _
  "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhB_5", "Objects:=", Array("CoilTerm_5"), _
  "Conductor number:=", 30, "Point out of terminal:=", false, "Winding:=", _
  "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhARe_6", "Objects:=", Array(_
  "CoilTerm_6"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhARe_7", "Objects:=", Array(_
  "CoilTerm_7"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhARe_8", "Objects:=", Array(_
  "CoilTerm_8"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhBRe_9", "Objects:=", Array(_
  "CoilTerm_9"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhBRe_10", "Objects:=", Array(_
  "CoilTerm_10"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhBRe_11", "Objects:=", Array(_
  "CoilTerm_11"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhA_12", "Objects:=", Array(_
  "CoilTerm_12"), "Conductor number:=", 30, "Point out of terminal:=", _
  false, "Winding:=", "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhA_13", "Objects:=", Array(_
  "CoilTerm_13"), "Conductor number:=", 30, "Point out of terminal:=", _
  false, "Winding:=", "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhA_14", "Objects:=", Array(_
  "CoilTerm_14"), "Conductor number:=", 30, "Point out of terminal:=", _
  false, "Winding:=", "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhB_15", "Objects:=", Array(_
  "CoilTerm_15"), "Conductor number:=", 30, "Point out of terminal:=", _
  false, "Winding:=", "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhB_16", "Objects:=", Array(_
  "CoilTerm_16"), "Conductor number:=", 30, "Point out of terminal:=", _
  false, "Winding:=", "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhB_17", "Objects:=", Array(_
  "CoilTerm_17"), "Conductor number:=", 30, "Point out of terminal:=", _
  false, "Winding:=", "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhARe_18", "Objects:=", Array(_
  "CoilTerm_18"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhARe_19", "Objects:=", Array(_
  "CoilTerm_19"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhARe_20", "Objects:=", Array(_
  "CoilTerm_20"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseA")
oModule.AssignCoilTerminal Array("NAME:PhBRe_21", "Objects:=", Array(_
  "CoilTerm_21"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhBRe_22", "Objects:=", Array(_
  "CoilTerm_22"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseB")
oModule.AssignCoilTerminal Array("NAME:PhBRe_23", "Objects:=", Array(_
  "CoilTerm_23"), "Conductor number:=", 30, "Point out of terminal:=", true, _
  "Winding:=", "PhaseB")
Set oModule = oDesign.GetModule("MeshSetup")
oModule.AssignLengthOp Array("NAME:Length_Coil", "RefineInside:=", true, _
  "Objects:=", Array("Coil_0", "Coil_1", "Coil_2", "Coil_3", "Coil_4", _
  "Coil_5", "Coil_6", "Coil_7", "Coil_8", "Coil_9", "Coil_10", "Coil_11", _
  "Coil_12", "Coil_13", "Coil_14", "Coil_15", "Coil_16", "Coil_17", "Coil_18", _
  "Coil_19", "Coil_20", "Coil_21", "Coil_22", "Coil_23"), "RestrictElem:=", _
  false, "NumMaxElem:=", "1000", "RestrictLength:=", true, "MaxLength:=", _
  "13.2mm")
Set oModule = oDesign.GetModule("MeshSetup")
oModule.AssignTrueSurfOp Array("NAME:SurfApprox_Coil", "Objects:=", Array(_
  "Coil_0", "Coil_1", "Coil_2", "Coil_3", "Coil_4", "Coil_5", "Coil_6", _
  "Coil_7", "Coil_8", "Coil_9", "Coil_10", "Coil_11", "Coil_12", "Coil_13", _
  "Coil_14", "Coil_15", "Coil_16", "Coil_17", "Coil_18", "Coil_19", "Coil_20", _
  "Coil_21", "Coil_22", "Coil_23"), "NormalDevChoice:=", 2, "NormalDev:=", _
  "30deg", "AspectRatioChoice:=", 1)
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/PMCore", "Version:=", "12.0", "NoOfParameters:=", 13, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "26mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "65mm"), Array("NAME:Pair", "Name:=", "Poles", "Value:=", "4"), _
  Array("NAME:Pair", "Name:=", "PoleType", "Value:=", "1"), Array("NAME:Pair", _
  "Name:=", "Embrace", "Value:=", "0.7"), Array("NAME:Pair", "Name:=", _
  "ThickMag", "Value:=", "3.5mm"), Array("NAME:Pair", "Name:=", "WidthMag", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Offset", "Value:=", "0mm"), _
  Array("NAME:Pair", "Name:=", "Bridge", "Value:=", "0mm"), Array("NAME:Pair", _
  "Name:=", "Rib", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", _
  "LenRegion", "Value:=", "145.1043497390809mm"), Array("NAME:Pair", "Name:=", _
  "InfoCore", "Value:=", "0"))), Array("NAME:Attributes", "Name:=", "Rotor", _
  "Flags:=", "", "Color:=", "(132 132 193)", "Transparency:=", 0, _
  "PartCoordinateSystem:=", "Global", "MaterialName:=", "mu_metal_3DSF0.950", _
  "SolveInside:=", true) 
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/PMCore", "Version:=", "12.0", "NoOfParameters:=", 13, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "26mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "65mm"), Array("NAME:Pair", "Name:=", "Poles", "Value:=", "4"), _
  Array("NAME:Pair", "Name:=", "PoleType", "Value:=", "1"), Array("NAME:Pair", _
  "Name:=", "Embrace", "Value:=", "0.7"), Array("NAME:Pair", "Name:=", _
  "ThickMag", "Value:=", "3.5mm"), Array("NAME:Pair", "Name:=", "WidthMag", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Offset", "Value:=", "0mm"), _
  Array("NAME:Pair", "Name:=", "Bridge", "Value:=", "0mm"), Array("NAME:Pair", _
  "Name:=", "Rib", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", _
  "LenRegion", "Value:=", "145.1043497390809mm"), Array("NAME:Pair", "Name:=", _
  "InfoCore", "Value:=", "2"))), Array("NAME:Attributes", "Name:=", "Mag", _
  "Flags:=", "", "Color:=", "(0 255 128)", "Transparency:=", 0, _
  "PartCoordinateSystem:=", "Global", "MaterialName:=", "NdFe35_3DSF1.000_N", _
  "SolveInside:=", true) 
oEditor.DuplicateAroundAxis Array("NAME:Selections", "Selections:=", "Mag"), _
  Array("NAME:DuplicateAroundAxisParameters", "CoordinateSystemID:=", -1, _
  "CreateNewObjects:=", true, "WhichAxis:=", "Z", "AngleStr:=", "90deg", _
  "NumClones:=", "4"), Array("NAME:Options", "DuplicateBoundaries:=", false)
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "Mag"), Array(_
  "NAME:ChangedProps", Array("NAME:Name", "Value:=", "Mag_0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "Mag_1"), Array(_
  "NAME:ChangedProps", Array("NAME:Material", "Material:=", _
  "NdFe35_3DSF1.000_S"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "Mag_3"), Array(_
  "NAME:ChangedProps", Array("NAME:Material", "Material:=", _
  "NdFe35_3DSF1.000_S"))))
Set oModule = oDesign.GetModule("MeshSetup")
oModule.AssignLengthOp Array("NAME:Length_Mag", "RefineInside:=", true, _
  "Objects:=", Array("Mag_0", "Mag_1", "Mag_2", "Mag_3"), "RestrictElem:=", _
  false, "NumMaxElem:=", "1000", "RestrictLength:=", true, "MaxLength:=", _
  "7mm")
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/PMCore", "Version:=", "12.0", "NoOfParameters:=", 13, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "26mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "65mm"), Array("NAME:Pair", "Name:=", "Poles", "Value:=", "4"), _
  Array("NAME:Pair", "Name:=", "PoleType", "Value:=", "1"), Array("NAME:Pair", _
  "Name:=", "Embrace", "Value:=", "0.7"), Array("NAME:Pair", "Name:=", _
  "ThickMag", "Value:=", "3.5mm"), Array("NAME:Pair", "Name:=", "WidthMag", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Offset", "Value:=", "0mm"), _
  Array("NAME:Pair", "Name:=", "Bridge", "Value:=", "0mm"), Array("NAME:Pair", _
  "Name:=", "Rib", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", _
  "LenRegion", "Value:=", "145.1043497390809mm"), Array("NAME:Pair", "Name:=", _
  "InfoCore", "Value:=", "100"))), Array("NAME:Attributes", "Name:=", _
  "InnerRegion", "Flags:=", "", "Color:=", "(0 255 255)", "Transparency:=", 0, _
  "PartCoordinateSystem:=", "Global", "MaterialName:=", "vacuum", _
  "SolveInside:=", true) 
Set oModule = oDesign.GetModule("MeshSetup")
oModule.AssignLengthOp Array("NAME:Length_Main", "RefineInside:=", true, _
  "Objects:=", Array("Stator", "Rotor", "Band", "OuterRegion", "InnerRegion", _
  "Shaft"), "RestrictElem:=", false, "NumMaxElem:=", "1000", _
  "RestrictLength:=", true, "MaxLength:=", "18.4mm")
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "Band", _
  "OuterRegion", "InnerRegion", "MasterSheet", "SlaveSheet"), Array(_
  "NAME:ChangedProps", Array("NAME:Transparent", "Value:=", 0.75))))
oEditor.Move Array("NAME:Selections", "Selections:=", "CoilTerm_0,CoilTerm_1" & _
  ",CoilTerm_2,CoilTerm_3,CoilTerm_4,CoilTerm_5,CoilTerm_6,CoilTerm_7" & _
  ",CoilTerm_8,CoilTerm_9,CoilTerm_10,CoilTerm_11,CoilTerm_12,CoilTerm_13" & _
  ",CoilTerm_14,CoilTerm_15,CoilTerm_16,CoilTerm_17,CoilTerm_18" & _
  ",CoilTerm_19,CoilTerm_20,CoilTerm_21,CoilTerm_22,CoilTerm_23"), Array(_
  "NAME:TranslateParameters", "CoordinateSystemID:=", -1, _
  "TranslateVectorX:=", "0mm", "TranslateVectorY:=", "0mm", _
  "TranslateVectorZ:=", "16.25mm")
oEditor.Subtract Array("NAME:Selections", "Blank Parts:=", "Band,InnerRegion" & _
  ",Shaft,Stator,Coil_0,Coil_1,Coil_2,Coil_3,Coil_4,Coil_5,Coil_6,Coil_7" & _
  ",Coil_8,Coil_9,Coil_10,Coil_11,Coil_12,Coil_13,Coil_14,Coil_15,Coil_16" & _
  ",Coil_17,Coil_18,Coil_19,Coil_20,Coil_21,Coil_22,Coil_23,CoilTerm_0" & _
  ",CoilTerm_1,CoilTerm_2,CoilTerm_3,CoilTerm_4,CoilTerm_5,CoilTerm_6" & _
  ",CoilTerm_7,CoilTerm_8,CoilTerm_9,CoilTerm_10,CoilTerm_11,CoilTerm_12" & _
  ",CoilTerm_13,CoilTerm_14,CoilTerm_15,CoilTerm_16,CoilTerm_17" & _
  ",CoilTerm_18,CoilTerm_19,CoilTerm_20,CoilTerm_21,CoilTerm_22" & _
  ",CoilTerm_23,Rotor,Mag_0,Mag_1,Mag_2,Mag_3", "Tool Parts:=", "Tool"), _
  Array("NAME:SubtractParameters", "CoordinateSystemID:=", -1, _
  "KeepOriginals:=", false)
oEditor.SeparateBody  Array("NAME:Selections", "Selections:=", "Rotor")
oEditor.FitAll
Set oModule = oDesign.GetModule("ModelSetup")
oModule.AssignBand Array("NAME:MotionSetup1", "Move Type:=", "Rotate", _
  "Coordinate System:=", "Global", "Axis:=", "Z", "Is Positive:=", true, _
  "InitPos:=", "15deg", "HasRotateLimit:=", false, "NonCylindrical:=", _
  false, "Consider Mechanical Transient:=", true, "Angular Velocity:=", _
  "257.843rpm", "Moment of Inertia:=", 0.00149257, "Damping:=", 0.00283629, _
  "Load Torque:=", "if(speed<135.641, -0.0304748*speed, -560.694/speed)", _
  "Objects:=", Array("Band"))
oModule.EditMotionSetup Array("NAME:Data", "Consider Mechanical Transient:=", _
  false)
Set oModule = oDesign.GetModule("AnalysisSetup")
oModule.InsertSetup "Transient", Array("NAME:Setup1", "StopTime:=", "0.2s", _
  "TimeStep:=", "0.001s")
Set oModule = oDesign.GetModule("BoundarySetup")
oModule.SetMinimumTimeStep "0.01ms" 
Set oModule = oDesign.GetModule("ReportSetup")
oModule.CreateReport "Torque", "Transient", "XY Plot", "Setup1 : Transient", _
  Array(), Array("Time:=", Array("All")), Array("X Component:=", "Time", _
  "Y Component:=", Array("Moving1.Torque")), Array()
oModule.CreateReport "Winding Currents", "Transient", "XY Plot", _
  "Setup1 : Transient", Array(), Array("Time:=", Array("All")), Array(_
  "X Component:=", "Time", "Y Component:=", Array("Current(PhaseA)", _
  "Current(PhaseB)")), Array()
set oUnclassified = oEditor.GetObjectsInGroup("Unclassified")
Dim oObject
For Each oObject in oUnclassified
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", oObject), Array(_
  "NAME:ChangedProps", Array("NAME:Model", "Value:=", false))))
Next
oEditor.ShowWindow

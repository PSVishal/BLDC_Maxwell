' --------------------------------------------------------------------
' Script Created by RMxprt to generate Maxwell 2D Version 13.0 design 
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
oDesign.SetSolutionType "Transient", "XY"
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
  "NAME:skew", "PropType:=", "VariableProp", "UserDef:=", true, "Value:=", _
  "0"))))
On Error Goto 0
Set oDefinitionManager = oProject.GetDefinitionManager()
oDefinitionManager.ModifyLibraries designName, Array("NAME:PersonalLib"), _
  Array("NAME:UserLib"), Array("NAME:SystemLib", "Materials:=", Array(_
  "Materials", "RMxprt"))
if (oDefinitionManager.DoesMaterialExist("mu_metal_2DSF0.950")) then
else
oDefinitionManager.AddMaterial Array("NAME:mu_metal_2DSF0.950", _
  "CoordinateSystemType:=", "Cartesian", Array("NAME:AttachedData"), Array(_
  "NAME:ModifierData"), Array("NAME:permeability", "property_type:=", _
  "nonlinear", "HUnit:=", "A_per_meter", "BUnit:=", "tesla", Array(_
  "NAME:BHCoordinates", Array("NAME:Coordinate", "X:=", 0, "Y:=", 0), Array(_
  "NAME:Coordinate", "X:=", 0.8, "Y:=", 0.076001), Array("NAME:Coordinate", _
  "X:=", 1.2, "Y:=", 0.114002), Array("NAME:Coordinate", "X:=", 1.6, "Y:=", _
  0.142502), Array("NAME:Coordinate", "X:=", 2, "Y:=", 0.180502), Array(_
  "NAME:Coordinate", "X:=", 2.4, "Y:=", 0.218503), Array("NAME:Coordinate", _
  "X:=", 2.8, "Y:=", 0.266004), Array("NAME:Coordinate", "X:=", 3.2, "Y:=", _
  0.285004), Array("NAME:Coordinate", "X:=", 3.6, "Y:=", 0.308754), Array(_
  "NAME:Coordinate", "X:=", 4, "Y:=", 0.332505), Array("NAME:Coordinate", _
  "X:=", 4.4, "Y:=", 0.351505), Array("NAME:Coordinate", "X:=", 4.8, "Y:=", _
  0.370506), Array("NAME:Coordinate", "X:=", 5.2, "Y:=", 0.380006), Array(_
  "NAME:Coordinate", "X:=", 5.6, "Y:=", 0.389507), Array("NAME:Coordinate", _
  "X:=", 6.4, "Y:=", 0.408508), Array("NAME:Coordinate", "X:=", 7.2, "Y:=", _
  0.418009), Array("NAME:Coordinate", "X:=", 8, "Y:=", 0.43701), Array(_
  "NAME:Coordinate", "X:=", 11.9, "Y:=", 0.475015), Array("NAME:Coordinate", _
  "X:=", 15.9, "Y:=", 0.49877), Array("NAME:Coordinate", "X:=", 19.9, "Y:=", _
  0.513025), Array("NAME:Coordinate", "X:=", 23.9, "Y:=", 0.51778), Array(_
  "NAME:Coordinate", "X:=", 27.9, "Y:=", 0.527285), Array("NAME:Coordinate", _
  "X:=", 31.8, "Y:=", 0.53204), Array("NAME:Coordinate", "X:=", 35.8, "Y:=", _
  0.536795), Array("NAME:Coordinate", "X:=", 39.8, "Y:=", 0.54155), Array(_
  "NAME:Coordinate", "X:=", 43.8, "Y:=", 0.546305), Array("NAME:Coordinate", _
  "X:=", 47.7, "Y:=", 0.55106), Array("NAME:Coordinate", "X:=", 51.7, "Y:=", _
  0.555815), Array("NAME:Coordinate", "X:=", 55.7, "Y:=", 0.56057), Array(_
  "NAME:Coordinate", "X:=", 63.7, "Y:=", 0.563715), Array("NAME:Coordinate", _
  "X:=", 71.6, "Y:=", 0.56686), Array("NAME:Coordinate", "X:=", 79.6, "Y:=", _
  0.5701), Array("NAME:Coordinate", "X:=", 119.4, "Y:=", 0.58915), Array(_
  "NAME:Coordinate", "X:=", 159.2, "Y:=", 0.59395), Array("NAME:Coordinate", _
  "X:=", 198.9, "Y:=", 0.59875), Array("NAME:Coordinate", "X:=", 238.7, "Y:=", _
  0.60355), Array("NAME:Coordinate", "X:=", 278.5, "Y:=", 0.60835), Array(_
  "NAME:Coordinate", "X:=", 318.3, "Y:=", 0.61315), Array("NAME:Coordinate", _
  "X:=", 358.1, "Y:=", 0.61472), Array("NAME:Coordinate", "X:=", 397.9, "Y:=", _
  0.616385), Array("NAME:Coordinate", "X:=", 437.7, "Y:=", 0.61805), Array(_
  "NAME:Coordinate", "X:=", 477.5, "Y:=", 0.61962), Array("NAME:Coordinate", _
  "X:=", 517.3, "Y:=", 0.62119), Array("NAME:Coordinate", "X:=", 557, "Y:=", _
  0.62276), Array("NAME:Coordinate", "X:=", 636.6, "Y:=", 0.62438), Array(_
  "NAME:Coordinate", "X:=", 716.2, "Y:=", 0.626), Array("NAME:Coordinate", _
  "X:=", 795.8, "Y:=", 0.628), Array("NAME:Coordinate", "X:=", 1193.7, "Y:=", _
  0.630875), Array("NAME:Coordinate", "X:=", 1591.5, "Y:=", 0.63375), Array(_
  "NAME:Coordinate", "X:=", 1989.4, "Y:=", 0.636625), Array("NAME:Coordinate", _
  "X:=", 2387.3, "Y:=", 0.6395), Array("NAME:Coordinate", "X:=", 2785.2, _
  "Y:=", 0.64), Array("NAME:Coordinate", "X:=", 3183.1, "Y:=", 0.6405), _
  Array("NAME:Coordinate", "X:=", 7162.1, "Y:=", 0.6455))), "mass_density:=", _
  0) 
end if
if (oDefinitionManager.DoesMaterialExist("NdFe35_2DSF1.000_N")) then
else
oDefinitionManager.AddMaterial Array("NAME:NdFe35_2DSF1.000_N", _
  "CoordinateSystemType:=", "Cylindrical", Array("NAME:AttachedData"), Array(_
  "NAME:ModifierData"), "permeability:=", "1.09978", Array(_
  "NAME:magnetic_coercivity", "property_type:=", "VectorProperty", _
  "Magnitude:=", "-890000A_per_meter", "DirComp1:=", "1", "DirComp2:=", "0", _
  "DirComp3:=", "0"))
end if
if (oDefinitionManager.DoesMaterialExist("NdFe35_2DSF1.000_S")) then
else
oDefinitionManager.AddMaterial Array("NAME:NdFe35_2DSF1.000_S", _
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
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "SegAngle", "Value:=", _
  "1deg"), Array("NAME:Pair", "Name:=", "Fractions", "Value:=", "1"), Array(_
  "NAME:Pair", "Name:=", "HalfAxial", "Value:=", "0"), Array("NAME:Pair", _
  "Name:=", "InfoCore", "Value:=", "0"))), Array("NAME:Attributes", "Name:=", _
  "Band", "Flags:=", "", "Color:=", "(0 255 255)", "Transparency:=", 0, _
  "PartCoordinateSystem:=", "Global", "MaterialName:=", "vacuum", _
  "SolveInside:=", true) 
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/Band", "Version:=", "12.1", "NoOfParameters:=", 7, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74.5mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "26mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "SegAngle", "Value:=", _
  "1deg"), Array("NAME:Pair", "Name:=", "Fractions", "Value:=", "1"), Array(_
  "NAME:Pair", "Name:=", "HalfAxial", "Value:=", "0"), Array("NAME:Pair", _
  "Name:=", "InfoCore", "Value:=", "100"))), Array("NAME:Attributes", _
  "Name:=", "Shaft", "Flags:=", "", "Color:=", "(0 255 255)", _
  "Transparency:=", 0, "PartCoordinateSystem:=", "Global", "MaterialName:=", _
  "vacuum", "SolveInside:=", true) 
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/Band", "Version:=", "12.1", "NoOfParameters:=", 7, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74.5mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "120mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "SegAngle", "Value:=", _
  "1deg"), Array("NAME:Pair", "Name:=", "Fractions", "Value:=", "4"), Array(_
  "NAME:Pair", "Name:=", "HalfAxial", "Value:=", "0"), Array("NAME:Pair", _
  "Name:=", "InfoCore", "Value:=", "100"))), Array("NAME:Attributes", _
  "Name:=", "OuterRegion", "Flags:=", "", "Color:=", "(0 255 255)", _
  "Transparency:=", 0, "PartCoordinateSystem:=", "Global", "MaterialName:=", _
  "vacuum", "SolveInside:=", true) 
oEditor.SetPropertyValue "Geometry3DCmdTab", _
  "OuterRegion:CreateUserDefinedPart:1", "Fractions", "fractions"
oEditor.Copy Array("NAME:Selections", "Selections:=", "OuterRegion")
oEditor.Paste
oEditor.SetPropertyValue "Geometry3DCmdTab", _
  "OuterRegion1:CreateUserDefinedPart:1", "InfoCore", "1"
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "OuterRegion1"), _
  Array("NAME:ChangedProps", Array("NAME:Name", "Value:=", "Tool"))))
oEditor.FitAll
Set oModule = oDesign.GetModule("ModelSetup")
oModule.SetSymmetryMultiplier "fractions"
Set oModule = oDesign.GetModule("BoundarySetup")
edgeID = oEditor.GetEdgeByPosition(Array("NAME:Parameters", "BodyName:=", _
  "OuterRegion", "XPosition:=", "42.426406871192853mm", "YPosition:=", _
  "42.426406871192846mm", "ZPosition:=", "0mm"))
oModule.AssignVectorPotential Array("NAME:VectorPotential1", "Edges:=", Array(edgeID), _
  "Value:=", "0", "CoordinateSystem:=", "")
edgeID = oEditor.GetEdgeByPosition(Array("NAME:Parameters", "BodyName:=", _
  "OuterRegion", "XPosition:=", "30mm", "YPosition:=", "0mm", "ZPosition:=", _
  "0mm"))
oModule.AssignMaster Array("NAME:Master1", "Edges:=", Array(edgeID), _
  "ReverseV:=", false)
edgeID = oEditor.GetEdgeByPosition(Array("NAME:Parameters", "BodyName:=", _
  "OuterRegion", "XPosition:=", "1.83697019872103e-015mm", "YPosition:=", _
  "30mm", "ZPosition:=", "0mm"))
oModule.AssignSlave Array("NAME:Slave1", "Edges:=", Array(edgeID), _
  "ReverseU:=", true, "Master:=", "Master1", "SameAsMaster:=", false)
oDesign.SetDesignSettings Array("NAME:Design Settings Data", "ModelDepth:=", _
  "65mm")
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/SlotCore", "Version:=", "12.1", "NoOfParameters:=", 19, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "75mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "120mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Skew", "Value:=", "0deg"), _
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
  "Value:=", "15deg"), Array("NAME:Pair", "Name:=", "LenRegion", "Value:=", _
  "0mm"), Array("NAME:Pair", "Name:=", "InfoCore", "Value:=", "0"))), Array(_
  "NAME:Attributes", "Name:=", "Stator", "Flags:=", "", "Color:=", _
  "(132 132 193)", "Transparency:=", 0, "PartCoordinateSystem:=", "Global", _
  "MaterialName:=", "mu_metal_2DSF0.950", "SolveInside:=", true) 
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/LapCoil", "Version:=", "12.0", "NoOfParameters:=", 21, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "75mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "120mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Skew", "Value:=", "0deg"), _
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
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "SegAngle", "Value:=", _
  "5deg"), Array("NAME:Pair", "Name:=", "LenRegion", "Value:=", "0mm"), _
  Array("NAME:Pair", "Name:=", "InfoCoil", "Value:=", "2"))), Array(_
  "NAME:Attributes", "Name:=", "Coil", "Flags:=", "", "Color:=", _
  "(250 167 14)", "Transparency:=", 0, "PartCoordinateSystem:=", "Global", _
  "MaterialName:=", "copper", "SolveInside:=", true) 
oEditor.DuplicateAroundAxis Array("NAME:Selections", "Selections:=", "Coil"), _
  Array("NAME:DuplicateAroundAxisParameters", "CoordinateSystemID:=", -1, _
  "CreateNewObjects:=", true, "WhichAxis:=", "Z", "AngleStr:=", "15deg", _
  "NumClones:=", "24"), Array("NAME:Options", "DuplicateBoundaries:=", false)
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "Coil"), Array(_
  "NAME:ChangedProps", Array("NAME:Name", "Value:=", "Coil_0"))))
oEditor.Unite Array("NAME:Selections", "Selections:=", "Coil_0,Coil_6,Coil_12" & _
  ",Coil_18"), Array("NAME:UniteParameters", "CoordinateSystemID:=", -1, _
  "KeepOriginals:=", false)
oEditor.Unite Array("NAME:Selections", "Selections:=", "Coil_1,Coil_7,Coil_13" & _
  ",Coil_19"), Array("NAME:UniteParameters", "CoordinateSystemID:=", -1, _
  "KeepOriginals:=", false)
oEditor.Unite Array("NAME:Selections", "Selections:=", "Coil_2,Coil_8,Coil_14" & _
  ",Coil_20"), Array("NAME:UniteParameters", "CoordinateSystemID:=", -1, _
  "KeepOriginals:=", false)
oEditor.Unite Array("NAME:Selections", "Selections:=", "Coil_3,Coil_9,Coil_15" & _
  ",Coil_21"), Array("NAME:UniteParameters", "CoordinateSystemID:=", -1, _
  "KeepOriginals:=", false)
oEditor.Unite Array("NAME:Selections", "Selections:=", "Coil_4,Coil_10,Coil_16" & _
  ",Coil_22"), Array("NAME:UniteParameters", "CoordinateSystemID:=", -1, _
  "KeepOriginals:=", false)
oEditor.Unite Array("NAME:Selections", "Selections:=", "Coil_5,Coil_11,Coil_17" & _
  ",Coil_23"), Array("NAME:UniteParameters", "CoordinateSystemID:=", -1, _
  "KeepOriginals:=", false)
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/LapCoil", "Version:=", "12.0", "NoOfParameters:=", 21, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "75mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "120mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Skew", "Value:=", "0deg"), _
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
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "SegAngle", "Value:=", _
  "5deg"), Array("NAME:Pair", "Name:=", "LenRegion", "Value:=", "0mm"), _
  Array("NAME:Pair", "Name:=", "InfoCoil", "Value:=", "3"))), Array(_
  "NAME:Attributes", "Name:=", "CoilRe", "Flags:=", "", "Color:=", _
  "(250 167 14)", "Transparency:=", 0, "PartCoordinateSystem:=", "Global", _
  "MaterialName:=", "copper", "SolveInside:=", true) 
oEditor.Rotate Array("NAME:Selections", "Selections:=", "CoilRe"), Array(_
  "NAME:RotateParameters", "CoordinateSystemID:=", -1, "RotateAxis:=", "Z", _
  "RotateAngle:=", "-75deg")
oEditor.DuplicateAroundAxis Array("NAME:Selections", "Selections:=", "CoilRe"), _
  Array("NAME:DuplicateAroundAxisParameters", "CoordinateSystemID:=", -1, _
  "CreateNewObjects:=", true, "WhichAxis:=", "Z", "AngleStr:=", "15deg", _
  "NumClones:=", "24"), Array("NAME:Options", "DuplicateBoundaries:=", false)
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "CoilRe"), Array(_
  "NAME:ChangedProps", Array("NAME:Name", "Value:=", "CoilRe_0"))))
oEditor.Unite Array("NAME:Selections", "Selections:=", "CoilRe_0,CoilRe_6" & _
  ",CoilRe_12,CoilRe_18"), Array("NAME:UniteParameters", _
  "CoordinateSystemID:=", -1, "KeepOriginals:=", false)
oEditor.Unite Array("NAME:Selections", "Selections:=", "CoilRe_1,CoilRe_7" & _
  ",CoilRe_13,CoilRe_19"), Array("NAME:UniteParameters", _
  "CoordinateSystemID:=", -1, "KeepOriginals:=", false)
oEditor.Unite Array("NAME:Selections", "Selections:=", "CoilRe_2,CoilRe_8" & _
  ",CoilRe_14,CoilRe_20"), Array("NAME:UniteParameters", _
  "CoordinateSystemID:=", -1, "KeepOriginals:=", false)
oEditor.Unite Array("NAME:Selections", "Selections:=", "CoilRe_3,CoilRe_9" & _
  ",CoilRe_15,CoilRe_21"), Array("NAME:UniteParameters", _
  "CoordinateSystemID:=", -1, "KeepOriginals:=", false)
oEditor.Unite Array("NAME:Selections", "Selections:=", "CoilRe_4,CoilRe_10" & _
  ",CoilRe_16,CoilRe_22"), Array("NAME:UniteParameters", _
  "CoordinateSystemID:=", -1, "KeepOriginals:=", false)
oEditor.Unite Array("NAME:Selections", "Selections:=", "CoilRe_5,CoilRe_11" & _
  ",CoilRe_17,CoilRe_23"), Array("NAME:UniteParameters", _
  "CoordinateSystemID:=", -1, "KeepOriginals:=", false)
Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignWindingGroup Array("NAME:PhaseA", "Type:=", "External", _
  "IsSolid:=", false, "Current:=", "0A", "Resistance:=", "0ohm", _
  "Inductance:=", "0H", "Voltage:=", "0V", "ParallelBranchesNum:=", "1")
Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignWindingGroup Array("NAME:PhaseB", "Type:=", "External", _
  "IsSolid:=", false, "Current:=", "0A", "Resistance:=", "0ohm", _
  "Inductance:=", "0H", "Voltage:=", "0V", "ParallelBranchesNum:=", "1")
oModule.AssignCoil Array("NAME:PhA_0", "Objects:=", Array("Coil_0"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseA")
oModule.AssignCoil Array("NAME:PhARe_0", "Objects:=", Array("CoilRe_5"), _
  "Conductor number:=", 30, "PolarityType:=", "Negative", "Winding:=", _
  "PhaseA")
oModule.AssignCoil Array("NAME:PhA_1", "Objects:=", Array("Coil_1"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseA")
oModule.AssignCoil Array("NAME:PhA_2", "Objects:=", Array("Coil_2"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseA")
oModule.AssignCoil Array("NAME:PhB_3", "Objects:=", Array("Coil_3"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseB")
oModule.AssignCoil Array("NAME:PhB_4", "Objects:=", Array("Coil_4"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseB")
oModule.AssignCoil Array("NAME:PhB_5", "Objects:=", Array("Coil_5"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseB")
oModule.AssignCoil Array("NAME:PhA_19", "Objects:=", Array("CoilRe_0"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseA")
oModule.AssignCoil Array("NAME:PhA_20", "Objects:=", Array("CoilRe_1"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseA")
oModule.AssignCoil Array("NAME:PhB_21", "Objects:=", Array("CoilRe_2"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseB")
oModule.AssignCoil Array("NAME:PhB_22", "Objects:=", Array("CoilRe_3"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseB")
oModule.AssignCoil Array("NAME:PhB_23", "Objects:=", Array("CoilRe_4"), _
  "Conductor number:=", 30, "PolarityType:=", "Positive", "Winding:=", _
  "PhaseB")
Set oModule = oDesign.GetModule("MeshSetup")
oModule.AssignLengthOp Array("NAME:Length_Coil", "RefineInside:=", true, _
  "Objects:=", Array("Coil_0", "Coil_1", "Coil_2", "Coil_3", "Coil_4", _
  "Coil_5", "CoilRe_0", "CoilRe_1", "CoilRe_2", "CoilRe_3", "CoilRe_4", _
  "CoilRe_5"), "RestrictElem:=", false, "NumMaxElem:=", "1000", _
  "RestrictLength:=", true, "MaxLength:=", "3.3mm")
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/PMCore", "Version:=", "12.0", "NoOfParameters:=", 13, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "26mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Poles", "Value:=", "4"), _
  Array("NAME:Pair", "Name:=", "PoleType", "Value:=", "1"), Array("NAME:Pair", _
  "Name:=", "Embrace", "Value:=", "0.7"), Array("NAME:Pair", "Name:=", _
  "ThickMag", "Value:=", "3.5mm"), Array("NAME:Pair", "Name:=", "WidthMag", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Offset", "Value:=", "0mm"), _
  Array("NAME:Pair", "Name:=", "Bridge", "Value:=", "0mm"), Array("NAME:Pair", _
  "Name:=", "Rib", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", _
  "LenRegion", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "InfoCore", _
  "Value:=", "0"))), Array("NAME:Attributes", "Name:=", "Rotor", "Flags:=", _
  "", "Color:=", "(132 132 193)", "Transparency:=", 0, _
  "PartCoordinateSystem:=", "Global", "MaterialName:=", "mu_metal_2DSF0.950", _
  "SolveInside:=", true) 
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/PMCore", "Version:=", "12.0", "NoOfParameters:=", 13, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "26mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Poles", "Value:=", "4"), _
  Array("NAME:Pair", "Name:=", "PoleType", "Value:=", "1"), Array("NAME:Pair", _
  "Name:=", "Embrace", "Value:=", "0.7"), Array("NAME:Pair", "Name:=", _
  "ThickMag", "Value:=", "3.5mm"), Array("NAME:Pair", "Name:=", "WidthMag", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Offset", "Value:=", "0mm"), _
  Array("NAME:Pair", "Name:=", "Bridge", "Value:=", "0mm"), Array("NAME:Pair", _
  "Name:=", "Rib", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", _
  "LenRegion", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "InfoCore", _
  "Value:=", "2"))), Array("NAME:Attributes", "Name:=", "Mag", "Flags:=", "", _
  "Color:=", "(0 255 128)", "Transparency:=", 0, "PartCoordinateSystem:=", _
  "Global", "MaterialName:=", "NdFe35_2DSF1.000_N", "SolveInside:=", true) 
oEditor.DuplicateAroundAxis Array("NAME:Selections", "Selections:=", "Mag"), _
  Array("NAME:DuplicateAroundAxisParameters", "CoordinateSystemID:=", -1, _
  "CreateNewObjects:=", true, "WhichAxis:=", "Z", "AngleStr:=", "90deg", _
  "NumClones:=", "4"), Array("NAME:Options", "DuplicateBoundaries:=", false)
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "Mag"), Array(_
  "NAME:ChangedProps", Array("NAME:Name", "Value:=", "Mag_0"))))
oEditor.Unite Array("NAME:Selections", "Selections:=", "Mag_0,Mag_1,Mag_2,Mag_3"), _
  Array("NAME:UniteParameters", "CoordinateSystemID:=", -1, "KeepOriginals:=", _
  false)
Set oModule = oDesign.GetModule("MeshSetup")
oModule.AssignLengthOp Array("NAME:Length_Mag", "RefineInside:=", true, _
  "Objects:=", Array("Mag_0"), "RestrictElem:=", false, "NumMaxElem:=", _
  "1000", "RestrictLength:=", true, "MaxLength:=", "1.75mm")
Set oModule = oDesign.GetModule("MeshSetup")
oModule.AssignTrueSurfOp Array("NAME:SurfApprox_Mag", "Objects:=", Array(_
  "Mag_0"), "SurfDevChoice:=", 2, "SurfDev:=", "0.037mm", "NormalDevChoice:=", _
  2, "NormalDev:=", "15deg", "AspectRatioChoice:=", 1)
oEditor.CreateUserDefinedPart Array("NAME:UserDefinedPrimitiveParameters", _
  "DllName:=", "RMxprt/PMCore", "Version:=", "12.0", "NoOfParameters:=", 13, _
  "Library:=", "syslib", Array("NAME:ParamVector", Array("NAME:Pair", _
  "Name:=", "DiaGap", "Value:=", "74mm"), Array("NAME:Pair", "Name:=", _
  "DiaYoke", "Value:=", "26mm"), Array("NAME:Pair", "Name:=", "Length", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Poles", "Value:=", "4"), _
  Array("NAME:Pair", "Name:=", "PoleType", "Value:=", "1"), Array("NAME:Pair", _
  "Name:=", "Embrace", "Value:=", "0.7"), Array("NAME:Pair", "Name:=", _
  "ThickMag", "Value:=", "3.5mm"), Array("NAME:Pair", "Name:=", "WidthMag", _
  "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "Offset", "Value:=", "0mm"), _
  Array("NAME:Pair", "Name:=", "Bridge", "Value:=", "0mm"), Array("NAME:Pair", _
  "Name:=", "Rib", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", _
  "LenRegion", "Value:=", "0mm"), Array("NAME:Pair", "Name:=", "InfoCore", _
  "Value:=", "100"))), Array("NAME:Attributes", "Name:=", "InnerRegion", _
  "Flags:=", "", "Color:=", "(0 255 255)", "Transparency:=", 0, _
  "PartCoordinateSystem:=", "Global", "MaterialName:=", "vacuum", _
  "SolveInside:=", true) 
Set oModule = oDesign.GetModule("MeshSetup")
oModule.AssignTrueSurfOp Array("NAME:SurfApprox_Main", "Objects:=", Array(_
  "Stator", "Rotor", "Band", "OuterRegion", "InnerRegion", "Shaft"), _
  "SurfDevChoice:=", 2, "SurfDev:=", "0.06mm", "NormalDevChoice:=", 2, _
  "NormalDev:=", "15deg", "AspectRatioChoice:=", 1)
Set oModule = oDesign.GetModule("MeshSetup")
oModule.AssignLengthOp Array("NAME:Length_Main", "RefineInside:=", true, _
  "Objects:=", Array("Stator", "Rotor", "Band", "OuterRegion", "InnerRegion", _
  "Shaft"), "RestrictElem:=", false, "NumMaxElem:=", "1000", _
  "RestrictLength:=", true, "MaxLength:=", "4.6mm")
oEditor.ChangeProperty Array("NAME:AllTabs", Array(_
  "NAME:Geometry3DAttributeTab", Array("NAME:PropServers", "Band", _
  "OuterRegion", "InnerRegion"), Array("NAME:ChangedProps", Array(_
  "NAME:Transparent", "Value:=", 0.75))))
oEditor.Subtract Array("NAME:Selections", "Blank Parts:=", "Band,InnerRegion" & _
  ",Shaft,Stator,Coil_0,Coil_1,Coil_2,Coil_3,Coil_4,Coil_5,CoilRe_0" & _
  ",CoilRe_1,CoilRe_2,CoilRe_3,CoilRe_4,CoilRe_5,Rotor,Mag_0", _
  "Tool Parts:=", "Tool"), Array("NAME:SubtractParameters", _
  "CoordinateSystemID:=", -1, "KeepOriginals:=", false)
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
oModule.EditMotionSetup "MotionSetup1", Array("NAME:Data", _
  "Consider Mechanical Transient:=", false)
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
oEditor.ShowWindow

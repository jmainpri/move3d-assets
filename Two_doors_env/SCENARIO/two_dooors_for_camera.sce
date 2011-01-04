#************************************************************
# Scenario of two_doors
#
# date : Thu Sep 23 17:25:50 2004
#************************************************************

p3d_sel_desc_name P3D_ENV two_doors



p3d_sel_desc_name P3D_ROBOT assembler

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 120.000000 -180.000000 0.000000 0.000000 -115.000000 150.000000 0.000000 55.000000 0.000000 0.900000 0.900000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 120.000000 -180.000000 0.000000 0.000000 -115.000000 150.000000 0.000000 55.000000 0.000000 0.900000 0.900000




p3d_sel_desc_name P3D_ROBOT porte_1

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT porte_2

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT MO_cube

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT MO_cylinder

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT MO_pyramide

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




#------------------------------------------------------------
# Planner:

p3d_set_NB_TRY 1000

p3d_col_set_dmax 7.211103

p3d_set_robot_view -68.000000 -5.000000 0.000000 1223.416667 2.085000 0.530000 0.000000 0.000000 1.000000 0.000000


#------------------------------------------------------------
# Multi-robots:
#------------------------------------------------------------


#===================================================
# Multi-robot description: assembler

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "assembler"
p3d_end_desc #- End of kinematic ----

p3d_set_name "assembler" #- Multi-robot name ----


#----------------------------------------------
#- Multi-robot parameter: Default ----

p3d_beg_desc_param

p3d_set_name "Default" #- Parameter name ----

#- Component object ---------------

p3d_order_sub_robot_use \
           T "assembler" "J0" \ # Joint
           T "assembler" "base" \ # Joint
           T "assembler" "arm 1" \ # Joint
           T "assembler" "arm 2" \ # Joint
           T "assembler" "arm 3" \ # Joint
           T "assembler" "arm 4" \ # Joint
           T "assembler" "arm 5" \ # Joint
           T "assembler" "arm 6" \ # Joint
           T "assembler" "grip right" \ # Joint
           T "assembler" "grip left" \ # Joint



#- First joint list ------------

p3d_beg_desc_first_pos_joint #- position of the first joint ----
  p3d_joint "assembler" 0 # Joint: J0
  p3d_pos_xyz 	0.000000	0.000000	3.000000 \
              	-0.000000	0.000000	-0.000000
  p3d_link_to P3D_MATRIX
p3d_end_desc #- End of first joint position ----


#- Degree of freedom use ------------
p3d_beg_desc_dof_use
#  min rand. | min val. |  max val. | max rand. | fixed in localpath
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: assembler  Joint: J0 X
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: assembler  Joint: J0 Y
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: assembler  Joint: J0 Z
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: assembler  Joint: J0 Rx
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: assembler  Joint: J0 Ry
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: assembler  Joint: J0 Rz
  -435.000000 -435.000000 130.000000 130.800000 FALSE # Robot: assembler  Joint: base X
  -85.000000 -85.000000 285.000000 285.000000 FALSE # Robot: assembler  Joint: base Y
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: assembler  Joint: base Rz
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: assembler  Joint: arm 1 Rot.
  -130.000000 -130.000000 130.000000 130.000000 FALSE # Robot: assembler  Joint: arm 2 Rot.
  -150.000000 -150.000000 150.000000 150.000000 FALSE # Robot: assembler  Joint: arm 3 Rot.
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: assembler  Joint: arm 4 Rot.
  -95.000000 -95.000000 95.000000 95.000000 FALSE # Robot: assembler  Joint: arm 5 Rot.
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: assembler  Joint: arm 6 Rot.
  0.000000 0.000000 3.600000 3.600000 FALSE # Robot: assembler  Joint: grip right Trans.
  0.000000 0.000000 3.600000 3.600000 FALSE # Robot: assembler  Joint: grip left Trans.
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config assembler Default (0)"
  p3d_set_param "assembler" "Default" # assembler (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-435.000000	285.000000\
	0.000000	-1.134464	0.315129	0.727221\
	0.000000	0.959931	0.000000	0.900000\
	0.900000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config assembler Default (1)"
  p3d_set_param "assembler" "Default" # assembler (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-140.729187	-64.444443\
	0.261799	-1.876229	0.409668	-0.799943\
	-3.141593	1.174461	1.614430	0.900000\
	0.900000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config assembler Default (2)"
  p3d_set_param "assembler" "Default" # assembler (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-364.375000	267.013885\
	-1.265364	-1.963495	0.378154	0.727221\
	0.000000	0.959931	-1.178097	0.900000\
	0.900000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config assembler Default (3)"
  p3d_set_param "assembler" "Default" # assembler (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-360.451385	272.152771\
	-1.178097	0.959931	-0.535719	-0.763582\
	-2.923426	0.898117	-1.352630	0.900000\
	0.900000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config assembler Default (4)"
  p3d_set_param "assembler" "Default" # assembler (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	90.763916	-13.055557\
	-2.181662	1.701696	-0.094539	-0.690860\
	-2.312561	0.990232	-1.919862	0.900000\
	0.900000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config assembler Default (5)"
  p3d_set_param "assembler" "Default" # assembler (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-364.375000	267.013885\
	-1.265364	-1.963495	0.378154	0.727221\
	0.000000	0.959931	-1.178097	0.900000\
	0.900000

p3d_end_desc #- End of configuration ----


#----------------------------------------------
#- Multi-robot graph description: New graph 0 ----

p3d_beg_desc_graph

  p3d_set_name "New graph 0" #- Graph name ----

  p3d_set_type P3D_MR_GRAPH_CROSS #- Graph type ----

  p3d_set_param "assembler" "Default"

p3d_end_desc #- End of graph ----

p3d_end_desc #- End of assembler ----


#===================================================
# Multi-robot description: porte_1

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "porte_1"
p3d_end_desc #- End of kinematic ----

p3d_set_name "porte_1" #- Multi-robot name ----

#---- The collisions selected:

p3d_beg_desc_collision

   #---- The collisions with the environment:

  p3d_deactivate_all_env

p3d_end_desc #- End of collision selection ----


#----------------------------------------------
#- Multi-robot parameter: Default ----

p3d_beg_desc_param

p3d_set_name "Default" #- Parameter name ----

#- Component object ---------------

p3d_order_sub_robot_use \
           T "porte_1" "J0" \ # Joint
           T "porte_1" "toto" \ # Joint



#- First joint list ------------

p3d_beg_desc_first_pos_joint #- position of the first joint ----
  p3d_joint "porte_1" 0 # Joint: J0
  p3d_pos_xyz 	-50.000000	10.000000	0.000000 \
              	-0.000000	0.000000	-180.000000
  p3d_link_to P3D_MATRIX
p3d_end_desc #- End of first joint position ----


#- Degree of freedom use ------------
p3d_beg_desc_dof_use
#  min rand. | min val. |  max val. | max rand. | fixed in localpath
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_1  Joint: J0 X
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_1  Joint: J0 Y
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_1  Joint: J0 Z
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_1  Joint: J0 Rx
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_1  Joint: J0 Ry
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_1  Joint: J0 Rz
  -160.000000 -160.000000 125.000000 125.000000 FALSE # Robot: porte_1  Joint: toto Rot.
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "close"
  p3d_set_param "porte_1" "Default" # porte_1 (Default)
  p3d_set_dof_value\
	-50.000000	10.000000	0.000000	0.000000\
	-0.000000	-3.141593	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "open"
  p3d_set_param "porte_1" "Default" # porte_1 (Default)
  p3d_set_dof_value\
	-50.000000	10.000000	0.000000	0.000000\
	-0.000000	-3.141593	2.181662

p3d_end_desc #- End of configuration ----

p3d_end_desc #- End of porte_1 ----


#===================================================
# Multi-robot description: porte_2

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "porte_2"
p3d_end_desc #- End of kinematic ----

p3d_set_name "porte_2" #- Multi-robot name ----

#---- The collisions selected:

p3d_beg_desc_collision

   #---- The collisions with the environment:

  p3d_deactivate_all_env

p3d_end_desc #- End of collision selection ----


#----------------------------------------------
#- Multi-robot parameter: Default ----

p3d_beg_desc_param

p3d_set_name "Default" #- Parameter name ----

#- Component object ---------------

p3d_order_sub_robot_use \
           T "porte_2" "J0" \ # Joint
           T "porte_2" "toto" \ # Joint



#- First joint list ------------

p3d_beg_desc_first_pos_joint #- position of the first joint ----
  p3d_joint "porte_2" 0 # Joint: J0
  p3d_pos_xyz 	-50.000000	224.000000	0.000000 \
              	-0.000000	0.000000	-180.000000
  p3d_link_to P3D_MATRIX
p3d_end_desc #- End of first joint position ----


#- Degree of freedom use ------------
p3d_beg_desc_dof_use
#  min rand. | min val. |  max val. | max rand. | fixed in localpath
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_2  Joint: J0 X
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_2  Joint: J0 Y
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_2  Joint: J0 Z
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_2  Joint: J0 Rx
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_2  Joint: J0 Ry
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: porte_2  Joint: J0 Rz
  -160.000000 -160.000000 125.000000 125.000000 FALSE # Robot: porte_2  Joint: toto Rot.
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "close"
  p3d_set_param "porte_2" "Default" # porte_2 (Default)
  p3d_set_dof_value\
	-50.000000	224.000000	0.000000	0.000000\
	-0.000000	-3.141593	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "open"
  p3d_set_param "porte_2" "Default" # porte_2 (Default)
  p3d_set_dof_value\
	-50.000000	224.000000	0.000000	0.000000\
	-0.000000	-3.141593	2.181662

p3d_end_desc #- End of configuration ----

p3d_end_desc #- End of porte_2 ----


#===================================================
# Multi-robot description: MO_cube

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "MO_cube"
p3d_end_desc #- End of kinematic ----

p3d_set_name "MO_cube" #- Multi-robot name ----

#---- The collisions selected:

p3d_beg_desc_collision

   #---- The collisions with the environment:

  p3d_deactivate_all_env

p3d_end_desc #- End of collision selection ----


#----------------------------------------------
#- Multi-robot parameter: Default ----

p3d_beg_desc_param

p3d_set_name "Default" #- Parameter name ----

#- Component object ---------------

p3d_order_sub_robot_use \
           T "MO_cube" "J0" \ # Joint
           T "MO_cube" "base" \ # Joint



#- First joint list ------------

p3d_beg_desc_first_pos_joint #- position of the first joint ----
  p3d_joint "MO_cube" 0 # Joint: J0
  p3d_pos_xyz 	0.000000	0.000000	30.000000 \
              	-0.000000	0.000000	-0.000000
  p3d_link_to P3D_MATRIX
p3d_end_desc #- End of first joint position ----


#- Degree of freedom use ------------
p3d_beg_desc_dof_use
#  min rand. | min val. |  max val. | max rand. | fixed in localpath
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cube  Joint: J0 X
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cube  Joint: J0 Y
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cube  Joint: J0 Z
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cube  Joint: J0 Rx
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cube  Joint: J0 Ry
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cube  Joint: J0 Rz
  -420.000000 -420.000000 120.000000 120.000000 FALSE # Robot: MO_cube  Joint: base X
  -70.000000 -120.000000 270.000000 270.000000 FALSE # Robot: MO_cube  Joint: base Y
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: MO_cube  Joint: base Rz
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config MO_cube Default (0)"
  p3d_set_param "MO_cube" "Default" # MO_cube (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-108.750000	129.166672\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config MO_cube Default (1)"
  p3d_set_param "MO_cube" "Default" # MO_cube (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-401.250000	118.333328\
	0.000000

p3d_end_desc #- End of configuration ----


#----------------------------------------------
#- Multi-robot graph description: New graph 0 ----

p3d_beg_desc_graph

  p3d_set_name "New graph 0" #- Graph name ----

  p3d_set_type P3D_MR_GRAPH_CROSS #- Graph type ----

  p3d_set_param "MO_cube" "Default"

p3d_end_desc #- End of graph ----

p3d_end_desc #- End of MO_cube ----


#===================================================
# Multi-robot description: MO_cylinder

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "MO_cylinder"
p3d_end_desc #- End of kinematic ----

p3d_set_name "MO_cylinder" #- Multi-robot name ----

#---- The collisions selected:

p3d_beg_desc_collision

   #---- The collisions with the environment:

  p3d_deactivate_all_env

p3d_end_desc #- End of collision selection ----


#----------------------------------------------
#- Multi-robot parameter: Default ----

p3d_beg_desc_param

p3d_set_name "Default" #- Parameter name ----

#- Component object ---------------

p3d_order_sub_robot_use \
           T "MO_cylinder" "J0" \ # Joint
           T "MO_cylinder" "base" \ # Joint



#- First joint list ------------

p3d_beg_desc_first_pos_joint #- position of the first joint ----
  p3d_joint "MO_cylinder" 0 # Joint: J0
  p3d_pos_xyz 	0.000000	0.000000	30.000000 \
              	-0.000000	0.000000	-0.000000
  p3d_link_to P3D_MATRIX
p3d_end_desc #- End of first joint position ----


#- Degree of freedom use ------------
p3d_beg_desc_dof_use
#  min rand. | min val. |  max val. | max rand. | fixed in localpath
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 X
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 Y
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 Z
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 Rx
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 Ry
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 Rz
  -420.000000 -420.000000 120.000000 120.000000 FALSE # Robot: MO_cylinder  Joint: base X
  -70.000000 -120.000000 270.000000 270.000000 FALSE # Robot: MO_cylinder  Joint: base Y
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: MO_cylinder  Joint: base Rz
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config MO_cylinder Default (0)"
  p3d_set_param "MO_cylinder" "Default" # MO_cylinder (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-165.000000	56.041672\
	-1.249257

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config MO_cylinder Default (1)"
  p3d_set_param "MO_cylinder" "Default" # MO_cylinder (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-333.750000	10.000000\
	-1.249257

p3d_end_desc #- End of configuration ----


#----------------------------------------------
#- Multi-robot graph description: New graph 0 ----

p3d_beg_desc_graph

  p3d_set_name "New graph 0" #- Graph name ----

  p3d_set_type P3D_MR_GRAPH_CROSS #- Graph type ----

  p3d_set_param "MO_cylinder" "Default"

p3d_end_desc #- End of graph ----

p3d_end_desc #- End of MO_cylinder ----


#===================================================
# Multi-robot description: MO_pyramide

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "MO_pyramide"
p3d_end_desc #- End of kinematic ----

p3d_set_name "MO_pyramide" #- Multi-robot name ----

#---- The collisions selected:

p3d_beg_desc_collision

   #---- The collisions with the environment:

  p3d_deactivate_all_env

p3d_end_desc #- End of collision selection ----


#----------------------------------------------
#- Multi-robot parameter: Default ----

p3d_beg_desc_param

p3d_set_name "Default" #- Parameter name ----

#- Component object ---------------

p3d_order_sub_robot_use \
           T "MO_pyramide" "J0" \ # Joint
           T "MO_pyramide" "base" \ # Joint



#- First joint list ------------

p3d_beg_desc_first_pos_joint #- position of the first joint ----
  p3d_joint "MO_pyramide" 0 # Joint: J0
  p3d_pos_xyz 	0.000000	0.000000	40.000000 \
              	-0.000000	0.000000	-0.000000
  p3d_link_to P3D_MATRIX
p3d_end_desc #- End of first joint position ----


#- Degree of freedom use ------------
p3d_beg_desc_dof_use
#  min rand. | min val. |  max val. | max rand. | fixed in localpath
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_pyramide  Joint: J0 X
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_pyramide  Joint: J0 Y
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_pyramide  Joint: J0 Z
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_pyramide  Joint: J0 Rx
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_pyramide  Joint: J0 Ry
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_pyramide  Joint: J0 Rz
  -420.000000 -420.000000 120.000000 120.000000 FALSE # Robot: MO_pyramide  Joint: base X
  -80.000000 -120.000000 280.000000 280.000000 FALSE # Robot: MO_pyramide  Joint: base Y
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: MO_pyramide  Joint: base Rz
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config MO_pyramide Default (0)"
  p3d_set_param "MO_pyramide" "Default" # MO_pyramide (Default)
  p3d_set_dof_value\
	0.000000	0.000000	40.000000	0.000000\
	-0.000000	0.000000	-243.750000	241.111115\
	0.785398

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config MO_pyramide Default (1)"
  p3d_set_param "MO_pyramide" "Default" # MO_pyramide (Default)
  p3d_set_dof_value\
	0.000000	0.000000	40.000000	0.000000\
	-0.000000	0.000000	-243.750000	241.111115\
	0.785398

p3d_end_desc #- End of configuration ----


#----------------------------------------------
#- Multi-robot graph description: New graph 0 ----

p3d_beg_desc_graph

  p3d_set_name "New graph 0" #- Graph name ----

  p3d_set_type P3D_MR_GRAPH_CROSS #- Graph type ----

  p3d_set_param "MO_pyramide" "Default"

p3d_end_desc #- End of graph ----

p3d_end_desc #- End of MO_pyramide ----


#------------------------------------------------------------
# Multi-robots environment:
#------------------------------------------------------------

#   The joints:
#   -----------


#------------------------------------------------------------
# Graph relative data:
#------------------------------------------------------------


#------------------------------------------------------------
# Graph links:
#------------------------------------------------------------


#------------------------------------------------------------
# Graph parameters:
#------------------------------------------------------------

p3d_beg_graph_parameter_desc "assembler" "New graph 0" #- Graph parameter of assembler (New graph 0)

  p3d_set_shoot_method P3D_MR_SHOOT_METHOD_PARAM # Use parameter shoot

  p3d_set_nb_shoot_node 200 # number of shoot try to add a node when use this parameter

  p3d_set_nb_try 200 # maximum number of try to find a nodes to add when use this parameter

  p3d_expand_options "P3D_MR_EXPAND_SORT_DIST P3D_MR_EXPAND_CHECK_EXISTING_NODES P3D_MR_EXPAND_VALID_EDGE" # Options used for the roadmap expension

  p3d_set_search_method P3D_GRAPH_SEARCH_VISIBILITY # Visibility PRM

  p3d_set_search_near_node_method P3D_GRAPH_SEARCH_NEAR_NODE_NOT_DEFINED # Type not defined

  p3d_set_search_between_nodes_method P3D_GRAPH_SEARCH_BETWEEN_NODES_VISIBILITY # Visibility PRM

p3d_end_desc #- End of graph parameter ----

p3d_beg_graph_parameter_desc "MO_cube" "New graph 0" #- Graph parameter of MO_cube (New graph 0)

  p3d_set_shoot_method P3D_MR_SHOOT_METHOD_PARAM # Use parameter shoot

  p3d_set_nb_shoot_node 200 # number of shoot try to add a node when use this parameter

  p3d_set_nb_try 200 # maximum number of try to find a nodes to add when use this parameter

  p3d_expand_options "P3D_MR_EXPAND_SORT_DIST P3D_MR_EXPAND_CHECK_EXISTING_NODES P3D_MR_EXPAND_VALID_EDGE" # Options used for the roadmap expension

  p3d_set_search_method P3D_GRAPH_SEARCH_VISIBILITY # Visibility PRM

  p3d_set_search_near_node_method P3D_GRAPH_SEARCH_NEAR_NODE_NOT_DEFINED # Type not defined

  p3d_set_search_between_nodes_method P3D_GRAPH_SEARCH_BETWEEN_NODES_VISIBILITY # Visibility PRM

p3d_end_desc #- End of graph parameter ----

p3d_beg_graph_parameter_desc "MO_cylinder" "New graph 0" #- Graph parameter of MO_cylinder (New graph 0)

  p3d_set_shoot_method P3D_MR_SHOOT_METHOD_PARAM # Use parameter shoot

  p3d_set_nb_shoot_node 200 # number of shoot try to add a node when use this parameter

  p3d_set_nb_try 200 # maximum number of try to find a nodes to add when use this parameter

  p3d_expand_options "P3D_MR_EXPAND_SORT_DIST P3D_MR_EXPAND_CHECK_EXISTING_NODES P3D_MR_EXPAND_VALID_EDGE" # Options used for the roadmap expension

  p3d_set_search_method P3D_GRAPH_SEARCH_VISIBILITY # Visibility PRM

  p3d_set_search_near_node_method P3D_GRAPH_SEARCH_NEAR_NODE_NOT_DEFINED # Type not defined

  p3d_set_search_between_nodes_method P3D_GRAPH_SEARCH_BETWEEN_NODES_VISIBILITY # Visibility PRM

p3d_end_desc #- End of graph parameter ----

p3d_beg_graph_parameter_desc "MO_pyramide" "New graph 0" #- Graph parameter of MO_pyramide (New graph 0)

  p3d_set_shoot_method P3D_MR_SHOOT_METHOD_PARAM # Use parameter shoot

  p3d_set_nb_shoot_node 200 # number of shoot try to add a node when use this parameter

  p3d_set_nb_try 200 # maximum number of try to find a nodes to add when use this parameter

  p3d_expand_options "P3D_MR_EXPAND_SORT_DIST P3D_MR_EXPAND_CHECK_EXISTING_NODES P3D_MR_EXPAND_VALID_EDGE" # Options used for the roadmap expension

  p3d_set_search_method P3D_GRAPH_SEARCH_VISIBILITY # Visibility PRM

  p3d_set_search_near_node_method P3D_GRAPH_SEARCH_NEAR_NODE_NOT_DEFINED # Type not defined

  p3d_set_search_between_nodes_method P3D_GRAPH_SEARCH_BETWEEN_NODES_VISIBILITY # Visibility PRM

p3d_end_desc #- End of graph parameter ----


#------------------------------------------------------------
# Multi-roadmaps:
#------------------------------------------------------------

p3d_beg_desc_multi_roadmap #- description of the multi-roadmap ----

#----------------------------------------------
# The heuristics rules
#---------------------

p3d_beg_desc_rules_set #- description of a set of rules ----

p3d_end_desc #- End of the description of a set of rules ----

p3d_end_desc #- End of the description of the multi-roadmap ----

#----------------------------------------------
# The currently active multi-robot
#---------------------

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "porte_1" "Default" # porte_1 (Default)
  p3d_set_dof_value\
	-50.000000	10.000000	0.000000	0.000000\
	-0.000000	-3.141593	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "porte_2" "Default" # porte_2 (Default)
  p3d_set_dof_value\
	-50.000000	224.000000	0.000000	0.000000\
	-0.000000	-3.141593	2.181662

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "MO_cube" "Default" # MO_cube (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-401.250000	-120.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "MO_cylinder" "Default" # MO_cylinder (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-333.750000	-120.000000\
	-1.249257

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "MO_pyramide" "Default" # MO_pyramide (Default)
  p3d_set_dof_value\
	0.000000	0.000000	40.000000	0.000000\
	-0.000000	0.000000	-243.750000	-120.000000\
	0.785398

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "assembler" "Default" # assembler (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-360.451385	267.013885\
	-1.265364	-1.963495	0.378154	0.727221\
	0.000000	0.959931	-1.178097	0.900000\
	0.900000

p3d_end_desc #- End of configuration ----

#----------------------------------------------
# The saved roadmap
#---------------------

#----------------------------------------------
# The saved trajectories
#---------------------

#----------------------------------------------
# The tracking save
#---------------------

 p3d_beg_desc_FORMmulti_track #- list of keypos robots and play_traj_robots
  p3d_add_list_robots "porte_2" 1 
  p3d_add_list_playtraj "MO_cube" 1 " 
  p3d_add_list_playtraj "MO_cylinder" 1 " 
  p3d_add_list_playtraj "MO_pyramide" 1 " 
p3d_end_desc #- End of desc_FORMmulti_track

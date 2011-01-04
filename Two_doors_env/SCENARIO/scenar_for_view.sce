#************************************************************
# Scenario of two_doors
#
# date : Thu Sep 23 17:24:40 2004
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

p3d_set_robot_view 531.000000 -1397.000000 -258.000000 4351.302913 2.023185 0.985000 0.000000 0.000000 1.000000 0.000000


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

#---- The collisions selected:

p3d_beg_desc_collision

   #---- The collisions with the environment:

  p3d_deactivate_all_env

   #---- The auto-collisions

  p3d_deactivate_all_pair

p3d_end_desc #- End of collision selection ----


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
  p3d_pos_xyz 	0.000000	0.000000	0.000000 \
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
  -276.000000 -276.000000 712.800000 712.800000 FALSE # Robot: assembler  Joint: base X
  -714.000000 -714.000000 60.000000 60.000000 FALSE # Robot: assembler  Joint: base Y
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

p3d_end_desc #- End of assembler ----


#===================================================
# Multi-robot description: porte_1

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "porte_1"
p3d_end_desc #- End of kinematic ----

p3d_set_name "porte_1" #- Multi-robot name ----


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
  p3d_pos_xyz 	0.000000	0.000000	-1000.000000 \
              	-0.000000	0.000000	-0.000000
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

p3d_end_desc #- End of porte_1 ----


#===================================================
# Multi-robot description: porte_2

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "porte_2"
p3d_end_desc #- End of kinematic ----

p3d_set_name "porte_2" #- Multi-robot name ----


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
  p3d_pos_xyz 	0.000000	0.000000	-10000.000000 \
              	-0.000000	0.000000	-0.000000
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

p3d_end_desc #- End of porte_2 ----


#===================================================
# Multi-robot description: MO_cube

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "MO_cube"
p3d_end_desc #- End of kinematic ----

p3d_set_name "MO_cube" #- Multi-robot name ----


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
  p3d_pos_xyz 	0.000000	0.000000	-3000.000000 \
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
  -200.000000 -200.000000 200.000000 200.000000 FALSE # Robot: MO_cube  Joint: base X
  -200.000000 -200.000000 200.000000 200.000000 FALSE # Robot: MO_cube  Joint: base Y
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: MO_cube  Joint: base Rz
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_end_desc #- End of MO_cube ----


#===================================================
# Multi-robot description: MO_cylinder

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "MO_cylinder"
p3d_end_desc #- End of kinematic ----

p3d_set_name "MO_cylinder" #- Multi-robot name ----


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
  p3d_pos_xyz 	0.000000	0.000000	-3000.000000 \
              	-0.000000	0.000000	-0.000000
  p3d_link_to P3D_MATRIX
p3d_end_desc #- End of first joint position ----


#- Degree of freedom use ------------
p3d_beg_desc_dof_use
#  min rand. | min val. |  max val. | max rand. | fixed in localpath
  0.000000 -3000.000000 -3000.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 X
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 Y
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 Z
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 Rx
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 Ry
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: MO_cylinder  Joint: J0 Rz
  -200.000000 -200.000000 200.000000 200.000000 FALSE # Robot: MO_cylinder  Joint: base X
  -200.000000 -200.000000 200.000000 200.000000 FALSE # Robot: MO_cylinder  Joint: base Y
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: MO_cylinder  Joint: base Rz
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_end_desc #- End of MO_cylinder ----


#===================================================
# Multi-robot description: MO_pyramide

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "MO_pyramide"
p3d_end_desc #- End of kinematic ----

p3d_set_name "MO_pyramide" #- Multi-robot name ----


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
  p3d_pos_xyz 	0.000000	0.000000	-300.000000 \
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
  -200.000000 -200.000000 200.000000 200.000000 FALSE # Robot: MO_pyramide  Joint: base X
  -200.000000 -200.000000 200.000000 200.000000 FALSE # Robot: MO_pyramide  Joint: base Y
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: MO_pyramide  Joint: base Rz
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

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
  p3d_set_param "assembler" "Default" # assembler (Default)
  p3d_set_dof_value\
	0.000000	0.000000	0.000000	0.000000\
	-0.000000	0.000000	685.333313	-180.000000\
	0.000000	1.178097	-1.323541	1.890774\
	2.661627	0.460573	0.261799	1.100000\
	0.900000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "porte_1" "Default" # porte_1 (Default)
  p3d_set_dof_value\
	0.000000	0.000000	-1000.000000	0.000000\
	-0.000000	0.000000	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "porte_2" "Default" # porte_2 (Default)
  p3d_set_dof_value\
	0.000000	0.000000	-10000.000000	0.000000\
	-0.000000	0.000000	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "MO_cube" "Default" # MO_cube (Default)
  p3d_set_dof_value\
	0.000000	0.000000	-3000.000000	0.000000\
	-0.000000	0.000000	0.000000	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "MO_cylinder" "Default" # MO_cylinder (Default)
  p3d_set_dof_value\
	0.000000	0.000000	-3000.000000	0.000000\
	-0.000000	0.000000	0.000000	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "MO_pyramide" "Default" # MO_pyramide (Default)
  p3d_set_dof_value\
	0.000000	0.000000	-300.000000	0.000000\
	-0.000000	0.000000	0.000000	0.000000\
	0.000000

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

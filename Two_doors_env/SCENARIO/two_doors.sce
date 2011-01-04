#************************************************************
# Scenario of two_doors
#
# date : Thu Feb 12 10:12:18 2004
#************************************************************

p3d_sel_desc_name P3D_ENV two_doors



p3d_sel_desc_name P3D_ROBOT assembler

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 120.000000 -180.000000 0.000000 0.000000 -115.000000 150.000000 0.000000 55.000000 0.000000 0.900000 0.900000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 120.000000 -180.000000 0.000000 0.000000 -115.000000 150.000000 0.000000 55.000000 0.000000 0.900000 0.900000




p3d_sel_desc_name P3D_ROBOT mobile_arm

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 28.000000 -28.000000 0.000000 0.000000 -115.000000 150.000000 0.000000 55.000000 0.000000 4.200000 4.200000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 28.000000 -28.000000 0.000000 0.000000 -115.000000 150.000000 0.000000 55.000000 0.000000 4.200000 4.200000




p3d_sel_desc_name P3D_ROBOT porte_1

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT porte_2

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT hil

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -140.000000 -140.000000 90.000000 0.000000 90.000000 90.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -140.000000 -140.000000 90.000000 0.000000 90.000000 90.000000 0.000000 0.000000 0.000000 0.000000 0.000000




#------------------------------------------------------------
# Planner:

p3d_set_NB_TRY 1000

p3d_col_set_dmax 7.211103


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

p3d_end_desc #- End of assembler ----


#===================================================
# Multi-robot description: mobile_arm

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "mobile_arm"
p3d_end_desc #- End of kinematic ----

p3d_set_name "mobile_arm" #- Multi-robot name ----


#----------------------------------------------
#- Multi-robot parameter: Default ----

p3d_beg_desc_param

p3d_set_name "Default" #- Parameter name ----

#- Component object ---------------

p3d_order_sub_robot_use \
           T "mobile_arm" "J0" \ # Joint
           T "mobile_arm" "base" \ # Joint
           T "mobile_arm" "arm 1" \ # Joint
           T "mobile_arm" "arm 2" \ # Joint
           T "mobile_arm" "arm 3" \ # Joint
           T "mobile_arm" "arm 4" \ # Joint
           T "mobile_arm" "arm 5" \ # Joint
           T "mobile_arm" "arm 6" \ # Joint
           T "mobile_arm" "grip right" \ # Joint
           T "mobile_arm" "grip left" \ # Joint



#- First joint list ------------

p3d_beg_desc_first_pos_joint #- position of the first joint ----
  p3d_joint "mobile_arm" 0 # Joint: J0
  p3d_pos_xyz 	0.000000	0.000000	0.000000 \
              	-0.000000	0.000000	-0.000000
  p3d_link_to P3D_MATRIX
p3d_end_desc #- End of first joint position ----


#- Degree of freedom use ------------
p3d_beg_desc_dof_use
#  min rand. | min val. |  max val. | max rand. | fixed in localpath
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: mobile_arm  Joint: J0 X
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: mobile_arm  Joint: J0 Y
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: mobile_arm  Joint: J0 Z
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: mobile_arm  Joint: J0 Rx
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: mobile_arm  Joint: J0 Ry
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: mobile_arm  Joint: J0 Rz
  -28.000000 -28.000000 28.000000 28.000000 FALSE # Robot: mobile_arm  Joint: base X
  -28.000000 -28.000000 28.000000 28.000000 FALSE # Robot: mobile_arm  Joint: base Y
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: mobile_arm  Joint: base Rz
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: mobile_arm  Joint: arm 1 Rot.
  -130.000000 -130.000000 130.000000 130.000000 FALSE # Robot: mobile_arm  Joint: arm 2 Rot.
  -150.000000 -150.000000 150.000000 150.000000 FALSE # Robot: mobile_arm  Joint: arm 3 Rot.
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: mobile_arm  Joint: arm 4 Rot.
  -95.000000 -95.000000 95.000000 95.000000 FALSE # Robot: mobile_arm  Joint: arm 5 Rot.
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: mobile_arm  Joint: arm 6 Rot.
  0.000000 0.000000 4.200000 4.200000 FALSE # Robot: mobile_arm  Joint: grip right Trans.
  0.000000 0.000000 4.200000 4.200000 FALSE # Robot: mobile_arm  Joint: grip left Trans.
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_end_desc #- End of mobile_arm ----


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
# Multi-robot description: hil

p3d_beg_desc_multi_robot

#---- The kinematic of the multi-robot:

p3d_beg_kin
   p3d_mono_robot "hil"
p3d_end_desc #- End of kinematic ----

p3d_set_name "hil" #- Multi-robot name ----

#---- The collisions selected:

p3d_beg_desc_collision

   #---- The auto-collisions

  p3d_activate_all_classical_pair
  p3d_deactivate_pair hil.arm4 hil.arm6
  p3d_deactivate_pair hil.arm7 hil.arm8

p3d_end_desc #- End of collision selection ----


#----------------------------------------------
#- Multi-robot parameter: Default ----

p3d_beg_desc_param

p3d_set_name "Default" #- Parameter name ----

#- Component object ---------------

p3d_order_sub_robot_use \
           T "hil" "J0" \ # Joint
           T "hil" "J1" \ # Joint
           T "hil" "J2" \ # Joint
           T "hil" "J3" \ # Joint
           T "hil" "J4" \ # Joint
           T "hil" "J5" \ # Joint
           T "hil" "J6" \ # Joint
           T "hil" "J7" \ # Joint
           T "hil" "J8" \ # Joint
           T "hil" "J9" \ # Joint



#- First joint list ------------

p3d_beg_desc_first_pos_joint #- position of the first joint ----
  p3d_joint "hil" 0 # Joint: J0
  p3d_pos_xyz 	0.000000	0.000000	5.000000 \
              	-0.000000	0.000000	-0.000000
  p3d_link_to P3D_MATRIX
p3d_end_desc #- End of first joint position ----


#- Degree of freedom use ------------
p3d_beg_desc_dof_use
#  min rand. | min val. |  max val. | max rand. | fixed in localpath
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: hil  Joint: J0 X
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: hil  Joint: J0 Y
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: hil  Joint: J0 Z
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: hil  Joint: J0 Rx
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: hil  Joint: J0 Ry
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: hil  Joint: J0 Rz
  -322.000000 -322.000000 831.600000 831.600000 FALSE # Robot: hil  Joint: J1 X
  -833.000000 -50.000000 280.000000 70.000000 FALSE # Robot: hil  Joint: J1 Y
  -180.000000 -180.000000 180.000000 180.000000 FALSE # Robot: hil  Joint: J1 Rz
  -120.000000 -120.000000 120.000000 120.000000 FALSE # Robot: hil  Joint: J2 Rot.
  0.000000 0.000000 145.000000 145.000000 FALSE # Robot: hil  Joint: J3 Rot.
  0.000000 0.000000 145.000000 145.000000 FALSE # Robot: hil  Joint: J4 Rot.
  -90.000000 -90.000000 90.000000 90.000000 FALSE # Robot: hil  Joint: J5 Rot.
  -90.000000 -90.000000 90.000000 90.000000 FALSE # Robot: hil  Joint: J6 Rot.
  -90.000000 -90.000000 90.000000 90.000000 FALSE # Robot: hil  Joint: J7 Rot.
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: hil  Joint: J8 Trans.
  0.000000 0.000000 0.000000 0.000000 FALSE # Robot: hil  Joint: J9 Trans.
p3d_end_desc


#- Local-path method ------------
p3d_type_localpath P3D_MR_LP_MONO Linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_end_desc #- End of hil ----


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
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-435.000000	285.000000\
	0.000000	-1.134464	0.315129	0.727221\
	0.000000	0.959931	0.000000	0.900000\
	0.900000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "mobile_arm" "Default" # mobile_arm (Default)
  p3d_set_dof_value\
	0.000000	0.000000	0.000000	0.000000\
	-0.000000	0.000000	28.000000	-28.000000\
	0.000000	0.000000	-2.007129	2.617994\
	0.000000	0.959931	0.000000	4.200000\
	4.200000

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
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	5.000000	0.000000\
	-0.000000	0.000000	-113.711121	245.625000\
	-0.479966	0.000000	1.570796	0.492086\
	-1.439897	0.000000	0.000000	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "porte_1" "Default" # porte_1 (Default)
  p3d_set_dof_value\
	-50.000000	10.000000	0.000000	0.000000\
	-0.000000	-3.141593	2.181662

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

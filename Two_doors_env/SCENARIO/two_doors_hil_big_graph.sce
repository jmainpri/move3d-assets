#************************************************************
# Scenario of two_doors
#
# date : Tue Mar  2 18:35:33 2004
#************************************************************

p3d_sel_desc_name P3D_ENV two_doors



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
p3d_set_robot_radius 100.000000

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -140.000000 -140.000000 90.000000 0.000000 90.000000 90.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -140.000000 -140.000000 90.000000 0.000000 90.000000 90.000000 0.000000 0.000000 0.000000 0.000000 0.000000




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


#------------------------------------------------------------
# Multi-robots:
#------------------------------------------------------------


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
  p3d_pos_xyz 	0.000000	0.000000	3.000000 \
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
  -430.000000 -430.000000 130.000000 130.000000 FALSE # Robot: hil  Joint: J1 X
  -70.000000 -70.000000 280.000000 280.000000 FALSE # Robot: hil  Joint: J1 Y
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
p3d_type_localpath P3D_MR_LP_MONO R&S+linear


#- Shooting method ------------
p3d_type_shoot P3D_MR_CLASSIC_SHOOT

p3d_end_desc #- End of parameter ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (0)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-395.000000	236.250000\
	0.000000	0.000000	0.369064	1.441109\
	-1.287180	0.589049	-0.523599	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (1)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	60.000000	139.027771\
	0.610865	-1.745329	0.000000	1.441109\
	-1.287180	0.589049	-0.523599	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (2)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-305.555542	0.486115\
	0.000000	0.000000	0.369064	1.441109\
	-1.287180	0.589049	-0.523599	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (3)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	83.333374	29.652771\
	1.745329	0.000000	0.000000	1.441109\
	-1.287180	0.589049	-0.523599	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (4)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-367.777771	211.944458\
	0.261799	0.000000	0.000000	1.441109\
	-1.287180	0.589049	-0.523599	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (5)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	60.000000	90.416672\
	1.701696	0.261799	0.685405	1.054470\
	-0.283616	0.589049	-0.523599	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (6)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	60.000000	90.416672\
	1.701696	0.261799	0.685405	1.054470\
	-0.283616	0.589049	-0.523599	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (7)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-406.666656	250.833344\
	-1.439897	0.261799	0.685405	1.054470\
	-0.283616	0.589049	-0.523599	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (8)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-196.666672	24.791672\
	-1.439897	0.261799	0.579958	0.896299\
	-1.352630	-0.021817	-0.261799	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (9)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	60.000000	124.444444\
	-0.376991	-2.008910	1.610463	1.362699\
	-0.277199	-0.413367	-0.614659	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (10)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	25.000000	176.296296\
	-1.382301	0.384685	0.020915	2.141385\
	0.461999	0.248020	-0.068295	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (11)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-185.000000	215.185185\
	2.387610	-1.923424	0.711113	0.209646\
	1.016398	0.744061	0.341477	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (12)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	95.000000	20.740741\
	-2.387610	-1.325025	0.941180	0.404317\
	1.201197	0.909408	0.478068	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (13)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-412.500000	137.407407\
	-1.130973	-0.726627	1.171246	0.598989\
	1.385997	1.074755	0.614659	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (14)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-272.500000	-44.074074\
	1.382301	0.470170	1.631378	0.988331\
	-1.375126	1.405449	0.887841	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (15)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	77.500000	228.148148\
	1.633628	-0.641141	0.271896	1.961688\
	-0.451128	-0.900706	-1.564858	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config hil Default (16)"
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-335.228271	-27.774052\
	2.947206	1.271050	0.942264	0.444375\
	-0.336292	1.210041	0.224297	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----


#----------------------------------------------
#- Multi-robot graph description: New graph 3 ----

p3d_beg_desc_graph

  p3d_set_name "New graph 3" #- Graph name ----

  p3d_set_type P3D_MR_GRAPH_CROSS #- Graph type ----

  p3d_set_param "hil" "Default"

p3d_end_desc #- End of graph ----

p3d_end_desc #- End of hil ----


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
	-0.000000	0.000000	-138.750000	125.972229\
	3.141593

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config MO_cube Default (1)"
  p3d_set_param "MO_cube" "Default" # MO_cube (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-405.000000	125.972229\
	3.141593

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config MO_cube Default (2)"
  p3d_set_param "MO_cube" "Default" # MO_cube (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-206.250000	125.972229\
	3.141593

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config MO_cube Default (3)"
  p3d_set_param "MO_cube" "Default" # MO_cube (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-93.750000	125.972229\
	3.141593

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Config MO_cube Default (4)"
  p3d_set_param "MO_cube" "Default" # MO_cube (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-315.000000	125.972229\
	3.141593

p3d_end_desc #- End of configuration ----

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

p3d_beg_graph_parameter_desc "hil" "New graph 3" #- Graph parameter of hil (New graph 3)

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
  p3d_set_param "hil" "Default" # hil (Default)
  p3d_set_dof_value\
	0.000000	0.000000	3.000000	0.000000\
	-0.000000	0.000000	-335.228271	-27.774052\
	2.947206	1.271050	0.942264	0.444375\
	-0.336292	1.210041	0.224297	0.000000\
	0.000000

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "MO_cube" "Default" # MO_cube (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-315.000000	-120.000000\
	3.141593

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "MO_cylinder" "Default" # MO_cylinder (Default)
  p3d_set_dof_value\
	0.000000	0.000000	30.000000	0.000000\
	-0.000000	0.000000	-95.000000	-120.000000\
	1.527163

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "MO_pyramide" "Default" # MO_pyramide (Default)
  p3d_set_dof_value\
	0.000000	0.000000	40.000000	0.000000\
	-0.000000	0.000000	-288.750000	-120.000000\
	0.698132

p3d_end_desc #- End of configuration ----

p3d_beg_desc_multi_config #- multi-robot configuration ----
  p3d_set_name "Active config"
  p3d_set_param "porte_2" "Default" # porte_2 (Default)
  p3d_set_dof_value\
	-50.000000	224.000000	0.000000	0.000000\
	-0.000000	-3.141593	2.181662

p3d_end_desc #- End of configuration ----

#----------------------------------------------
# The saved roadmap
#---------------------

p3d_load_graph_desc "GRAPH/two_doors.hil.big_graph.graph"

#----------------------------------------------
# The saved trajectories
#---------------------

#----------------------------------------------
# The tracking save
#---------------------

 p3d_beg_desc_FORMmulti_track #- list of keypos robots and play_traj_robots
  p3d_add_list_robots "MO_cube" 4 
p3d_end_desc #- End of desc_FORMmulti_track

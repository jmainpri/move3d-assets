#************************************************************
# Scenario of Ikea
#
# date : Wed May 11 18:36:50 2011
#************************************************************

p3d_sel_desc_name P3D_ENV Ikea



p3d_sel_desc_name P3D_ROBOT ACHILE_HUMAN1

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 1.146000 0.230000 0.763000 0.000000 0.000000 -160.776000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 55.572000 0.000000 0.000000 60.494000 25.398000 -80.280000 2.648000 -59.543000 0.000000 0.000000 -60.494000 -14.112000 -74.628000 0.000000 0.000000 -86.927373 0.000000 97.041538 0.000000 -10.114165 0.000000 0.000000 -86.927373 0.000000 97.041538 0.000000 -10.114165 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT ROBOT_JUSTIN

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -1.568000 -1.352000 -124.056000 -69.586000 -13.480000 79.879000 -66.399000 -1.327433 3.871682 -45.000000 -94.000000 -50.000000 115.000000 2.000000 14.000000 40.000000 42.789630 -99.882479 -5.746000 28.339367 18.468345 -30.606243 10.988447 -2.828000 -1.257000 0.975000 0.000000 0.000000 60.444000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -1.568000 -1.352000 -124.056000 -110.862000 -0.806000 66.864000 -66.058000 -1.327433 3.871682 -45.000000 -94.000000 -50.000000 115.000000 2.000000 14.000000 40.000000 38.028631 -107.273056 -44.914000 29.634102 30.596943 -41.908380 -15.720483 -2.278000 -0.393000 0.857000 0.000000 0.000000 16.704000


p3d_constraint p3d_kuka_arm_ik 6 18 19 21 22 23 24 1 29 0 3 20 -1 1
p3d_set_cntrt_Tatt 0 -0.982797 0.018403 -0.183754 -0.036039 -0.003530 0.992963 0.118341 -0.346482 0.184640 0.116955 -0.975819 -0.017708

p3d_constraint p3d_min_max_dofs 0 2 4 3 2 0.000000 135.000000 0

#p3d_constraint p3d_lin_rel_dofs 1 5 2 3 4 3 -1.000000 -1.000000 0.000000 0

p3d_constraint p3d_fixed_jnt 1 1 0 3 -1.568000 -1.352000 -124.056000 0

p3d_constraint p3d_fixed_jnt 1 7 0 1 -1.327433 0

p3d_constraint p3d_fixed_jnt 1 8 0 1 3.871682 0

p3d_constraint p3d_fixed_jnt 1 10 0 1 -45.000000 0

p3d_constraint p3d_fixed_jnt 1 11 0 1 -94.000000 0

p3d_constraint p3d_fixed_jnt 1 12 0 1 -50.000000 0

p3d_constraint p3d_fixed_jnt 1 13 0 1 115.000000 0

p3d_constraint p3d_fixed_jnt 1 14 0 1 2.000000 0

p3d_constraint p3d_fixed_jnt 1 15 0 1 14.000000 0

p3d_constraint p3d_fixed_jnt 1 16 0 1 40.000000 0

p3d_set_object_base_and_arm_constraints 29 1 0 1 0
p3d_set_arm_data 0 1 29
p3d_set_object_to_carry 0 Verre

p3d_sel_desc_name P3D_ROBOT Lampe

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -1.966568 1.622419 0.983776 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT Assiette

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.884956 -1.573254 0.787611 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT Pommes

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.442478 -1.622419 0.762537 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT Verre

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT Tabouret

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 1.207317 0.219512 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT legLamp

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.436000 0.693000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT sailLamp1

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.029268 0.263415 3.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT sailLamp2

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.029268 0.556098 3.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT sailLamp3

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.029268 0.848780 3.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_set_camera_pos -0.068686 -0.258955 0.995614 2.853974 5.531310 0.734375 0.000000 0.000000 1.000000 0.000000

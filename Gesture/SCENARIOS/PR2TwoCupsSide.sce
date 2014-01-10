#************************************************************
# Scenario of humanTestEnv
#
# date : Wed Mar  6 20:30:23 2013
#************************************************************

p3d_sel_desc_name P3D_ENV humanTestEnv



p3d_sel_desc_name P3D_ROBOT HERAKLES_HUMAN1

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.014000 -1.354000 0.809730 0.000000 0.000000 93.959349 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 84.132000 -13.500000 -1.296000 0.069068 19.616929 0.000000 0.000000 0.000000 0.000000 -76.896000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT PR2_ROBOT

p3d_set_robot_steering_method Multi-Localpath
p3d_set_robot_radius 1.000000

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.818000 -1.028000 0.000000 0.000000 0.000000 -162.288000 0.310000 0.000000 0.000000 0.000000 -54.064000 62.400000 -93.395000 -125.299000 -45.180000 -52.347013 103.284000 0.000000 0.000000 -4.966000 79.626000 83.104000 -54.144000 82.692000 -62.511000 179.153866 0.000000 0.000000 0.000000 0.000000 0.000000 0.616366 -1.048921 0.996053 -22.828506 -15.175900 -49.659493 0.749572 -0.866102 0.480933 -135.682860 -48.570426 -15.953141
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.818000 -1.028000 0.000000 0.000000 0.000000 -162.288000 0.310000 0.000000 0.000000 0.000000 -39.204000 8.610000 -96.718000 -21.746000 -45.180000 -52.347013 98.640000 0.000000 0.000000 -4.966000 79.626000 83.104000 -54.144000 82.692000 -62.511000 179.153866 0.000000 0.000000 0.000000 0.000000 0.000000 -0.056231 -0.750546 0.869242 44.354347 -14.096064 -120.266554 0.749572 -0.866102 0.480933 -135.682860 -48.570426 -15.953141
p3d_set_robot_config Config__1 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.818000 -1.028000 0.000000 0.000000 0.000000 -162.288000 0.310000 0.000000 0.000000 0.000000 -39.204000 8.610000 -96.718000 -21.746000 -45.180000 -52.347013 98.640000 0.000000 0.000000 -4.966000 79.626000 83.104000 -54.144000 82.692000 -62.511000 179.153866 0.000000 0.000000 0.000000 0.000000 0.000000 -0.056231 -0.750546 0.869242 44.354347 -14.096064 -120.266554 0.749572 -0.866102 0.480933 -135.682860 -48.570426 -15.953141


p3d_constraint p3d_lin_rel_dofs 1 15 1 14 2 1.000000 0.000000 0

p3d_constraint p3d_lin_rel_dofs 1 25 1 24 2 1.000000 0.000000 0

p3d_constraint p3d_pr2_arm_ik 7 6 7 9 10 11 12 13 1 32 0 1 8
p3d_set_cntrt_Tatt 2 1.000000 0.000000 0.000000 -0.180000 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000
p3d_set_cntrt_Tatt2 2 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000 1.000000 0.000000 0.000000 -0.180000

p3d_constraint p3d_pr2_arm_ik 7 16 17 19 20 21 22 23 1 33 0 1 18
p3d_set_cntrt_Tatt 3 1.000000 0.000000 0.000000 -0.180000 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000
p3d_set_cntrt_Tatt2 3 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000 1.000000 0.000000 0.000000 -0.180000

p3d_constraint p3d_fix_jnts_relpos 1 32 1 13 0 0
p3d_set_cntrt_Tatt 4 1.000000 0.000000 0.000000 0.180000 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000

p3d_constraint p3d_fix_jnts_relpos 1 33 1 23 0 0
p3d_set_cntrt_Tatt 5 1.000000 0.000000 0.000000 0.180000 0.000000 1.000000 0.000000 0.000000 0.000000 0.000000 1.000000 0.000000

p3d_set_object_base_and_arm_constraints 32 1 0 2 2 3
p3d_set_arm_data 2 3 32
p3d_set_arm_data 3 3 33


p3d_sel_desc_name P3D_ROBOT TABLE

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.362000 -0.720000 0.000000 0.000000 0.000000 -90.000000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT Cup1

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.231000 -0.804000 0.747000 0.000000 0.000000 43.056000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_sel_desc_name P3D_ROBOT Cup2

p3d_set_robot_steering_method Linear

p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -0.057000 -0.839000 0.730000 0.000000 0.000000 -15.840000
p3d_set_robot_goto 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000




p3d_set_camera_pos 0.446757 -0.949356 0.933155 1.781240 2.141250 0.996875 0.000000 0.000000 1.000000 0.000000

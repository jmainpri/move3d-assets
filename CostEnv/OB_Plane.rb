#!/usr/bin/env ruby

(puts "usage: #{$0} <output.p3d>"; exit 0) unless ARGV.length == 1

output = ARGV[0]

output_dir = output[0..-5]
Dir.chdir(output_dir)
output_base = File.basename(output_dir)
output_p3d = output_base + '.p3d'
output_ground = 'MACROS/' + output_base + '.macro.ground'
output_macro = 'MACROS/' + output_base + '.macro'
input_file = 'MACROS/OB_Plane.macro'

#(puts "#{output_file} already exists"; exit 0) if (File.ftype(output_file) rescue nil)

File.open(output_p3d, 'w') do |a_file|

  a_file.puts "p3d_beg_desc P3D_ENV #{output_base}"
  a_file.write '
 p3d_beg_desc P3D_ROBOT CylinderRob  
 p3d_beg_desc_jnt P3D_PLAN  
 p3d_set_pos_xyz 0.0 .0 0.0 0.0 0.0 0.0  
 p3d_set_prev_jnt 0  
 p3d_set_dof 0.0 0.0 0.0  
 p3d_set_dof_vmin -1.570796 -2.094395 0.0
 p3d_set_dof_vmax 1.570796 2.094395 0.0  
 p3d_end_desc  


 p3d_CostEnvironment

 p3d_beg_desc P3D_BODY body  
  
 p3d_add_desc_cylindre englobant 0.1 0.1 P3D_REAL  
 p3d_set_prim_pos englobant 0.0 0.0 0.1 0.0 0.0 0.0  
  
 p3d_end_desc #BODY  
  
 p3d_end_desc #ROBOT  

'
  a_file.puts " p3d_read_macro #{output_base}.macro OB_Plane"
  a_file.write '
p3d_end_desc

p3d_set_env_box -1.570796 1.570796 -2.094395 2.094395 0 3
p3d_set_robot_current 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 -1.570796 -2.094395 0.000000 
p3d_set_robot_goto    0.000000 0.000000 0.000000 0.000000 0.000000 0.000000 1.570796 2.094395 0.0 
'
end

input = []

File.open(input_file, "r") do |a_file|
  while a_file.gets
    input << $_
  end
end
puts "1" 
vertex = []
face = []
index = 4
while input[index] != "\n"
  vertex << input[index]
  index += 1
end
puts "1" 
index += 1
while input[index] != "    p3d_end_desc_poly\n"
  face << input[index]
  index += 1
end

puts "1" 
input.map! do |x| x == "\n" ? nil : x end
input.compact!

mat = ' ' + input[-3].split(/\s+/)[3..-1].join(' ')

File.open(output_macro, "w") do |output|
  output.puts <<P3D_FILE
  p3d_beg_desc P3D_OBSTACLE
    info_pos_by_mat P3D_OBSTACLE#{mat}

P3D_FILE

  face.size.times do |i|
    splat = face[i].split(/\s+/)
    output.puts '    p3d_add_desc_poly polyhedre' + (i + 1).to_s
    2.upto(4) { |j|
      output.puts vertex[splat[j].to_i - 1] }
    output.puts '    p3d_add_desc_face 1 2 3'
    output.puts '    p3d_end_desc_poly'
    output.puts '    p3d_set_prim_pos_by_mat polyhedre' + (i + 1).to_s + mat
    output.puts
  end
  output.puts 'p3d_end_desc'
  face.size.times do |i|
    output.puts
    output.puts 'p3d_set_obst_poly_color ' + (i + 1).to_s + ' Any 0.8 0.8 0.8'
  end
end

File.open(output_ground, "w") do |output|
  output.puts input[0]
  output.puts 'info_pos_by_mat polyhedre1' + mat
  input[1..-1].each do |a| output.puts a end
end

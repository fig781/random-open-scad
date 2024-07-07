$fa = 50;

rectangle_x = 52;
rectangle_y = 5.5;
rectangle_z = 9;

cutout_x = 1.9;
cutout_y = 4;
cutout_z = 12;


difference() {
    cube([rectangle_x,rectangle_y,rectangle_z], center=false);

    for(x = [1:1:20]) {
        translate([x*2.5 - 1, 0.7,0])
            cube([cutout_x, cutout_y, cutout_z], center=false);
    }
}

triangle_points1 = [
  [  -7,  0,  0 ],  //0
  [ 0,  0,  0 ],  //1
  [ 0,  rectangle_y,  0 ],  //2
  [  -7,  rectangle_y,  0 ],  //3
  [  -1,  0,  rectangle_z ],  //4
  [ 0,  0,  rectangle_z ],  //5
  [ 0,  rectangle_y,  rectangle_z ],  //6
  [  -1,  rectangle_y,  rectangle_z ]]; //7
  
triangle_face1 = [
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3]]; // left
  
polyhedron( triangle_points1, triangle_face1 );

triangle_points2 = [
  [  rectangle_x + 7,  0,  0 ],  //0
  [ rectangle_x,  0,  0 ],  //1
  [ rectangle_x,  rectangle_y,  0 ],  //2
  [  rectangle_x + 7,  rectangle_y,  0 ],  //3
  [  rectangle_x + 1,  0,  rectangle_z ],  //4
  [ rectangle_x,  0,  rectangle_z ],  //5
  [ rectangle_x,  rectangle_y,  rectangle_z ],  //6
  [  rectangle_x + 1,  rectangle_y,  rectangle_z ]]; //7
  
triangle_face2 = [
  [0,1,2,3],  // bottom
  [4,5,1,0],  // front
  [7,6,5,4],  // top
  [5,6,2,1],  // right
  [6,7,3,2],  // back
  [7,4,0,3]]; // left
  
polyhedron( triangle_points2, triangle_face2 );



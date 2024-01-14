program cross_product

  implicit none
  integer :: count
  character(len=32) :: arg
  character(len=32) :: x1, y1, z1, x2, y2, z2
  real :: x1f, y1f, z1f, x2f, y2f, z2f
  real :: cross_x, cross_y, cross_z
  count = command_argument_count()
  if (count==6) then
          call get_command_argument(1, x1)
          call get_command_argument(2, y1)
          call get_command_argument(3, z1)
          call get_command_argument(4, x2)
          call get_command_argument(5, y2)
          call get_command_argument(6, z2)
          read(x1, *) x1f
          read(y1, *) y1f
          read(z1, *) z1f
          read(x2, *) x2f
          read(y2, *) y2f
          read(z2, *) z2f
 
  else if (count==4) then
          call get_command_argument(1, x1)
          call get_command_argument(2, y1)
          call get_command_argument(3, x2)
          call get_command_argument(4, y2)
          read(x1, *) x1f
          read(y1, *) y1f
          read(x2, *) x2f
          read(y2, *) y2f
          z1f = 0.0
          z2f = 0.0
  
  else
          print *, "Invalid number of arguments. Exiting!"
          stop 1
  end if
  
  print *, count
  ! Read the vector components from the command line

  ! Calculate the cross product
  cross_x = y1f * z2f - z1f * y2f
  cross_y = z1f * x2f - x1f * z2f
  cross_z = x1f * y2f - y1f * x2f

  ! Print the result
  print *, "The cross product is:", cross_x, cross_y, cross_z

end program cross_product


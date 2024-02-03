program cross_product
  use :: xplib
  implicit none
  integer :: count
  character(len=32) :: x1, y1, z1, x2, y2, z2
  real, dimension(3) :: crp, va, vb
  count = command_argument_count()
  if (count == 6) then

    call get_command_argument(1, x1)
    call get_command_argument(2, y1)
    call get_command_argument(3, z1)
    call get_command_argument(4, x2)
    call get_command_argument(5, y2)
    call get_command_argument(6, z2)
    read (x1, *) va(1)
    read (y1, *) va(2)
    read (z1, *) va(3)
    read (x2, *) vb(1)
    read (y2, *) vb(2)
    read (z2, *) vb(3)

  else if (count == 4) then
    call get_command_argument(1, x1)
    call get_command_argument(2, y1)
    call get_command_argument(3, x2)
    call get_command_argument(4, y2)
    read (x1, *) va(1)
    read (y1, *) va(2)
    read (x2, *) vb(1)
    read (y2, *) vb(2)
    va(3) = 0.0
    vb(3) = 0.0

  else
    print *, "Invalid number of arguments. Exiting!"
    stop 1
  end if

  print *, count
  ! Read the vector components from the command line

  ! Calculate the cross product
  crp = crossproduct(va, vb)

  ! Print the result
  print *, "The cross product is:", crp(1), crp(2), crp(3)

end program cross_product


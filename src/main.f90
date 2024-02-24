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
    print *, "Usage: ./a.out 1 2 [3] 4 5 [6]"
    print *, "Arguments: "
    print *, "    1: A_x"
    print *, "    2: A_y"
    print *, "    3: A_z"
    print *, "    4: B_x"
    print *, "    5: B_y"
    print *, "    6: B_z"
    print *, "The cross product of the above 2 vectors will be returned"
    print *, "If only 4 arguments are given A_z and B_z assumed to be 0"
    stop 1
  end if

  ! Calculate the cross product
  crp = crossproduct(va, vb)

  ! Print the result
  print *, "The cross product is:", crp(1), crp(2), crp(3)

end program cross_product


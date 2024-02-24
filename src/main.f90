program cross_product
  use :: xplib
  implicit none
  integer :: count, n
  character(len=32),dimension(3) :: va_s, vb_s
  real, dimension(3) :: crp, va, vb
  count = command_argument_count()
  if (count == 6) then
    do n = 1,3
      call get_command_argument(n,va_s(n))
      read (va_s(n), *) va(n)
    end do
    do n = 1,3
      call get_command_argument(n+3,vb_s(n))
      read (vb_s(n), *) vb(n)
    end do

  else if (count == 4) then
    call get_command_argument(1, va_s(1))
    call get_command_argument(2, va_s(2))
    call get_command_argument(3, vb_s(1))
    call get_command_argument(4, vb_s(2))
    read (va_s(1), *) va(1)
    read (va_s(2), *) va(2)
    read (vb_s(1), *) vb(1)
    read (vb_s(2), *) vb(2)
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
    print *, "The cross product of vectors A and B will be returned"
    print *, "If only 4 arguments are given A_z and B_z assumed to be 0"
    stop 1
  end if

  ! Calculate the cross product
  crp = crossproduct(va, vb)

  ! Print the result
  print *, "The cross product is:", crp(1), crp(2), crp(3)

end program cross_product


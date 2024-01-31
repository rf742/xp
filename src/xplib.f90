module xplib
contains
  function crossproduct(x1,y1,z1,x2,y2,z2) result(r)
          real, intent(in)   :: x1,y1,z1,x2,y2,z2
          real, dimension(3) :: r
          real              :: crx, cry, crz
          crx = y1 * z2 - z1 * y2
          cry = z1 * x2 - x1 * z2
          crz = x1 * y2 - y1 * x2
          r = (/ crx, cry, crz /)
  end function
end module

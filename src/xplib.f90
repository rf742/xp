module xplib
contains
  function crossproduct(va, vb) result(r)
          !! Function to get cross product, given the components of two
          !! Vectors in \(R^3\)
    real, dimension(3), intent(in)   :: va, vb
    real, dimension(3) :: r
    real              :: crx, cry, crz
    crx = va(2)*vb(3) - va(3)*vb(2)
    cry = va(3)*vb(1) - va(1)*vb(3)
    crz = va(1)*vb(2) - va(2)*vb(1)
    r = (/crx, cry, crz/)
  end function
end module

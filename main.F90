program test
  use m_readinput, only: getInput
  implicit none

  integer :: myint
  logical :: mybool
  real(kind=4) :: myreal4
  real(kind=8) :: myreal8

  ! without default
  call getInput("block", "int", myint)

  ! with default
  call getInput("other_block", "bool", mybool, .true.)
  call getInput("other_block", "real4", myreal4, 2.2)
  call getInput("other_block", "real8", myreal8, 4.4d0)

  print *, myint, mybool, myreal4, myreal8
end program test

module fu_mDataType

    implicit none

    public

    !Integer types definition.
    integer, parameter :: fu_itype = 4                    !General integer kind.
    integer, parameter :: fu_i2b = selected_int_kind(3)   !2 bytes integer.
    integer, parameter :: fu_i4b = selected_int_kind(8)   !4 bytes integer.
    integer, parameter :: fu_i8b = selected_int_kind(10)  !8 bytes integer.
    !Real types definition.
    integer, parameter :: fu_rtype = 8                    !General real kind.
    integer, parameter :: fu_rsp = kind(1.0)              !4 bytes real. Single precision real.
    integer, parameter :: fu_rdp = kind(1.0d0)            !8 bytes real. Double precision real.
    integer, parameter :: fu_rspc = kind((1.0, 1.0))      !4 bytes complex real. Single precision complex real.
    integer, parameter :: fu_rdpc = kind((1.0d0, 1.0d0))  !8 bytes complex real. Double precisio complex real.
    !Logical type definition
    integer, parameter :: fu_lgtype = kind(.true.)        !logical type definition.
    !Character type definition
    integer, parameter   :: fu_chword=30                 !character length for words.
    integer, parameter   :: fu_chline =100                !character length for a phrasse
    integer, parameter   :: fu_chtext=3000               !character length for a whole text

end module

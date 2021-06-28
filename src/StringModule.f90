module fu_mString

! https://docs.oracle.com/javase/7/docs/api/java/lang/String.html

    use fu_mDataType, only: fu_lgtype, fu_itype

    implicit none

    private

    public :: fu_string

    public :: assignment(=), operator(==)

    character(len=28), parameter :: upperAlphabet = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ"
    character(len=28), parameter :: lowerAlphabet = "abcdefghijklmnñopqrstuvwxyz"

    type fu_string
        private
        character(len=:), allocatable :: text
        integer(fu_itype)             :: length

        contains

        procedure, public  :: getText                   => getText_fu_string
        procedure, public  :: getLength                 => getLength_fu_string
        procedure, public  :: charAt                    => charAt_fu_string
        procedure, private :: concatCharacter           => concatCharacter_fu_string
        procedure, private :: concatString              => concatString_fu_string
        generic, public    :: concat                    => concatString,&
                                                           concatCharacter
        procedure, private :: containsCharacter         => containsCharacter_fu_string
        procedure, private :: containsString            => containsString_fu_string
        generic, public    :: contains                  => containsCharacter,&
                                                           containsString
        procedure, private  :: endsWithCharacter        => endsWithCharacter_fu_string
        procedure, private  :: endsWithString           => endsWithString_fu_string
        generic, public     :: endsWith                 => endsWithCharacter,&
                                                           endsWithString
        procedure, private :: equalsToCharacter         => equalsToCharacter_fu_string
        procedure, private :: equalsToString            => equalsToString_fu_string
        generic, public    :: equals                    => equalsToCharacter,&
                                                           equalsToString
        procedure, private :: equalsIgnoreCaseCharacter => equalsIgnoreCaseCharacter_fu_string
        procedure, private :: equalsIgnoreCaseString    => equalsIgnoreCaseString_fu_string
        generic, public    :: equalsIgnoreCase          => equalsIgnoreCaseCharacter,&
                                                           equalsIgnoreCaseString
        procedure, public  :: isEmpty                   => isEmpty_fu_string
        procedure, public  :: upcase                    => upcase_fu_string
        procedure, public  :: downcase                  => downcase_fu_string
        procedure, private :: writeOnScreen             => writeOnScreen_fu_string
        procedure, private :: writeOnUnit               => writeOnUnit_fu_string
        generic, public    :: write                     => writeOnScreen,&
                                                           writeOnUnit

    end type

    ! -- Interfaces --
    interface fu_string
        module procedure initializerByDefault_fu_mString
        module procedure initializerByText_fu_mString
    end interface

    interface assignment(=)
        module procedure assignment_fu_mString
    end interface

    interface operator(==)
        module procedure equal_fu_mString
    end interface

    interface operator(+)
        module procedure addString_fu_mString
        module procedure addStringCharacter_fu_mString
        module procedure addCharacterString_fu_mString
    end interface

    interface operator(*)
        module procedure productStringScalar_fu_mString
        module procedure productScalarString_fu_mString
    end interface

!    interface operator(-)
!        module procedure substractionStringCharacter_fu_mString
!        module procedure substractionStringString_fu_mString
!    end interface

    interface write
        module procedure writeOnScreen_fu_mString
        module procedure writeOnUnit_fu_mString
    end interface

contains

    ! -- MODULE PROCEDURES --

    ! -- Initializers --
    function initializerByDefault_fu_mString() result(rstring)
        type(fu_string) :: rstring

        if (allocated(rstring%text)) deallocate(rstring%text)
        rstring%length = 0
    end function

    function initializerByText_fu_mString(text) result(rstring)
        character(len=*), intent(in) :: text
        type(fu_string)              :: rstring

        if (allocated(rstring%text)) deallocate(rstring%text)
        allocate(character(len=len(text)) :: rstring%text)
        rstring%text = text
        rstring%length = len(text)
    end function

    subroutine assignment_fu_mString(lhs, rhs)
        type(fu_string), intent(out) :: lhs
        type(fu_string), intent(in)   :: rhs

        lhs%length = rhs%length
        if (allocated(lhs%text)) deallocate(lhs%text)
        if (lhs%length > 0) then
            allocate(character(len=lhs%length) :: lhs%text)
            lhs%text = rhs%text
        endif
    end subroutine

    function equal_fu_mString(lhs, rhs) result(equals)
        type(fu_string), intent(in) :: lhs, rhs
        logical(fu_lgtype)          :: equals

        equals = .false.
        if (lhs%length /= rhs%length) return
        if (lhs%text /= rhs%text) return
        equals= .true.
    end function

    function addString_fu_mString(string1, string2) result(addition)
        type(fu_string), intent(in) :: string1, string2
        type(fu_string)             :: addition

        addition = fu_string(string1%text//string2%text)
    end function

    function addStringCharacter_fu_mString(string, text) result(addition)
        type(fu_string), intent(in)  :: string
        character(len=*), intent(in) :: text
        type(fu_string)              :: addition

        addition = fu_string(string%text//text)
    end function

    function addCharacterString_fu_mString(text, string) result(addition)
        character(len=*), intent(in) :: text
        type(fu_string), intent(in)  :: string
        type(fu_string)              :: addition

        addition = fu_string(text//string%text)
    end function

    function productStringScalar_fu_mString(string, scalar) result(sproduct)
        type(fu_string), intent(in)         :: string
        integer(fu_itype), intent(in)       :: scalar
        type(fu_string)                     :: sproduct

        character(len=scalar*string%length) :: text
        integer(fu_itype)                   :: i

        if (scalar == 0 .or. string%length == 0) then
            sproduct = fu_string()
            return
        endif

        text = string%text
        do i=2, scalar
            text = text//string%text
        enddo
        sproduct = fu_string(text)
    end function

    function productScalarString_fu_mString(scalar, string) result(sproduct)
        integer(fu_itype), intent(in) :: scalar
        type(fu_string), intent(in)   :: string
        type(fu_string)               :: sproduct

        sproduct = productStringScalar_fu_mString(string, scalar)
    end function

    subroutine writeOnScreen_fu_mString(string)
        type(fu_string), intent(in) :: string

        if (string%length < 1) return
        write(*,*) string%text
    end subroutine

    subroutine writeOnUnit_fu_mString(string, unit)
        type(fu_string), intent(in)   :: string
        integer(fu_itype), intent(in) :: unit

        if (string%length <1) return
        write(unit,*) string%text
    end subroutine

    ! -- TYPE BOUND PROCEDURES --

    function getText_fu_string(this) result(text)
        class(fu_string), intent(in)  :: this
        character(len=this%length)    :: text
        text = this%text
    end function

    function getLength_fu_string(this) result(length)
        class(fu_string), intent(in) :: this
        integer(fu_itype)            :: length
        length = this%length
    end function

    function charAt_fu_string(this, indexChar) result(charAt)
        class(fu_string), intent(in)   :: this
        integer(fu_itype), intent(in)  :: indexChar
        character(len=1)               :: charAt
        charAt = this%text(indexChar:indexChar)
    end function

    subroutine concatCharacter_fu_string(this, text)
        class(fu_string), intent(inout) :: this
        character(len=*), intent(in)    :: text
        this%length = this%length + len(text)
        this%text = this%text//text
    end subroutine

    subroutine concatString_fu_string(this, cstring)
        class(fu_string), intent(inout) :: this
        type(fu_string), intent(in)     :: cstring
        this%length = this%length + cstring%length
        this%text = this%text//cstring%text
    end subroutine

    function containsCharacter_fu_string(this, text) result(found)
        class(fu_string), intent(in) :: this
        character(len=*), intent(in) :: text
        logical(fu_lgtype)           :: found
        integer(fu_itype)            :: position

        found = .false.
        position = index(this%text, text)
        if (position > 0 ) found = .true.
    end function

    function containsString_fu_string(this, cstring) result(found)
        class(fu_string), intent(in) :: this
        type(fu_string), intent(in)  :: cstring
        logical(fu_lgtype)           :: found

        found = this%containsCharacter(cstring%text)
    end function

    function endsWithCharacter_fu_string(this, text) result(lend)
        class(fu_string), intent(in) :: this
        character(len=*), intent(in) :: text
        logical(fu_lgtype)           :: lend

        integer(fu_itype)            :: textLength,&
                                        start

        lend = .false.
        textLength = len(text)
        if (textLength <= 0) return
        if (textLength > this%length) return
        if (textLength == this%length) then
            if (text == this%text) lend = .true.
        else
            start = this%length - textLength
            if (this%text(start:this%length) == text) lend = .true.
        endif
    end function

    function endsWithString_fu_string(this, cstring) result(lend)
        class(fu_string), intent(in) :: this
        type(fu_string), intent(in)  :: cstring
        logical(fu_lgtype)           :: lend

        lend = this%endsWithCharacter(cstring%text)
    end function

    function equalsToCharacter_fu_string(this, text) result(equals)
        class(fu_string), intent(in) :: this
        character(len=*), intent(in) :: text
        logical(fu_lgtype)           :: equals

        equals = .false.
        if (len(text) /= this%length) return
        equals = text == this%text
    end function

    function equalsToString_fu_string(this, cstring) result(equals)
        class(fu_string), intent(in) :: this
        type(fu_string), intent(in)  :: cstring
        logical(fu_lgtype)           :: equals

        equals = this%equalsToCharacter(cstring%text)
    end function

    function equalsIgnoreCaseCharacter_fu_string(this, text) result(equals)
        class(fu_string), intent(in) :: this
        character(len=*), intent(in) :: text
        logical(fu_lgtype)           :: equals

        type(fu_string)              :: lhs, rhs

        lhs = fu_string(this%text)
        rhs = fu_string(text)
        call lhs%downcase()
        call rhs%downcase()
        equals = lhs == rhs
    end function

    function equalsIgnoreCaseString_fu_string(this, cstring) result(equals)
        class(fu_string), intent(in) :: this
        type(fu_string), intent(in)  :: cstring
        logical(fu_lgtype)           :: equals

        type(fu_string)              :: lhs, rhs

        lhs = fu_string(this%text)
        rhs = fu_string(cstring%text)
        call lhs%downcase()
        call rhs%downcase()
        equals = lhs == rhs
    end function

    function isEmpty_fu_string(this) result(empty)
        class(fu_string), intent(in) :: this
        logical(fu_lgtype)           :: empty

        empty = .true.
        if ( this%length > 0 ) empty = .false.
    end function

    subroutine upcase_fu_string(this)
        class(fu_string), intent(inout) :: this

        integer(fu_itype)               :: indexChar,&
                                           positionAlphabet
        character(len=1)                :: letter

        do indexChar=1, this%length
            letter = this%text(indexChar:indexChar)
            positionAlphabet = index(lowerAlphabet, letter)
            if (positionAlphabet > 0) this%text(indexChar:indexChar) = upperAlphabet(positionAlphabet:positionAlphabet)
        enddo
    end subroutine

    subroutine downcase_fu_string(this)
        class(fu_string), intent(inout) :: this

        integer(fu_itype)               :: indexChar,&
                                           positionAlphabet
        character(len=1)                :: letter

        do indexChar=1, this%length
            letter = this%text(indexChar:indexChar)
            positionAlphabet = index(upperAlphabet, letter)
            if (positionAlphabet > 0) this%text(indexChar:indexChar) = lowerAlphabet(positionAlphabet:positionAlphabet)
        enddo
    end subroutine

    subroutine writeOnScreen_fu_string(this)
        class(fu_string), intent(in) :: this
        write(*,*) this%text
    end subroutine

    subroutine writeOnUnit_fu_string(this, unit)
        class(fu_string), intent(in)  :: this
        integer(fu_itype), intent(in) :: unit
        write(unit, *) this%text
    end subroutine

end module

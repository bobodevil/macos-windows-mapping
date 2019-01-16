LAlt & x::Send ^x
LAlt & c::Send ^c
LAlt & v::Send ^v
LAlt & s::Send ^s
LAlt & w::Send ^w
LAlt & f::Send ^f
LAlt & t::Send ^t
LAlt & z::Send ^z
LAlt & r::Send ^r
LAlt & a::Send ^a
LAlt & g::Send ^g
LAlt & b::Send ^b
LAlt & `::Send !`t
Alt & LButton::Send ^{LButton}
LAlt & q::
KeyWait, q, T0.18
    If ErrorLevel
        {
            Send !{F4}
            sleep 1000
        }
Return  
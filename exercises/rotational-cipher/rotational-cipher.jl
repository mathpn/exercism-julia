function rotate(key::Int, char::Char)
    base = islowercase(char) ? 'a' : 'A'
    (char - base + key) % 26 + base
end

function rotate(key::Int, input::String)
    map(char -> isletter(char) ? rotate(key, char) : char, input)
end

for shift in 0:26
    macro_name = Symbol("R", string(shift), "_str")
    eval(quote(macro $macro_name(p) rotate($shift, p) end) end)
end
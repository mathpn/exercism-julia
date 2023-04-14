function secret_handshake(code)
    actions = []
    code & 0b01 > 0 && push!(actions, "wink")
    code & 0b10 > 0 && push!(actions, "double blink")
    code & 0b100 > 0 && push!(actions, "close your eyes")
    code & 0b1000 > 0 && push!(actions, "jump")
    code & 0b10000 > 0 && reverse!(actions)
    return actions
end

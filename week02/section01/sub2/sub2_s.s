.global sub2_s

# a0 and a1 contain the integers to be subtracted

sub2_s:
    sub a0, a0, a1        # more concise/idiomatic
    ret

# sub2_s:
#     sub t0, a0, a1      # t0 = a0 - a1
#     mv a0, t0           # set up ret val in a0
#     ret

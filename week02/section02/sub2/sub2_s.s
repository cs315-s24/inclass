.global sub2_s

sub2_s:
    sub t0, a0, a1      # t0 = a0 - a1
    mv a0, t0           # set up ret val in a0
    ret

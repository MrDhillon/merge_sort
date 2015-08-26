arr=[1,2,3,4,5,6]

def mergesort(arr)


    half_a = mergesort arr.slice(0,3)
    half_b = mergesort arr.slice(3,3)

    arr = []
    off_set_a = 0
    off_set_b = 0

    while off_set_a < half_a.count  &&  off_set_b < half_b.count
        a = half_a[off_set_a]
        b = half_b[off_set_b]

        if a <= b
            arr << a
            off_set_a += 1
        else
            arr << b
            off_set_b += 1
        end
    end

    while off_set_a < half_a.count
        arr << half_a[off_set_a]
        off_set_a += 1
    end
    while off_set_b < half_b
        arr << half_b[off_set_b]
        off_set_b += 1
    end

    return arr

end

mergesort(arr)
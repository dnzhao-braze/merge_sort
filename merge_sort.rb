def merge_sort(a)
  if a.length <= 1
    a
  else
    b = merge_sort(a[0..a.length/2-1])
    c = merge_sort(a[a.length/2..a.length-1])
    bi = 0
    ci = 0
    ai = 0
    while bi < b.length && ci < c.length
      if b[bi] < c[ci]
        a[ai] = b[bi]
        bi += 1
      else
        a[ai] = c[ci]
        ci += 1
      end
      ai += 1
    end
    if bi == b.length
      a[ai..a.length-1] = c[ci..c.length-1]
    else
      a[ai..a.length-1] = b[bi..b.length-1]
    end
    a
  end
end
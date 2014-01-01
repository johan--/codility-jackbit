def solution(a)
  return 1 if a.size == 0
  a.sort.each_with_index do |val,i|
    return (i+1) unless (i+1) == val
  end
  a.size + 1
end

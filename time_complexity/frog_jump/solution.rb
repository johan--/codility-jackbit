def solution(x, y, d)
  return 0 if x >= y 
  return 0 if [x,y,d].select{|i| !i.between?(1,1000000000)}.size > 0
  diff = (y-x)
  return 1 if diff < d
  time_jump = diff / d
  return time_jump if ((time_jump * d) + x) >= y
  time_jump + 1
end
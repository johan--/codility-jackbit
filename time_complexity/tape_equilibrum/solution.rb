def solution(a)
  total_left = 0
  total_right = a.inject(0){|sum,x| sum += x }
  result = []
  
  a.size.times do |p|
    total_left += a[p]
    total_right -= a[p]
    diff = (total_right - total_left).abs
    result.push(diff)
    result.sort!.pop if result.size > 1  
  end
  result.first
end

require 'yaml'
content = YAML.load_file(ARGV[0])

def print_zero_sums_combination(arr)
  arr.each do |e|
    sum = 0
    e.each do |inn_e|
      sum = sum + inn_e[1]
    end
    if sum == 0
      print e.each.map{|element| element[0]}
      return
    end
  end
  print 'not possible'
end

def find_all_combinations(arr)
  com = []
  (1..arr.size).map{|size| com.concat arr.combination(size).to_a }
  com
end

arr = find_all_combinations(content.to_a)
print_zero_sums_combination(arr)

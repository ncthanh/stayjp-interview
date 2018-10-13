def f (input)
  ranks = input.split(/[SHDC]/).reject(&:empty?)
  h = Hash.new(0)
  ranks.each { |r| h[r] += 1 }
  freq = h.values.sort.join
  case freq
  when "14" then "4C"
  when "23" then "FH"
  when "113" then "3C"
  when "122" then "2P"
  when "1112" then "1P"
  else
    "--"
  end
end

puts "input => output"
puts "D4C4C8D8S4 => #{f('D4C4C8D8S4')}"
puts "S8D3HQS3CQ => #{f('S8D3HQS3CQ')}"

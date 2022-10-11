# In the Ruby file, write a program to perform a GET request on the route https://coderbyte.com/api/challenges/json/age-counting which contains a data key and the value is a string which contains items in the format: key=STRING, age=INTEGER. Your goal is to count how many items exist that have an age equal to or greater than 50, and print this final value.

# Example Input
# {"data":"key=IAfpK, age=58, key=WNVdi, age=64, key=jp9zt, age=47"}

# Example Output
# 2

require 'net/http'
require 'uri'
require 'json'

uri = URI('https://coderbyte.com/api/challenges/json/age-counting')

response = Net::HTTP.get(uri)
results = JSON.parse(response)
data=results.fetch('data')
result = data.split(", ")
edades=[]
result.each do |i|
   if i.start_with?('age')
     n=i.split("=")
        n.each do |i|
           if i.to_i > 50
             edades.push(i.to_i)
           end
        end
    end
end
puts edades.count


                  


# class ComplexNumber
#     attr_reader :real, :img

#     @@addition_counter = 0
#     @@mulitplication_counter = 0

#     def initialize(real, img)
#       @real = real
#       @img = img
#     end
  
#     def +(cmplxNum)
#       @@addition_counter += 1
#       ComplexNumber.new(real + cmplxNum.real, img + cmplxNum.img)
#     end
  
#     def -(cmplxNum)
#       ComplexNumber.new(real - cmplxNum.real, img - cmplxNum.img)
#     end
  
#     def *(cmplxNum)
#       @@mulitplication_counter += 1
#       new_real = real * cmplxNum.real - img * cmplxNum.img
#       new_img = img * cmplxNum.real + real * cmplxNum.img
#       ComplexNumber.new(new_real, new_img)
#     end
  
#     def self.bulk_add(cmplxArr)
#         answer = cmplxArr.first
#         cmplxArr.drop(1).each do |cmplxNum|
#             answer += cmplxNum
#         end
#         answer
#     end
    
#     def self.bulk_multiply(cmplxArr)
#         answer = cmplxArr.first
#         cmplxArr.drop(1).each do |cmplxNum|
#             answer *= cmplxNum
#         end
#         answer
#     end
    
#     def to_s
#         "#{self.real} + #{self.img}i"
#     end

#     def self.get_stats()
#         puts "Number of addition operations: #{@@addition_counter}"
#         puts "Number of multiplication operations: #{@@mulitplication_counter}"
#     end
# end
# ############### The variables #######################
# cmplx1 = ComplexNumber.new(1,2)
# cmplx2 = ComplexNumber.new(1,1)
# cmplx3 = ComplexNumber.new(1,4)
# cmplx4 = ComplexNumber.new(7,2)
# ############### The operations #######################
# puts 'Testing ...'
# puts cmplx2 == cmplx1
# puts cmplx2 + cmplx4
# puts cmplx1*cmplx2
# puts cmplx1*cmplx3
# addArr = [cmplx1,cmplx2,cmplx3]
# puts ComplexNumber.bulk_add(addArr)
# multiArr = [cmplx1,cmplx4]
# ComplexNumber.bulk_multiply(multiArr)
# ############### The calculator stats #######################
# ComplexNumber.get_stats()

x = 5
unless x < 8
  x += 3
else 
    x += 2
end
puts x

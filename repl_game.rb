#
#
# puts "please enter a whole number:"
# user_number= gets.chomp.to_f
#
# final_number = (((2*user_number+10)/2))-user_number
#
#  puts "your number is: #{final_number}"

#juego la persona tiene que adivinar los 4 numberos que stan en el array secret_number
#el juego les dice si el numero esta pero no en la posicion que lo pusieron
#y tambien les dice si esta en la posicion que lo colocaron



puts "Welcome to the guessing game!"
puts "to play enter a 4 digit number and it will tell you if you get any of them right and if it is in the correct place"
puts "Also, the numbers can be repeated in the code"
puts "have fun guessing the secret combination!"

secret_number=[]

4.times do
secret_number << rand(9).to_s
end



def ask_for_input
 puts "please enter a 4 digit number"
 gets
end
arr = []

until arr == secret_number
  combo = ask_for_input
  arr = combo.scan /\w/
  intersection = (arr & secret_number).to_s
    if arr.length==4
      if arr == secret_number
        puts "You found the number!"
      else
          if not (secret_number&arr ).empty?
            puts "The numbers #{intersection} are in the code!"
          else
            puts "None of the numbers are in the code"
          end
          i=0
          while i<arr.length
            if arr[i]==secret_number[i]
              puts "#{arr[i]} is in its place!"
            end
            i+=1
          end
        end
    else
  "please enter a 4 digit number"
end
end

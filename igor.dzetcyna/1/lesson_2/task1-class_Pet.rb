class Pet
  attr_accessor(:name, :health, :eat, :play, :sleep)

    puts "Enter the name of the pet: "
    name = gets.chomp
    puts "Born #{name}"

   def initialize (health, eat, play, sleep)
     @health = health
     @play = eat
     @sleep = sleep
     @eat = play

     pet = Pet.new(100, 100, 100, 100)
     puts "\nHealthy\t#{pet.health}\nSatiety\t\t#{pet.eat}\nFatigue\t#{pet.sleep}\nInterest\t\t#{pet.play}"
     puts ""
     puts "Time passes..."

      begin
        puts "\n|Healthy\t#{pet.health -= rand(20)}|\n|Satiety\t#{pet.eat -= rand(20)}|\n|Fatigue\t#{pet.sleep -=rand(20)}|\n|Interest\t#{pet.play -= rand(20)}|"
        puts "\nWhat do you want to do with #{pet.name} ?
        1 - See a doctor
        2 - Feed
        3 - Put to sleep
        4 - Play
        Press Enter to do nothing ..."
      end

      if pet.health != 0
        action = gets.chomp.to_s

         case action

         when "1"
          print "You choose - 1 "
            if pet.health > 0
               pet.health = 100
            end
            pet.eat -= rand(20)
            pet.sleep -= rand(20)
            pet.play -= rand(20)
            print "#{pet.name} is being treated!"

         when "2"
          print "You choose - 2 "
            pet.health -= rand(20)
            if pet.eat > 0
               pet.eat = 100
            end
            pet.sleep -= rand(20)
            pet.play -= rand(20)
            print "#{pet.name} is eating!"

         when "3"
          print "You choose - 3 "
            pet.health -= rand(20)
            pet.eat -= rand(20)
            if pet.sleep > 0
               pet.sleep = 100
            end
            pet.play -= rand(20)
            print "#{pet.name} is sleeping!"

         when "4"
          print "You choose - 4 "
            pet.health -= rand(20)
            pet.eat -= rand(20)
            pet.sleep -= rand(20)
            if pet.play > 0
               pet.play = 100
            end
            print "#{pet.name} is playing!"

         when ""
          print "You have chosen to do nothing!"
            pet.health -= rand(20)
            pet.eat -= rand(20)
            pet.sleep -= rand(20)
            pet.play -= rand(20)

         else
          puts "You entered #{action}, something is wrong!"
          print "Try again! "
         end
      end

      if pet.health <= 0
           pet.health = 0
           print "\n\n#{pet.name} died of disease!!! End of the game!"
         elsif pet.eat <= 0
           pet.eat = 0
           print "\n\n#{pet.name} died of hunger!!! End of the game!"
         elsif pet.sleep <= 0
           pet.sleep = 0
           print "\n\n#{pet.name} died of insomnia!!! End of the game!"
         elsif pet.play <= 0
           pet.play = 0
           print "\n\n#{pet.name} died of boredom!!! End of the game!"
      end

     puts "\nHealthy\t#{pet.health}\nSatiety\t\t#{pet.eat}\nFatigue\t#{pet.sleep}\nInterest\t\t#{pet.play}"

   end
end
    # puts ""
    # puts("#{pet.name} is dead !!! End of the game!")

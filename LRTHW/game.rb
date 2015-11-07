$has_sword = false
$has_bow = false
$unarmed = false 

def choose_weapon

  puts "You awaken from a deep slumber. Your head hurts."
  puts "You are in a dark, musty room that smells of dirt and sweat."
  puts "Sunlight pierces a feeble wooden door at the end of the room."
  puts "You hear drums coming from outside, people cheering."
  puts "There is an array of weapons laid before you."

  puts "1: Take the sword."
  puts "2: Take the bow."
  puts "3: Leave the weapons alone."

  choice = $stdin.gets.chomp
  if choice.include?("1")
    $has_sword = true 
  elsif choice.include?("2")
    $has_bow = true
  else
    $unarmed = true
  end

  arena

end

def arena
  puts "You open the door and find yourself in a sand-filled arena."
  puts "A tall, masked man brandishing two daggers stands across from you."
  puts "You hear the sound of a gong, and the crowd roars mercilessly."
  puts "Your opponent unleashes a primal scream and charges toward you."

  puts "1: Cower in fear."
  puts "2: Steel yourself and prepare for combat."
  puts "3: Commit seppuku to retain your honor."

  choice = $stdin.gets.chomp

  if choice.include?("1")
    death("The coward dies a thousand deaths, a brave man dies but once. " +
          "Your opponent eviscerates you and the crowd cheers wildly.")
  elsif choice.include?("2") && $has_sword
    victory("You take a defensive stance and prepare for the charge. You " +
           "impale your opponent before his weapons can reach you.")
  elsif choice.include?("2") && $has_bow
    victory("You ready and arrow and aim for his torso. Your aim is true. " +
            "He slows...then stops... then falls.")
  elsif choice.include?("2") && $unarmed
    death("You square up against a dagger-wielding maniac with nothing but " +
          "your fists. There is a fine line between bravery and stupidity.")
  elsif choice.include?("3") && !$unarmed
    death("By retaining your honor, you have found victory in defeat. " +
          "Perhaps you will be remembered.")
  elsif choice.include?("3") && $unarmed
    death("The sword is the soul of the samurai. You are foolish for not " +
          "retaining your weapons. You are unable to retain your honor.")
  else
    death("You hesitate to act, and your opponent kills you.")
  end
end

def death(cause)
  puts cause
  puts "You die violently and are forgotten. Game over."
  exit(0)
end

def victory(cause)
  puts cause
  puts "You gain honor through glorious combat. You win!"
  exit(0)
end

choose_weapon

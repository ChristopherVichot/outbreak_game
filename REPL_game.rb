def menu_screen
  puts "
  _      __    __                     __         ____       __  __                __
  | | /| / /__ / /______  __ _  ___   / /____    / __ \\__ __/ /_/ /  _______ ___ _/ /__
  | |/ |/ / -_) / __/ _ \\/  ' \\/ -_) / __/ _ \\  / /_/ / // / __/ _ \\/ __/ -_) _ `/  '_/
  |__/|__/\\__/_/\\__/\\___/_/_/_/\\__/  \\__/\\___/  \\____/\\_,_/\\__/_.__/_/  \\__/\\_,_/_/\\_\\
  "
  start_game

end
def start_game #starts game
  puts "\nType 'Start game' to continue, or exit to leave program"
  print "> "
  start = validate_start
  if start == 'start game'
    lab_room
  else
    game_over
  end
end


def lab_room #start of the game
  puts "\nYou're in a laboratory working on some genetic samples when all of a sudden
  the alarm system starts roaring through the entire facility."
  puts "\n The PA turns on 'All staff immediatley evacuate the building Quarantine
  area C has been breached...God help us.'"
  puts "\n Inside the lab there are some chemicals, a fragile wooden chair, and the exit
  behind you."
  puts "\nWhat do you want to do?"
  puts "\noptions: [M]ix some chemicals, [E]xamine the chair, [R]un out the exit"
  puts "\n Use the first letter of each option to confirm what you want to do."
  lab_room_options #switches into lab_room_options
end



def lab_room_options # first area of the game
  print "> "
  lab = gets.chomp.downcase
  validate_input lab
  case lab
  when 'm' #mix some chemicals
    puts "\nWith the limited time you have till the infected break down the door
    you rush to your table and accidently mix Hydrogen and Nitric acid causing
    an explosion and knocking yourself unconscious."
    puts "\n The infected break down the door."
    puts "\nYou died"
    puts "\nTry Again? (y/n)"
    print "> "
    tryagain = gets.chomp.downcase
    validate_try_again tryagain
    if tryagain == 'y'
      menu_screen
    else
      game_over
    end
  when "r" #run out the exit
    puts "\nYou make a dash to the exit carefully going around the tables filled
    with chemicals."
    puts "\nYou open the door and start running down the corridor."
    puts "While you run down the corridor a door bursts open."
    puts "An infected runs out the door and manages to tackle you down to the ground."
    puts "You try to wrestle the infected off of you but he manages to bite down into
    your jugular."
    puts "\nYou died"
    puts "\nTry Again? (y/n)"
    print "> "
    tryagain = gets.chomp.downcase
    validate_try_again tryagain
    if tryagain =='y'
      menu_screen
    else
      game_over
    end
  when "e" #examine chair
    puts "\nThe chair looks fragile after it's many years in use. With a little force
    you can probably break it and use a piece as a weapon."
    puts "\n What do you want to do?"
    puts "\noptions: [T]ry to kick the leg off the chair"
    print "> "
    chair = gets.chomp.downcase
    validate_input chair
    if chair == 't' #break chair
      puts "You use all your force to kick off the leg"
      puts "You now have a chair leg to use as a weapon"
      puts "\nChair leg in hand you dash to the exit leading you down a corridor.
      To your left is a map of the facility with a clear visual on where the
      emergency exits are."
      puts "\nThe map says to run down the north corridor to reach the closest
      emergency exit."
      puts "\nWhile studying the map you hear loud footsteps approaching you.
      It's your co-worker
      John sprinting down the corridor he trips and falls, looks at you eyes
      blood shot and says 'RUUUUUUUN!!'
      a horde of infected follow close behind."
      puts "\nWhat do you want to do?"
      puts "options: [H]elp John up, [L]eave him behind"
      north_corridor
    else
      game_over
    end
  end
end

def north_corridor
  print "> "
  corridor = gets.chomp.downcase
  validate_input corridor
  case corridor
  when "h" #help john
    puts "\nYou sprint up the corridor trying to reach John as fast as possible
  when you finally get to him you manage to get him up and both of you sprint
    north to the exit
    but slip into a room and barricade the door while you wait for the horde
    to pass by."
    puts "\nBoth of you take time to catch your breath...After a couple of minutes
    you ask John
    'That was pretty close, how you holding up?'"
    puts "\nJohn slowly turns around making erratic movements. You look into his
    eyes which are now
    almost completely purple, his breathing become more and more aggressive."
    puts "\nHe leaps at you bringing you down to the ground, you start to push him
    off with your left hand and
    with your right hand you bring up the chair leg and with all the force you can
    muster hit him over the head."
    puts "\nJohn stops all movement...You push him off and stand up to catch your
    breath with tears in eyes."
    puts "While your guard is down John rises up and bites your neck."
    puts "\nYou died"
    puts "\nTry Again? (y/n)"
    print "> "
    tryagain = gets.chomp.downcase
    validate_try_again tryagain
    if tryagain == 'y'
      menu_screen
    else
      game_over
    end
  when "l" #let john die
    puts "You take John's advice and start to run as fast as you can.
    a bit farther up the corridor an infected bursts through one of the doors
    and tackles you to the ground"
    puts "What do you want to do?"
    puts "options: [P]ush him off, [S]mash his head open with your chair leg"
    corridor_fight
  end
end

def corridor_fight
  print "> "
  fight = gets.chomp.downcase
  validate_input fight
  case fight
  when "p"
    puts "\nYou manage to push the infected off you but as you start to regain your
    balance he grabs hold of your ankle and bites on your achilles tendon you fall
    down in agonizing pain and wait till the horde arrives to finish you off"
    puts "You died"
    puts "Try again? (y/n)"
    tryagain = gets.chomp.downcase
    validate_try_again tryagain
    if tryagain == 'y'
      menu_screen
    else
      game_over
    end
  when "s"
    puts "You use all your strength to smash down on his head...rage consumes you
    and you keep smashing down till the brain is destroyed. You feel sick. You don't
    have time to feel sick. You continue to run towards the exit."
    puts "\nYou can finally see sunlight coming through the exit door. When you make it
    outside you see an abandoned house where you quickly run too and hide in while you
    wait for the horde to pass by."
    puts "\nThey pass by without a hitch. You take out your cellphone and attempt to call
    the police but their's no signal. You decide to stay the night here and regain your energy."
    puts "\nYou survived day one."
    end_screen
  end
end

def end_screen
  puts "
  ______       __                       __  _                  __
  /_  __/__    / /  ___   _______  ___  / /_(_)__  __ _____ ___/ /
   / / / _ \\  / _ \\/ -_) / __/ _ \\/ _ \\/ __/ / _ \\/ // / -_) _  /
  /_/  \\___/ /_.__/\\__/  \\__/\\___/_//_/\\__/_/_//_/\\_,_/\\__/\\_,_/

  "
end


def game_over
  puts "\nGame Over 'exit' to leave program"
  over = gets.chomp.downcase
end

def validate_input(input)
  allowed = %w[m r e t h l p s]
  return input if allowed.include? input

  print "Stay focused, input the right options: "
  attempt = gets.chomp.downcase
  validate_input(attempt)
end

def validate_try_again(input)
  try = %w[y n]
  return input if try.include? input

  print "Please input y or n"
  attempt = gets.chomp.downcase
  validate_try_again(attempt)
end

def validate_start
  input = gets.chomp.downcase
  game = ["start game", "exit"]
  return input if game.include? input

  print "That option doesn't exist! Please type Start game to continue or Exit to leave the program\n"
  validate_start
end
menu_screen

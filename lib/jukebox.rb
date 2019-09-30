def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{songs[index]}"
  end
end

def user_input
  gets.strip
end

def play(songs)
  puts "Please enter a song name or number:"
  thing_to_say = "Invalid input, please try again"
  song_name_or_number = user_input
  songs.each_with_index do |song, index|
    if song_name_or_number == song || song_name_or_number.to_i == (index + 1)
      thing_to_say = "Playing #{songs[index]}"
    end
  end
  puts thing_to_say
end

def exit_jukebox
  puts "Goodbye"
end

def try_again
  puts "Please enter a command:"
  gets.strip
end

def run(songs)
  user_command = try_again
  while user_command != "exit"
    case user_command
    when "help"
      help
      user_command = try_again
    when "list"
      list(songs)
      user_command = try_again
    when "play"
      play(songs)
      user_command = try_again
    else
      user_command = try_again
    end
  end
  exit_jukebox
end

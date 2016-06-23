songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(song_list)
  song_list.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end


def play(song_list)
  puts "Please enter a song name or number:"
  users_choice = gets.chomp

  if (1..9).include?(users_choice.to_i)
    puts "Playing #{song_list[users_choice.to_i-1]}"
  elsif song_list.include?(users_choice)
    puts "Playing #{users_choice}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox()
  puts "Goodbye"
end


def run(songs)
  help()

  puts "Please enter a command:"

  users_command = gets.chomp

  loop do
    case users_command
    when "help"
      help
      users_command = gets.chomp
    when "list"
      list(songs)
      users_command = gets.chomp

    when "play"
      play(songs)
      users_command = gets.chomp

    when "exit"
      exit_jukebox
      break
    end
  end
end
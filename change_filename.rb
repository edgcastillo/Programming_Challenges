=begin
	This app will open the Coderbyte folder and rename all the coderbyte exercises ex: exercise_name[difficulty].rb
=end
filenames = []
  Dir.glob('**/Coderbyte/*{rb}') do |file|
  	filenames << file
  end

filenames.each do |filename|
	new_filename = filename[0..-4].to_s + "[EASY]" + filename[-3..-1].to_s
    File.rename(filename, new_filename)
end
class Converter
  def initialize

  end

  def fahrenheit(temperature)
    # $stdout.write ("this is temperature #{temperature}\n")
    @f = (temperature - 32.0) * (5.0/9.0)
    # $stdout.write ("this is temperature #{@f}\n")
    $stdout.write("The temperature in celcius is #{@f}\n")
  end

  def celcius(temperature)
   $stdout.write ("this is temperature #{temperature}\n")
  @c = temperature
  @c = (temperature * (9.0/5.0)) + 32.0
    $stdout.write("The temperature in fahrenheit is #{@c}\n")
  end
end

$stdout.write ("This is the temperature conversion program\n")

@aa=Converter.new

loop do
  $stdout.write("Choose either Fahrenheit, Celcius, or Quit :")
  answer = $stdin.gets.chomp
  answer = answer.capitalize
  puts ("You said: #{answer}")

  $stdout.write("Enter a temperature :")
  answer2 = $stdin.gets
  temperature = answer2.to_f

  if answer == "Fahrenheit"
  @aa.fahrenheit(temperature)
  elsif answer == "Celcius"
  @aa.celcius(temperature)
  elsif answer == "Quit" then
    break
  end
end

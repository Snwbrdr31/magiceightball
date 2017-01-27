# User input questions
#Computer outputs random question
#User inputs "Quit"
#Comput outputs a goodbye message and exits.

puts "Welcome to the magic eight ball?"



 @responses = [
    'Your ugly',
    'Go see your doctor',
    'You need some serious help',
    'I cant help your with that',
    'What do you think about the situation',
    'Can the chicken cross the road, I didnt think so',
    'I dont have the answer to that',
    'Your a rotten tomato',
    'This might be the case',
    'I didnt understand the question',
    'What did you say?',
    'The answer is no!',
    'What dont your get?',
    'Why are  your asking me?',
    'Probably',
    'A Definite yes',
    'I think you should',
    'Bad choice',
    'Dont ask',
    'Yes',
    'Maybe',
    'No',
    'There is a slight possibility',
    'The answer may be yes',
    'Are you sure you want to know the answer',
    'I was thinking the same thing'

  ]


@add_answers = []

 def question_response
    puts "Type a question to get a answer, or type the QUIT to end the program"
    input = gets.chomp

    if input == 'QUIT'
      exit_program
    elsif input == 'add_answer'
      add_answer
    else
      puts [@responses, @add_answers].flatten.sample
    end
  end

  def add_answer
    puts "What is your answer"
    input = gets.chomp
    if @add_answers.include? input
      puts 'Already added'
    else
      @add_answers << input
    end
    question_response
  end

   def exit_program
     puts "Have a nice day"

  end
  question_response

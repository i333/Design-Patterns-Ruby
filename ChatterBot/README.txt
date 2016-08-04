CS342 Design Patterns
Fall 2015
PROJECT 1 README FILE


Due Date: 5:00 p.m., October 23, 2015
Submission Date: October 22, 2015
Author(s): Utku Dora Ozdemir
e-mail(s): uozdemi1@binghamton.edu

PURPOSE:
The purpose of this software is to demonstrate ability to understand and use Template, Strategy and Observer Design patterns. This software reads files and creates Chatter bots to interact with the user. The answer capability of the bots are limited to the text file their knowledge base defined. Chatbots observe users responses and get individual responses from user. Chatbots can decide to answer in their knowledge base, change subject, end conversation. 


FILES:
ResponseStrategy.rb, MatchedResponse.rb, EndResponse.rb, QuestionResponse.rb, AvoidResponse.rb, User.rb, chatter.txt, SadChatter.txt, Script.txt, hw2.rb(main) , ChatterTemplate.rb, HappyBot.rb, SadBot.rb, ReaderBot.rb, README.txt


SAMPLE OUTPUT:

Hello, what’s your name?
My name is Happybot
How are you?
Life is fantastic! I've never been happier.
Is that because you are a computer?
 That's a pretty good reason if I do say so myself.
I like this conversation.
I don’t. Don’t you think it’s overrated?
How does that make you feel?
I think it just takes a lot of patience.
I’ve seen an armadillo.
I have to know, what’s your favorite movie?
If that is true, then what?
But that's not very likely, right?
Do you like this conversation?
Let me think...Yes, I do. You?
How are you going to handle that?
 I cant complain. How about you?
I can not believe that is true.
Yes you can! Just concentrate!
Goodbye.
Well that was nice talking to you but I have to go now
Hello My name is Happybot
response to HappyBot :
how are you 
Life is fantastic! I've never been happier.
Hello I am SadBot, my cat just died I am so Sad
response to SadBot :
why are you sad?
Because my cat is dead.
response to HappyBot :
oh sorry about that
 What kind of music do you wish you were listening to right now?
response to SadBot :
rock
Well that was nice talking to you but I have to go now
response to HappyBot :
how well do you know sadBot?
Very well. But tell me about yours first. 
response to HappyBot :
mine?
Interesting, tell me what you think first.
response to HappyBot :
you are not that smart
 What kind of music do you wish you were listening to right now?
response to HappyBot :
pff all the same :(
 Just curious, what’s your favorite thing about being a kid?
response to HappyBot :
bye
Well that was nice talking to you but I have to go now



TO RUN:
Go to the directory and write ruby hw2.rb in the terminal.

EXTRA CREDIT:
My homework can deal with multiple chatter bots at the same time. 


MISCELLANEOUS:
The user can interact with multiple bots at the same time. User has to respond to each bot in turns if user selects to keep talking to two bots.

#!/usr/bin/env python3
# Very first python mini-project after finishing the course
# Guess a number from 1 to 10.
# Five attempts given.
# Score - full score is 10 and every incorrect guess takes away 2 points
# After 5 wrong guesses in a row, the game will end.

import random

class game:
    
    menu = ('''
        Select option and press Enter:
        1. Continue playing
        2. Reset total score and play a new game
        3. Exit game\n''')

    messages = dict(guessing = 'Enter your guess: ',
                    correct = 'Correct!\n',
                    incorrect = 'Incorrect. Attempts left: ',
                    end = '\nYour total score is: ',
                    game_over = 'Game over! your score is:',
                    continue_game = 'Great! Let\'s continue!\n ')

    score = (10, 8, 6, 4, 2, 0)

    def init(self, new_game = True, total_score = 0):

        if new_game == False:         # Reset score if it's a new game
            option =  input(self.menu)
            if   option == '1': print(self.messages['continue_game'])
            elif option == '2': total_score = 0
            else: exit()      
            
        return total_score
    
    
    def play(self, total_score):
        number = random.randint(1,10) # Includes 10
        print(number)
        incorrect = True
        count = 0
        end_flag = False
 
        while True:
            guess = int(input(self.messages['guessing']))
                   
            if guess == number:
                print(self.messages['correct'])
                break
            else:
                print(self.messages['incorrect'] + f'{4 - count}\n')
            
            count += 1
            if count == 5:
                end_flag = True       # After 5 failed guesses set the flag to exit the game
                break
        
        total_score += self.score[count]
        print(self.messages['end'] + f'{total_score}')
        if end_flag: exit()
        return total_score


def main():
    total_score = game().init()       # For the very first game don't show the menu

    while True:
        total_score = game().play(total_score)
        total_score = game().init(False, total_score)
    
if __name__ == '__main__': main()

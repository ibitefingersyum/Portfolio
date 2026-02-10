print("Guess between 0-100")

import random

answer = random.randint(0, 100)
tries = 0

guess = int(input("Enter input: "))
tries += 1

while guess != answer:
    if guess > answer:
        print("You guessed too high.")
    else:
        print("You guessed too low.")

    guess = int(input("Enter input: "))
    tries += 1

print(f"You guessed correctly in {tries} tries!")

import re
import textwrap






# DO NOT LOOK AT STORIES BEFOREHAND.





# DO NOT LOOK AT STORIES BEFOREHAND.





# DO NOT LOOK AT STORIES BEFOREHAND.





# DO NOT LOOK AT STORIES BEFOREHAND.





# DO NOT LOOK AT STORIES BEFOREHAND.







# STORIES INCOMING




# STORIES INCOMING




# STORIES INCOMING




# STORIES INCOMING




# STORIES INCOMING




# STORIES HERE




# STORIES HERE




# STORIES HERE






STORIES = [
    "The very {adjective} {noun} {actionverb} (ed) {noun2}",  # 1
    "{Person} commited {crime} which involved {Person2} ",  # 2
    " Your New Username: {Enter_xxx_Optional} {Color_or_trait} {Animal_or_Fruit} {Random_4_Digit_Number} {Enter_xxx_Optional} ", # 3
    " You picked: {Rock_Paper_Scissors}. I picked: Paper. | Play again? (Go to 5) ",  # 4
    " You picked: {Rock_Paper_Scissors}. I picked: Paper. | Play again? (Go to 6) ",  # 5
    " You picked: {Rock_Paper_Scissors}. I picked: Paper. | Good Game! (ez)", # 6
    " {Major_Event_In_History} never happened. ", # 7
    " I hate {The_Person_or_Thing_You_Love_Most}.", # 8
    " {Sound} {Person} went {temp3} ", # 10
    " {temp1} {temp2} {temp3} ", #11
    " {temp1} {temp2} {temp3} ", #12
    " {temp1} {temp2} {temp3} ", #13
    " {temp1} {temp2} {temp3} ", #14
    " {temp1} {temp2} {temp3} ", #15
]

def pick_story():
    print("pick a story\n")

    for i in range(len(STORIES)):
        print(f"{i + 1}. story {i + 1}")

    while True:
        choice = input("\nnumber pls: ")
        if choice.isdigit():
            choice = int(choice)
            if 1 <= choice <= len(STORIES):
                return STORIES[choice - 1]
        print("no. try again.")

def find_words(story):
    return re.findall(r"{(\w+)}", story)

def askforwords(words):
    answers = {}
    for w in words:
        prompt = f"gimme a(n) {w}: "
        answers[w] = input(prompt)
    return answers

def wordsintostory(story, answers):
    return story.format(**answers)

def pretty_print(story):
    print(textwrap.fill(story, 50))

def main():
    story = pick_story()
    words = find_words(story)
    answers = askforwords(words)
    final_story = wordsintostory(story, answers)
    pretty_print(final_story)

if __name__ == "__main__":
    main()

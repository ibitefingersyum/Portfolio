# I used AI, my code was broken and had no clue how to fix it.

Vowel = "aeiou"


def pig_latin(word):

    word = word.strip()
    if word == "":
        return ""

    word = word.lower()
    if word[0] in Vowel:
        return word + "yay"
    else:
        for i, letter in enumerate(word):
            if letter in Vowel:
                return word[i:] + word[:i] + "ey"
        return word + "ey"


def main():
    word = input("Enter a word: ")
    pig_latin_word = pig_latin(word)
    print(f"Pig Latin: {pig_latin_word}")


if __name__ == "__main__":
    main()

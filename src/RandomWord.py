import random

prefixes = ["anti-","de-","dis-","en-","em-","fore-","in-","im-","il-","ir-","inter-","mid-","mis-","non-","over-","pre-","re-","semi-","sub-","super-","trans-","un-","under-"] *20
roots    = ["ambi","aqua","aud","bene","cent","circum","contra","counter","dict","duc","duct","fac","form","fort","fract","ject","jud","mal","mater","mit","mort","multi","pater","port","rupt","scrib","scribe","sect","sec","sent","spect","struct","vid","vis","voc"] * 20
suffixes = ["-able", "-ible", "-al", "-ial", "-ed", "-en", "-er", "-or", "-est", "-ful", "-ic", "-ing", "-ion", "-tion", "-ation", "-ity", "-ty", "-ive", "-ative", "-itive", "-less", "-ment", "-ness", "-ous", "-eous", "-ious", "-s", "-es", "-y"] * 20

def makeword():

    idx = random.randint(0, len(prefixes) - 1)
    prefix = prefixes[idx]
    idx = random.randint(0, len(roots) - 1)
    root = roots[idx]
    idx = random.randint(0, len(suffixes) - 1)
    suffix = suffixes[idx]

    word = prefix + root + suffix

    definition =(
        f"{word}: prefix '{prefix}', "
        f" root '{root}', suffix '{suffix}'; "
    )
    return word,definition

def main():
    try:
        count = int(input("How many? ").strip())
        if count <= 0:
            print("Enter a POSITIVE number.")
            return
    except ValueError:
        print("BAD INPUT, NUMBERS ONLY.")
        return

    for i in range(count):
        word, definition = makeword()
        print(f"{i+1}. {word}")
        print(f"   {definition}")

if __name__ == "__main__":
    main()
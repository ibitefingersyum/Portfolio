n = 99
a = 0
b = 99
next = b  
count = 1
while count <= n:
    print(f"{next} bottles of beer on the wall, {next} bottles of beer.")
    print(f"Take one down, pass it around, {next - 1} bottles of beer on the wall.\n")
    count += 1
    a, b = b, next
    next = b - 1
    if next <= 0:
        print("No more bottles of beer on the wall, no more bottles of beer.")
        print("Go to the store and buy some more, 99 bottles of beer on the wall.")
        break
    
# print("No more bottles of beer on the wall, no more bottles of beer.")
#print("Go to the store and buy some more, 99 bottles of beer on the wall.")

#Counts to 0 beers and the number is editable at the top. I don’t know how to make it stop at 1.
#I took the code from: 
#https://www.geeksforgeeks.org/python/python-program-to-print-the-fibonacci-sequence/
# To get a basic count system. I came across this whilst looking at the fibonacci sequence.
# I think I could add code where if b = 0 then print “no more”. But I’m lazy.
#Tested with https://www.online-python.com/#google_vignette, not sure if would actually work.

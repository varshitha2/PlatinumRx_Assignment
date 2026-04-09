
word = input()
rst = ""
for letter in word:
    if letter not in rst:
        rst += letter
print(rst)

import os
import math
import json

def parseFunction(file):
    print("Parsing file: " + file)
    file_ = open(file, mode="r")
    lines = file_.readlines()
    file_.close()
    
    #print(lines)
    count = 0
    
    for i in range(len(lines) - 1):
        if(lines[i].startswith("#FORMAT")):
            count += 1
            lines[i + 1] = parseFormat(lines[i], lines[i + 1])

    if(count > 0):
        print("Found " + str(count) + " format lines")
        os.system("copy " + file + " " + os.path.join("backup", file + ".backup"))
        file_ = open(file, mode="w")
        file_.writelines(lines)
        file_.close()

def parseFormat(Format, target):
    words = Format.split(" ")
    targetWords = target.split(" ")
    if(len(targetWords) == 0):
        return
    
    for word in words:
        if(word.startswith("%")):
            parseWord(word, targetWords)
        if(word.startswith("DEBUG") or word.startswith("REGULAR")):
            if(word.startswith("DEBUG") == variables["DEBUG"]):
                if(len(targetWords[0]) > 0 and targetWords[0][0] == "#"):
                    targetWords[0] = targetWords[0][1:]
            else:
                if(len(targetWords[0]) > 0 and targetWords[0][0] != "#"):
                    targetWords[0] = "#" + targetWords[0]

    target = " ".join(targetWords)
    return target

def parseWord(word, targetWords):    
    state = "findTarget"
    readState = ""
    decimal = False
    decimalOrder = 0.1
    targetIndex = 0
    prefix = 0
    postfix = 0
    stack = []
    num = 0
    name = ""
    special = ["#", "$", "}", "+", "-", "*", "/", "f"]
    
    for i in word:
        if(i == "%"):
            continue
        
        if(i == "{"):
            state = "process"
            continue
        
        if(state == "findTarget"):
            if(i == ","):
                state = "findPrefix"
                continue
            targetIndex *= 10
            targetIndex += int(i)

        if(state == "findPrefix"):
            if(i == ","):
                state = "findPostfix"
                continue
            prefix *= 10
            prefix += int(i)

        if(state == "findPostfix"):
            postfix *= 10
            postfix += int(i)

        if(state == "process"):
            if(i in special):
                if(readState == "number"):
                    stack.append(num)
                    num = 0
                    readState = ""

                if(readState == "name"):
                    stack.append(variables[name]["value"])
                    name = ""
                    readState = ""
                
                if(i == "#"):
                    readState = "number"
                    decimal = False
                    decimalOrder = 0.1
                    continue

                if(i == "$"):
                    readState = "name"
                    name = ""
                    continue

                if(i == "}"):
                    break

                if(i == "+"):
                    stack.append(stack.pop() + stack.pop())
                    continue

                if(i == "-"):
                    stack.append(-stack.pop() + stack.pop())
                    continue

                if(i == "*"):
                    stack.append(stack.pop() * stack.pop())
                    continue

                if(i == "/"):
                    stack.append((1/stack.pop()) * stack.pop())
                    continue

                if(i == "f"):
                    stack.append(math.floor(stack.pop()))
                    continue

            if(readState == "number"):
                if(i == "."):
                    decimal = True
                    continue

                if(decimal):
                    num += decimalOrder * int(i)
                    decimalOrder /= 10
                else:
                    num *= 10
                    num += int(i)

            if(readState == "name"):
                name += i

    if(targetWords[targetIndex - 1].endswith("\n")):
        postfix += 1

    pre = targetWords[targetIndex - 1][:prefix]
    post = ""
    if(postfix > 0):
        post = targetWords[targetIndex - 1][-postfix:]
    targetWords[targetIndex - 1] = pre + str(stack.pop()) + post             

try:
    os.mkdir("backup")
except OSError:
    pass

file_ = open("_formatVariales.json", mode="r")
variables = json.loads(file_.read())
file_.close()

for file in os.listdir():
    if file.endswith(".mcfunction"):
        parseFunction(file)

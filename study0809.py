command = input("Command:")
match command.split():
    case ["a",*values]:
        print(*values)
print(values)

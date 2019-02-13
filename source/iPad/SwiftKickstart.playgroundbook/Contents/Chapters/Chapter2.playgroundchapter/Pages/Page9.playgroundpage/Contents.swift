let name = "Swift Programmer"

print("Hello, \(name)!")
print("""
    Hello,
    \(name),
    my friend!
    """)

print(#"Hello,  "\(name)", \n my friend!"#)

print("Hello,", name, "!")
print("Hello,", name, "!", separator:"^-^")
print("Hello, ", name, "!", separator:"", terminator: "")
print("Hello, ", name, separator:"", terminator: "!")

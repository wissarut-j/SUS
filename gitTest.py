# Open (or create) a file named 'example.txt' in write mode
with open('example.txt', 'w') as file:
    # Write a line of text to the file
    file.write('Hello, this is a new file created by Python!\n')

print("File 'example.txt' created successfully.")

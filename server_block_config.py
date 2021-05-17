def main():
    input_file_name = str(input("Please enter a file name with extension. "))
    input_url = str(input("Please enter your url. (ex. 'mydomain.com' no 'https://www') "))
    read_file = open(input_file_name, 'rt')
    write_file = open(input_url, 'wt')
    for line in read_file:
        write_file.write(line.replace('your_url.com', input_url))
    read_file.close()
    write_file.close()
main()
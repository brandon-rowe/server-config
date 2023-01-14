def main():
    input_url = str(input("Please enter your url. (ex. 'mydomain.com' no 'https://www') "))
    read_file = open('backend_my_domain.com', 'rt')
    write_file = open(input_url, 'wt')
    for line in read_file:
        write_file.write(line.replace('your_url.com', input_url))
    read_file.close()
    write_file.close()
main()
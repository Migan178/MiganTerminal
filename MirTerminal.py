import os

while(True):
    # cntrl-c to quit
    input = raw_input('your_prompt$ ')
    input = input.split()
    if input[0] == 'ls':
        dire = '.'
        if len(input) > 1:
            dire = input[1]
        print('\n'.join(os.listdir(dire)))
    else:
        print('error')
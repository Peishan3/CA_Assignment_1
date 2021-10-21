#include <stdio.h>

int lengthOfLastWord(char * s)
{
    while(*s != 0) //finding the end of string
    {
        s++;
    }
    int position = 0;
    s--; //Because last word in the string will be '/0', go back for one char
    while(*s == 32)// if there are some space in the end, keep going back for word
    {
        s--;
    }
    while(*s != 32) //After finding the word, we can count for how long is the word here
    {
        position++;
        s--;
    }
    printf("Length of the last word is %d", position);//print result

}


int main()
{
    char *string = "Hello World";
    lengthOfLastWord(string);

    return 0;
}

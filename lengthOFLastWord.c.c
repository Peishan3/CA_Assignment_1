#include <stdio.h>

int lengthOfLastWord(char * s)
{
    while(*s != 0)
    {
        s++;
    }
    int position = 0;
    s--;
    while(*s == 32)
    {
        s--;
    }
    while(*s != 32)
    {
        position++;
        s--;
    }
    printf("Length of the last word is %d", position);

}


int main()
{
    char *string = "Hello World";
    lengthOfLastWord(string);

    return 0;
}

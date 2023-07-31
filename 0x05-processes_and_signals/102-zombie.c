#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>

/**
 * infinite_while - an infinite loop
 * Return: 0
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

int main(void)
{
	int i = 0, pid = 0;
	int get_pid = 0;

	while (i < 5)
	{
		pid = fork();
		if (pid == -1)
			perror("an error occured");
		if (pid == 0)
			infinite_while();
		else if (pid != 0)
		{
			get_pid = getpid();
			printf("Zombie process created, PID%d\n:", get_pid);
		}
		i++;
	}
	return (0);
}

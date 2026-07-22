#include <stdio.h>

char *ft_strcpy(char *dest, const char* src);
size_t ft_strlen(const char *str);

int	ft_strcmp(const char *s1, const char *s2)
{
	while ((unsigned char) *s1
		&& (unsigned char) *s1 == (unsigned char) *s2)
	{
		s1++;
		s2++;
	}
	return ((unsigned char) *s1 - (unsigned char) *s2);
}


int	main(int argc, char **argv)
{
	if (argc != 2)
	{
		printf("You need to specify the function you want to test.\n");
		return (1);
	}


	if (ft_strcmp(argv[1], "ft_strlen") == 0)
	{
		printf("%zu\n", ft_strlen("hello"));
		return (0);
	}

	else if(ft_strcmp(argv[1], "ft_strcpy") == 0)
	{
		char dest[20];
		printf("%s\n", ft_strcpy(dest, "halohalo"));
		return (0);
	}

	// else if(ft_strcmp(argv[1], "ft_strcmp") == 0)
	// {
	// }

	// else if(ft_strcmp(argv[1], "ft_write") == 0)
	// {
	// }

	// else if(ft_strcmp(argv[1], "ft_read") == 0)
	// {
	// }

	// else if(ft_strcmp(argv[1], "ft_strdup") == 0)
	// {
	// }

	// else if(ft_strcmp(argv[1], "ft_atoi_base") == 0)
	// {
	// }

	// else if(ft_strcmp(argv[1], "ft_list_push_front") == 0)
	// {
	// }

	// else if(ft_strcmp(argv[1], "ft_list_size") == 0)
	// {
	// }

	// else if(ft_strcmp(argv[1], "ft_list_sort") == 0)
	// {
	// }

	// else if(ft_strcmp(argv[1], "ft_list_remove_if") == 0)
	// {
	// }

	else
	{
		printf("Could not find the function you are asking for.\n");
		return (1);
	}

	return (0);
}

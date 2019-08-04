/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_gnl.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/11/03 12:31:02 by tmaluh            #+#    #+#             */
/*   Updated: 2019/08/04 00:57:00 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int32_t	catline_recursive(int32_t const fd, char **data,
								char **line, ssize_t nbytes)
{
	size_t	to_nl;
	char	*temp_nl;

	to_nl = ~0UL;
	while (data[fd][++to_nl] && data[fd][to_nl] != '\n')
		;
	if (data[fd][to_nl] == '\n')
	{
		*line = ft_strndup(data[fd], to_nl);
		temp_nl = ft_strdup(data[fd] + ++to_nl);
		free(data[fd]);
		data[fd] = temp_nl;
		NODO(data[fd][0], ft_strdel(&data[fd]));
	}
	else if (data[fd][to_nl] == '\0')
	{
		IFR(BUFF_SIZE == nbytes, ft_gnl(fd, line));
		*line = ft_strdup(data[fd]);
		ft_strdel(&data[fd]);
	}
	return (1);
}

int8_t			ft_gnl(int32_t const fd, char **line)
{
	static char	*data[255];
	char		*temp;
	char		buff[BUFF_SIZE + 1];
	ssize_t		nbytes;

	IFR(0 > fd || !line, -1);
	while (0 < (nbytes = read(fd, buff, BUFF_SIZE)))
	{
		buff[nbytes] = '\0';
		IFDO(!data[fd], data[fd] = ft_strnew(0));
		temp = ft_strjoin(data[fd], buff);
		free(data[fd]);
		data[fd] = temp;
		if (ft_strchr(buff, '\n'))
			break ;
	}
	IFR(0 > nbytes, -1);
	IFR(!nbytes && (!data[fd] || !data[fd][0]), 0);
	return (catline_recursive(fd, data, line, nbytes));
}

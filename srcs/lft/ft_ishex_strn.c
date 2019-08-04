/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ishex_strn.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/19 12:40:50 by tmaluh            #+#    #+#             */
/*   Updated: 2019/08/04 01:01:05 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

bool	ft_ishex_strn(char *str, size_t n)
{
	size_t		i;
	char const	valid_hex[] = "0123456789abcdef";

	i = 0UL;
	while (n--)
	{
		i = ~0ULL;
		while (valid_hex[++i])
			if (ft_tolower(*str) == valid_hex[i])
				break ;
		if (ft_tolower(*str++) != valid_hex[i])
			return (false);
	}
	return (true);
}

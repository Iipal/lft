/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isfdigits_str.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/10 20:02:20 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/10 20:03:26 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

bool	ft_isfdigits_str(const string str)
{
	size_t	i;
	bool	dot;

	i = ~0UL;
	dot = false;
	while (str[++i])
	{
		if ('.' == str[i] && !dot)
		{
			dot = true;
			++i;
		}
		if (!ft_isdigit(str[i]))
			return (false);
	}
	return (true);
}

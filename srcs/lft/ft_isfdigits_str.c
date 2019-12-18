/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isfdigits_str.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/10 20:02:20 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:12:08 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

bool	ft_isfdigits_str(const char *LFT_RESTRICT LFT_NONNULL str)
{
	size_t	i;
	bool	dot;

	i = ~0UL;
	dot = false;
	while (str[++i])
	{
		if (!dot && '.' == str[i++])
			dot = true;
		if (!F_ISDIGIT(str[i]))
			return (false);
	}
	return (true);
}

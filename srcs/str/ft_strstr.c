/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 18:19:30 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:20:42 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *LFT_NULLALBE	ft_strstr(char *LFT_RESTRICT LFT_NONNULL str,
						char *LFT_RESTRICT LFT_NONNULL to_find)
{
	char	*cp;
	char	*s1;
	char	*s2;

	cp = str;
	if (!*to_find)
		return (str);
	while (*cp)
	{
		s1 = cp;
		s2 = to_find;
		while (*s1 && *s2 && !(*s1 - *s2))
		{
			s1++;
			s2++;
		}
		if (!*s2)
			return (cp);
		cp++;
	}
	return (NULL);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 17:41:32 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:21:16 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *LFT_NULLALBE	ft_strnstr(char *LFT_NONNULL str,
						const char *LFT_RESTRICT LFT_NONNULL to_find,
						size_t len)
{
	const size_t	to_find_len = ft_strlen(to_find);

	if (!*to_find)
		return (str);
	while (*str && len-- >= to_find_len)
	{
		if (*str && !ft_strncmp(str, to_find, to_find_len))
			return (str);
		++str;
	}
	return (NULL);
}

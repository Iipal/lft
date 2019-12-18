/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 10:03:08 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:17:52 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *LFT_NONNULL	ft_strcpy(char *LFT_RESTRICT LFT_NONNULL dest,
						const char *LFT_RESTRICT LFT_NONNULL str)
{
	size_t	i;

	i = ~0UL;
	while (str[++i])
		dest[i] = str[i];
	dest[i] = '\0';
	return (dest);
}

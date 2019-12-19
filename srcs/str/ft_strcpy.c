/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 10:03:08 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:18 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *_Nonnull	ft_strcpy(char *restrict _Nonnull dest,
						const char *restrict _Nonnull str)
{
	size_t	i;

	i = ~0UL;
	while (str[++i])
		dest[i] = str[i];
	dest[i] = '\0';
	return (dest);
}

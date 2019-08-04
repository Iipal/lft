/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/27 19:20:57 by tmaluh            #+#    #+#             */
/*   Updated: 2019/08/04 10:43:05 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcpy(char *const dest,
			char const *const str,
			size_t const dstsize)
{
	size_t const	strsize = ft_strlen(str);

	NO_F(str);
	if (strsize < dstsize)
		ft_memcpy(dest, (void const *const)str, strsize + 1);
	else if (dstsize)
	{
		ft_memcpy(dest, (void const *const)str, dstsize - 1);
		dest[dstsize - 1] = '\0';
	}
	return (strsize);
}

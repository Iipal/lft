/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 15:04:22 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:18 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void *_Nullable	ft_memchr(const void *restrict _Nonnull ptr,
						int32_t c,
						size_t n)
{
	const __u_char	*out = (const __u_char*)ptr;
	size_t			i;

	i = ~0UL;
	while (n--)
		if (out[++i] == c)
			return ((void*)(out + i));
	return (NULL);
}

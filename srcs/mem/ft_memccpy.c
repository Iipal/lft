/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memccpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 17:43:45 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:18 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void *_Nullable	ft_memccpy(void *restrict _Nonnull dest,
						const void *restrict _Nonnull src,
						uint8_t c,
						size_t n)
{
	const __u_char	*sc = (const __u_char*)src;
	__u_char		*dst;
	size_t			i;

	dst = (__u_char*)dest;
	i = ~0UL;
	while (n > ++i)
	{
		dst[i] = sc[i];
		if (sc[i] == c)
			return (dst + i + 1);
	}
	return (NULL);
}

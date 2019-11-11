/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 13:43:44 by tmaluh            #+#    #+#             */
/*   Updated: 2019/11/12 01:03:41 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *restrict dest, const void *restrict src, size_t len)
{
	uint8_t			*dst;
	const uint8_t	*sc = (const uint8_t*)src;
	size_t			i;

	dst = (uint8_t*)dest;
	i = ~0UL;
	if (sc < dst)
		while (0 <= (ssize_t)--len)
			dst[len] = sc[len];
	else
		while (++i < len)
			dst[i] = sc[i];
	return (dest);
}

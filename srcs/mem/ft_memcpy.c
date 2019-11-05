/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 11:04:50 by tmaluh            #+#    #+#             */
/*   Updated: 2019/11/05 09:35:58 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *restrict dest,
			const void *restrict src,
			size_t n)
{
	int8_t			*dst;
	const int8_t	*sc = (const int8_t *const)src;
	size_t			i;

	dst = (int8_t*)dest;
	i = ~0UL;
	while (n > ++i)
		dst[i] = sc[i];
	return (dest);
}

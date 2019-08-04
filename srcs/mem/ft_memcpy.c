/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 11:04:50 by tmaluh            #+#    #+#             */
/*   Updated: 2019/08/04 02:08:37 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memcpy(void *const dest, void const *const src, size_t const n)
{
	int8_t	*dst;
	int8_t	*sc;
	size_t	i;

	dst = (int8_t*)dest;
	sc = (int8_t*)src;
	i = ~0UL;
	while (++i < n)
		dst[i] = sc[i];
	return (dest);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 15:04:22 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/23 20:57:10 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *restrict ptr, int32_t c, size_t n)
{
	const __u_char	*out = (const __u_char*)ptr;
	size_t			i;

	i = ~0UL;
	while (n--)
		if (out[++i] == c)
			return ((void*)(out + i));
	return (NULL);
}

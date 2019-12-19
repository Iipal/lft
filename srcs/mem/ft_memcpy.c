/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 11:04:50 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:18 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void *_Nonnull	ft_memcpy(void *restrict _Nonnull dest,
						const void *restrict _Nonnull src,
						size_t n)
{
	const __u_char	*sc = (const __u_char*)src;
	__u_char		*dst;
	size_t			i;

	i = ~0UL;
	dst = (__u_char*)dest;
	while (n > ++i)
		dst[i] = sc[i];
	return (dest);
}

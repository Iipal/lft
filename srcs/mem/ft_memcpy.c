/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 11:04:50 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:42:03 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void *LFT_NONNULL	ft_memcpy(void *LFT_RESTRICT LFT_NONNULL dest,
						const void *LFT_RESTRICT LFT_NONNULL src,
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

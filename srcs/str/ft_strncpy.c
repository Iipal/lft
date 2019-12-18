/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 17:45:55 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:18:30 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *LFT_NONNULL	ft_strncpy(char *LFT_RESTRICT LFT_NONNULL dest,
						const char *LFT_RESTRICT LFT_NONNULL str,
						size_t len)
{
	const size_t	size = ft_strnlen(str, len);

	if (size != len)
		ft_memset(dest + size, '\0', len - size);
	return (ft_memcpy(dest, str, size));
}

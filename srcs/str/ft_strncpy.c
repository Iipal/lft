/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 17:45:55 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:18 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *_Nonnull	ft_strncpy(char *restrict _Nonnull dest,
						const char *restrict _Nonnull str,
						size_t len)
{
	const size_t	size = ft_strnlen(str, len);

	if (size != len)
		ft_memset(dest + size, '\0', len - size);
	return (ft_memcpy(dest, str, size));
}

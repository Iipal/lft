/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/04 17:50:42 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:46:23 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline void *LFT_NULLALBE	ft_memdup(const void *LFT_RESTRICT LFT_NONNULL src,
								size_t size)
{
	return (ft_memcpy(ft_memalloc(size), src, size));
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/26 15:45:49 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:43:30 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline void	ft_memdel(void *LFT_RESTRICT LFT_NONNULL
				*LFT_RESTRICT LFT_NULLALBE ap)
{
	if (*ap)
	{
		free(*ap);
		*ap = NULL;
	}
}

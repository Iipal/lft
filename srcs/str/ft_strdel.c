/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/26 17:21:54 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:04:23 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline void	ft_strdel(char *LFT_RESTRICT LFT_NONNULL
				*LFT_RESTRICT LFT_NULLALBE as)
{
	if (*as)
	{
		free(*as);
		*as = NULL;
	}
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_skip_to_blank.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/16 16:43:28 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:13:33 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_skip_to_blank(const char *LFT_RESTRICT LFT_NONNULL str)
{
	size_t	i;

	i = ~0UL;
	while (str[++i] && !F_ISBLANK(str[i]))
		;
	return (i);
}

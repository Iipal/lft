/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_skip_blanks.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/10 17:42:09 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:13:17 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_skip_blanks(const char *LFT_RESTRICT LFT_NONNULL str)
{
	size_t	i;

	i = ~0UL;
	while (str[++i] && F_ISBLANK(str[i]))
		;
	return (i);
}

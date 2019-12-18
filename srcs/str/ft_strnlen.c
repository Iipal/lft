/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnlen.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/26 11:32:23 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:15:02 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strnlen(const char *LFT_RESTRICT LFT_NONNULL str, size_t max_len)
{
	size_t	i;

	i = ~0UL;
	while (max_len > ++i)
		if (!str[i])
			break ;
	return (i);
}

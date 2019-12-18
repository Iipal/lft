/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha_str.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/31 00:07:26 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:12:54 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

bool	ft_isalpha_str(const char *LFT_RESTRICT LFT_NONNULL str)
{
	size_t	i;

	i = ~0UL;
	while (str[++i] && (F_ISLOWER(str[i]) || F_ISUPPER(str[i])))
		;
	return (!str[i]);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strisa.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/31 00:07:26 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/23 20:48:35 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

bool	ft_strisa(const char *restrict str)
{
	size_t	i;

	i = ~0UL;
	while (str[++i] && F_ISALPHA(str[i]))
		;
	return (!str[i]);
}

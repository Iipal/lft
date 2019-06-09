/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrev.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/05 12:39:29 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/09 04:55:14 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_strrev(string str)
{
	size_t			end;
	size_t			start;
	const size_t	real_end = ft_strlen(str);

	start = ~0UL;
	end = real_end;
	while (++start < real_end / 2)
		SWAP(str[start], str[--end]);
}
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_i128toa.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/21 00:22:59 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/21 00:23:19 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_str.h"

static inline __int128	ft_slen(bool *sign, __int128 n)
{
	__int128	out;

	out = 1;
	if (n < 0)
		*sign = true;
	while (n /= 10)
		out++;
	return (out);
}

string					ft_i128toa(__int128 n)
{
	string		out;
	__int128	len;
	bool		sign;

	if (!n)
	{
		out = ft_strnew(1);
		out[0] = '0';
		return (out);
	}
	sign = false;
	len = ft_slen(&sign, n);
	if ((out = ft_strnew(len + sign)) == NULL)
		return (NULL);
	if (sign)
		out[0] = '-';
	while (len--)
	{
		out[len + sign] = (sign ? -(n % 10) : n % 10) + '0';
		n /= 10;
	}
	return (out);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atof.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/10 17:03:55 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/13 09:17:33 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static double_t	add_mnts_delimeter(size_t mnts_digits)
{
	double_t	out;

	out = 1.0f;
	while (mnts_digits--)
		out *= 10.0f;
	return (out);
}

double_t		ft_atof(string str)
{
	const int64_t	exp = ft_atol(str);
	int64_t			mnts;
	size_t			mnts_digits;
	int8_t			sign;
	size_t			i;

	i = ~0UL;
	mnts = 0;
	mnts_digits = 0;
	sign = ('-' == *str) ? -1 : 1;
	((!exp) && (-1 == sign)) ? ++str : str;
	str += ft_digits(exp);
	if ('.' == *str++)
	{
		while (str[++i] && ft_isdigit(str[i]))
			++mnts_digits;
		mnts = ft_atol(str);
		if (mnts_digits <= ft_digits(mnts))
			mnts_digits = 0;
		else
			mnts_digits -= ft_digits(mnts);
	}
	return (exp + (mnts
		/ add_mnts_delimeter(ft_digits(mnts) + mnts_digits) * sign));
}

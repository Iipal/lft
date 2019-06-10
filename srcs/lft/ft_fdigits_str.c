/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_fdigits_str.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/10 17:41:00 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/10 19:55:34 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_fdigits_str(string str)
{
	const int64_t	exp = ft_atol(str);
	int64_t			mantissa;
	size_t			mantissa_digits;

	mantissa = 0;
	mantissa_digits = 0;
	str += ft_digits(exp);
	if ('.' == *str)
	{
		mantissa_digits = ft_skip_to_blank(++str);
		mantissa = ft_atol(str);
		if (mantissa_digits <= ft_digits(mantissa))
			mantissa_digits = 0;
		else
			mantissa_digits -= ft_digits(mantissa);
		return (ft_digits(exp) + ft_digits(mantissa) + mantissa_digits + 1);
	}
	return (ft_digits(exp));
}

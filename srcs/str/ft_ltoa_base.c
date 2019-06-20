/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa_base.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/21 00:07:31 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/21 00:28:27 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_str.h"
#include <stdlib.h>

static inline void	add_aux(const int64_t n, const int64_t b,
						string out, int64_t *const p)
{
	char	base[] = "0123456789ABCDEF";

	if (n <= -b || b <= n)
		add_aux(n / b, b, out, p);
	out[(*p)++] = base[ABS(n % b)];
}

string		ft_itoa_base(int64_t value, uint8_t base)
{
	string	out;
	int64_t	p;

	if (2 > base || 16 < base || !(out = (string)malloc(sizeof(char) * 35)))
		return (NULL);
	p = 0;
	if (10 == base && 0 > value)
		out[p++] = '-';
	add_aux(value, base, out, &p);
	out[p] = '\0';
	return (out);
}

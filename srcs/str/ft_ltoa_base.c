/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_ltoa_base.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/06/21 00:07:31 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:29:46 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static void	add_aux(int64_t n,
				int64_t b,
				char *LFT_RESTRICT out,
				int64_t *LFT_RESTRICT p)
{
	static const char	base[17] = "0123456789ABCDEF";

	if (n <= -b || b <= n)
		add_aux(n / b, b, out, p);
	out[(*p)++] = base[ABS(n % b)];
}

char *LFT_NULLALBE	ft_ltoa_base(int64_t value, uint8_t base)
{
	char	*out;
	int64_t	p;

	p = 0L;
	if (2 > base || 16 < base)
		return (NULL);
	out = (char*)ft_memalloc(sizeof(char) * 35L);
	if (10 == base && 0L > value)
		out[p++] = '-';
	add_aux(value, base, out, &p);
	out[p] = '\0';
	return (out);
}

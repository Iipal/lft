/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_digits.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/10 17:45:30 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/23 12:49:25 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t __attribute__((__overloadable__))
ft_digits(int n)
{
	size_t	out;

	out = 1;
	if (0 > n && ++out)
		n = -n;
	while (n /= 10)
		++out;
	return (out);
}

size_t __attribute__((__overloadable__))
ft_digits(long n)
{
	size_t	out;

	out = 1;
	if (0 > n && ++out)
		n = -n;
	while (n /= 10)
		++out;
	return (out);
}

size_t __attribute__((__overloadable__))
ft_digits(unsigned int n)
{
	size_t	out;

	out = 1;
	while (n /= 10)
		++out;
	return (out);
}

size_t __attribute__((__overloadable__))
ft_digits(size_t n)
{
	size_t	out;

	out = 1;
	while (n /= 10)
		++out;
	return (out);
}

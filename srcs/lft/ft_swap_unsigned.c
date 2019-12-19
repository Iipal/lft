/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_swap_unsigned.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/18 01:07:17 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:18 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline void __attribute__((__overloadable__))
	ft_swap(unsigned char *restrict _Nonnull a,
			unsigned char *restrict _Nonnull b)
{
	unsigned char	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(unsigned short *restrict _Nonnull a,
			unsigned short *restrict _Nonnull b)
{
	unsigned short	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(unsigned int *restrict _Nonnull a,
			unsigned int *restrict _Nonnull b)
{
	unsigned int	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(unsigned long *restrict _Nonnull a,
			unsigned long *restrict _Nonnull b)
{
	unsigned long	c;

	c = *a;
	*a = *b;
	*b = c;
}

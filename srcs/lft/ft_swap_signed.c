/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_swap_signed.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/18 00:55:06 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:18 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline void __attribute__((__overloadable__))
	ft_swap(char *restrict _Nonnull a,
			char *restrict _Nonnull b)
{
	char	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(short *restrict _Nonnull a,
			short *restrict _Nonnull b)
{
	short	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(int *restrict _Nonnull a,
			int *restrict _Nonnull b)
{
	int	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(long *restrict _Nonnull a,
			long *restrict _Nonnull b)
{
	long	c;

	c = *a;
	*a = *b;
	*b = c;
}

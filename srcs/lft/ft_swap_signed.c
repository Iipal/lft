/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_swap_signed.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/18 00:55:06 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:14:50 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline void __attribute__((__overloadable__))
	ft_swap(char *LFT_RESTRICT LFT_NONNULL a,
			char *LFT_RESTRICT LFT_NONNULL b)
{
	char	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(short *LFT_RESTRICT LFT_NONNULL a,
			short *LFT_RESTRICT LFT_NONNULL b)
{
	short	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(int *LFT_RESTRICT LFT_NONNULL a,
			int *LFT_RESTRICT LFT_NONNULL b)
{
	int	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(long *LFT_RESTRICT LFT_NONNULL a,
			long *LFT_RESTRICT LFT_NONNULL b)
{
	long	c;

	c = *a;
	*a = *b;
	*b = c;
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_swap_unsigned.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/18 01:07:17 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:15:16 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline void __attribute__((__overloadable__))
	ft_swap(unsigned char *LFT_RESTRICT LFT_NONNULL a,
			unsigned char *LFT_RESTRICT LFT_NONNULL b)
{
	unsigned char	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(unsigned short *LFT_RESTRICT LFT_NONNULL a,
			unsigned short *LFT_RESTRICT LFT_NONNULL b)
{
	unsigned short	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(unsigned int *LFT_RESTRICT LFT_NONNULL a,
			unsigned int *LFT_RESTRICT LFT_NONNULL b)
{
	unsigned int	c;

	c = *a;
	*a = *b;
	*b = c;
}

inline void __attribute__((__overloadable__))
	ft_swap(unsigned long *LFT_RESTRICT LFT_NONNULL a,
			unsigned long *LFT_RESTRICT LFT_NONNULL b)
{
	unsigned long	c;

	c = *a;
	*a = *b;
	*b = c;
}

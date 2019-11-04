/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memswap.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/04 17:58:29 by tmaluh            #+#    #+#             */
/*   Updated: 2019/11/04 21:10:10 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_memswap(void *restrict a, void *restrict b, size_t const len)
{
	void	*c;

	c = ft_memdup(a, len);
	ft_memmove(a, b, len);
	ft_memmove(b, c, len);
	ft_memdel(&c);
}

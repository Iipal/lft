/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memalloc.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/26 15:33:11 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:02 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline void	*_Nullable	ft_memalloc(size_t size)
{
	void	*out;

	out = NULL;
	if (size)
	{
		if (!(out = malloc(size)))
			return (out);
		ft_memset(out, 0, size);
	}
	return (out);
}

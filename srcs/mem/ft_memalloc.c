/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memalloc.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/26 15:33:11 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/20 15:54:29 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline pvoid	ft_memalloc(const size_t size)
{
	pvoid	out;

	out = NULL;
	if (size)
	{
		out = malloc(size);
		if (NULL == out)
			return (NULL);
		ft_memset(out, 0, size);
	}
	return (out);
}

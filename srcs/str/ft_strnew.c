/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/26 17:06:41 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/20 16:10:45 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline string	ft_strnew(const size_t size)
{
	string	out;

	out = ft_memalloc(sizeof(char) * (size + 1));
	if (!out)
		return (NULL);
	ft_memset(out, '\0', size + 1);
	return (out);
}

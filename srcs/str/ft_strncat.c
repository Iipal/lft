/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 17:43:02 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/09 04:55:13 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

string	ft_strncat(string dest, const string src, const size_t n)
{
	const size_t	i = ft_strlen(dest);
	size_t			j;

	j = ~0UL;
	while (src[++j] && j < n)
		dest[i + j] = src[j];
	dest[i + j] = '\0';
	return (dest);
}

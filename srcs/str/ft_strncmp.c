/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 18:41:43 by tmaluh            #+#    #+#             */
/*   Updated: 2019/11/06 13:35:56 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int32_t	ft_strncmp(const char *s1, const char *s2, size_t n)
{
	int32_t	out;

	while (n--)
		if ((out = *s1++ - *s2++))
			break ;
	return (out);
}

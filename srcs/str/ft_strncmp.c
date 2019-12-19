/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 18:41:43 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:53:33 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int32_t	ft_strncmp(const char *_Nonnull s1,
			const char *_Nonnull s2,
			size_t n)
{
	int32_t	out;

	out = 0;
	while (n--)
		if ((out = *s1++ - *s2++))
			break ;
	return (out);
}

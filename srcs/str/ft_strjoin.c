/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/26 19:11:48 by tmaluh            #+#    #+#             */
/*   Updated: 2019/08/05 16:08:05 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *const s1, char const *const s2)
{
	char	*out;
	size_t	len1;
	size_t	len2;

	out = NULL;
	if (!s1 || !s2)
		return (out);
	len1 = ft_strlen(s1);
	len2 = ft_strlen(s2);
	out = ft_strnew(len1 + len2);
	ft_strncpy(out, s1, len1);
	ft_strncpy(out + len1, s2, len2);
	return (out);
}

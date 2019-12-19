/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/26 19:11:48 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:18 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline char *_Nullable	ft_strjoin(const char *restrict _Nonnull s1,
								const char *restrict _Nonnull s2)
{
	char	*out;
	size_t	len1;
	size_t	len2;

	out = NULL;
	len1 = ft_strlen(s1);
	len2 = ft_strlen(s2);
	out = ft_strnew(len1 + len2);
	ft_strncpy(out, s1, len1);
	ft_strncpy(out + len1, s2, len2);
	return (out);
}

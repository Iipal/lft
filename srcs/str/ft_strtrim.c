/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/26 19:26:18 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:18 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *_Nullable	ft_strtrim(const char *restrict _Nonnull s)
{
	size_t	start;
	size_t	len;

	start = ft_skip_blanks(s);
	if (!s[start])
		return (ft_strdup(s + start));
	len = ft_strlen(s) - 1UL;
	while (F_ISBLANK(s[len]) && len > 0UL)
		--len;
	return (ft_strsub(s, start, len - start + 1UL));
}

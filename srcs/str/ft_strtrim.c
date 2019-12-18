/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/26 19:26:18 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:26:23 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *LFT_NULLALBE	ft_strtrim(const char *LFT_RESTRICT LFT_NONNULL s)
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

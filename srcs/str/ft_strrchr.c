/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 17:07:43 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:32:31 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *LFT_NULLALBE	ft_strrchr(char *LFT_NONNULL LFT_RESTRICT str,
						int32_t c)
{
	size_t	len;

	len = ft_strlen(str);
	while (len && str[len] != c)
		--len;
	return ((c == str[len]) ? &str[len] : NULL);
}

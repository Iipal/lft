/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/24 16:37:20 by tmaluh            #+#    #+#             */
/*   Updated: 2019/11/06 18:58:24 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *str, int32_t c)
{
	char	*ptr;

	ptr = (char*)str;
	while (ptr && *ptr != c)
		if (!*ptr++)
			return (NULL);
	return (ptr);
}

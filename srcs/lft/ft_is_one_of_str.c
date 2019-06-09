/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_is_one_of_str.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/04/09 23:08:35 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/09 14:29:07 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_is_one_of_str(const string cmp, const bool cmp_len, size_t n, ...)
{
	va_list	ap;
	bool	is_one_of;
	char	*temp;
	size_t	i;

	i = ~0UL;
	va_start(ap, n);
	is_one_of = false;
	while (n > ++i)
	{
		temp = va_arg(ap, char*);
		if (true == cmp_len && !ft_strncmp(cmp, temp, ft_strlen(temp)))
			is_one_of = true;
		else if (false == cmp_len && !ft_strcmp(cmp, temp))
			is_one_of = true;
		if (is_one_of)
		{
			va_end(ap);
			return (i + 1);
		}
	}
	va_end(ap);
	return (0);
}

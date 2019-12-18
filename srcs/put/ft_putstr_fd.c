/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/27 13:39:34 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:57:23 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_putstr_fd(const char *LFT_RESTRICT LFT_NONNULL s, int32_t fd)
{
	size_t	i;

	i = ~0UL;
	while (s[++i])
		F_PUTCHAR_FD(s[i], fd);
}

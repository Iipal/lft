/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstadd.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/14 13:24:57 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:51:14 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_list.h"

void	ft_lstadd(t_list *LFT_RESTRICT LFT_NONNULL
			*LFT_RESTRICT LFT_NONNULL alist,
			t_list *LFT_RESTRICT LFT_NULLALBE new)
{
	new->next = *alist;
	*alist = new;
}

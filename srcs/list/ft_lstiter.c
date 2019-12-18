/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstiter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/14 13:31:40 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:06:20 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_list.h"

void	ft_lstiter(t_list *LFT_NONNULL list,
			void (*LFT_NONNULL f)(t_list *LFT_NULLALBE))
{
	t_list	*n;

	while (list)
	{
		n = list->next;
		f(list);
		list = n;
	}
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/14 13:33:25 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:04:41 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_list.h"

t_list *LFT_NULLALBE	ft_lstmap(t_list *LFT_NONNULL list,
			t_list *LFT_NULLALBE (*LFT_NONNULL f)(t_list *LFT_NULLALBE))
{
	t_list	*out;
	t_list	*l;

	if (!list)
		return (NULL);
	l = f(list);
	out = l;
	while (list->next)
	{
		list = list->next;
		if (!(l->next = f(list)))
		{
			free(l->next);
			return (NULL);
		}
		l = l->next;
	}
	return (out);
}

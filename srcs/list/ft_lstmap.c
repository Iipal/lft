/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/14 13:33:25 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:02 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_list.h"

t_list *_Nullable	ft_lstmap(t_list *_Nonnull list,
			t_list *_Nullable (*_Nonnull f)(t_list *_Nullable))
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

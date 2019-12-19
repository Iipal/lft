/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstiter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/14 13:31:40 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:02 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_list.h"

void	ft_lstiter(t_list *_Nonnull list,
			void (*_Nonnull f)(t_list *_Nullable))
{
	t_list	*n;

	while (list)
	{
		n = list->next;
		f(list);
		list = n;
	}
}

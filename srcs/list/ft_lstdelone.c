/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdelone.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/14 13:37:44 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:07:51 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_list.h"

void	ft_lstdelone(t_list *LFT_RESTRICT LFT_NONNULL
			*LFT_RESTRICT LFT_NULLALBE alist,
			void (*LFT_NONNULL del)(void *LFT_NULLALBE, size_t))
{
	del((*alist)->data, (*alist)->data_size);
	free(*alist);
	*alist = NULL;
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_list.h                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/14 13:14:44 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:08:52 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_LIST_H
# define LIBFT_LIST_H

# include "libft_mem.h"

struct	s_list
{
	void *LFT_RESTRICT LFT_NULLALBE				data;
	size_t										data_size;
	struct s_list *LFT_RESTRICT LFT_NULLALBE	next;
};

typedef struct s_list	t_list;

t_list *LFT_NULLALBE	ft_lstnew(void const *LFT_RESTRICT LFT_NONNULL data,
							const size_t data_size);

void	ft_lstadd(t_list *LFT_NONNULL LFT_RESTRICT
			*LFT_RESTRICT LFT_NONNULL alist,
			t_list *LFT_RESTRICT LFT_NULLALBE new);

void	ft_lstiter(t_list *LFT_NONNULL list,
			void (*LFT_NONNULL f)(t_list *LFT_NULLALBE));
t_list *LFT_NULLALBE	ft_lstmap(t_list *LFT_NONNULL list,
			t_list *LFT_NULLALBE (*LFT_NONNULL f)(t_list *LFT_NULLALBE));

void	ft_lstdelone(t_list *LFT_RESTRICT LFT_NONNULL
			*LFT_RESTRICT LFT_NULLALBE alist,
			void (*LFT_NONNULL del)(void *LFT_NULLALBE, size_t));
void	ft_lstdel(t_list *LFT_RESTRICT LFT_NONNULL
			*LFT_RESTRICT LFT_NULLALBE alist,
			void (*LFT_NONNULL del)(void *LFT_NULLALBE, size_t));

#endif

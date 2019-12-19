/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_list.h                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/14 13:14:44 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:54:30 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_LIST_H
# define LIBFT_LIST_H

# include "libft_mem.h"

struct	s_list
{
	void *restrict _Nullable			data;
	size_t								data_size;
	struct s_list *restrict _Nullable	next;
};

typedef struct s_list	t_list;

t_list *_Nullable	ft_lstnew(void const *restrict _Nonnull data,
							const size_t data_size);

void	ft_lstadd(t_list *_Nonnull restrict
			*restrict _Nonnull alist,
			t_list *restrict _Nullable new);

void	ft_lstiter(t_list *_Nonnull list,
			void (*_Nonnull f)(t_list *_Nullable));
t_list *_Nullable	ft_lstmap(t_list *_Nonnull list,
			t_list *_Nullable (*_Nonnull f)(t_list *_Nullable));

void	ft_lstdelone(t_list *restrict _Nonnull
			*restrict _Nullable alist,
			void (*_Nonnull del)(void *_Nullable, size_t));
void	ft_lstdel(t_list *restrict _Nonnull
			*restrict _Nullable alist,
			void (*_Nonnull del)(void *_Nullable, size_t));

#endif

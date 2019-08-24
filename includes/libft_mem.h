/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_mem.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/15 17:08:05 by tmaluh            #+#    #+#             */
/*   Updated: 2019/08/24 16:01:54 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_MEM_H
# define LIBFT_MEM_H

# include <string.h>

/*
**	Erases the data in the \param n bytes of \param s,
**	 by writing zeros('\0') to that area.
*/
void	ft_bzero(void *const s, size_t const n) __nonnull((1));

/*
**	Free memory at pointer \param ap.
*/
void	ft_memdel(void **ap) __nonnull((1));

/*
**	\return \param dest where fills the first \param len bytes of
**	 \param dest with the \param c.
*/
void	*ft_memset(void *const dest, int32_t const c, size_t len) __nonnull((1));

/*
**	\return \param dest where copies \param n bytes from
**	 \param src to \param dest.
*/
void	*ft_memcpy(void *dest, void const *const src, size_t const n) __nonnull((1,2));

/*
**	\return \param dest where copies no more than \param n bytes from
**	 \param src to \pararm dest, stopping when the symbol \param c is found.
*/
void	*ft_memccpy(void *const dest,
			void const *const src,
			uint8_t const c,
			size_t const n) __nonnull((1,2));

/*
**	\return \param dest where copies
**	\param len bytes from \param src to \param dest.
*/
void	*ft_memmove(void *const dest, void const *const src, size_t len) __nonnull((1,2));

/*
**	\return matching byte of \param s after scans the initial \param n bytes
**	 of \param s for the first instance of c.
*/
void	*ft_memchr(void const *const s, char const c, size_t n) __nonnull((1));

/*
**	\return pointer to allocated \param size bytes.
*/
void	*ft_memalloc(size_t const size);

/*
**	Compares the first \param n bytes of \param s1 and \param s2.
**	\return an integer less than, equal to, or greater than zero
**	 if the first \param n bytes of \param s1 is found,
**	 respectively, to be less than, to match,
**	 or be greater than the first \param n bytes of \param s2.
*/
int32_t	ft_memcmp(void const *s1, void const *s2, size_t n) __nonnull((1,2));

#endif

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_mem.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/15 17:08:05 by tmaluh            #+#    #+#             */
/*   Updated: 2019/11/04 21:46:16 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_MEM_H
# define LIBFT_MEM_H

# include <string.h>

/*
**	Erases the data in the \param n bytes of \param s,
**	 by writing zeros('\0') to that area.
*/
extern void	ft_bzero(void *const s, size_t const n);

/*
**	Free memory at pointer \param ap.
*/
extern void	ft_memdel(void **ap);
/*
**	\return pointer to allocated \param size bytes.
*/
extern void	*ft_memalloc(size_t const size);

/*
**	Creating duplicate of \param src on heap.
*/
extern void	*ft_memdup(void const *const src, size_t const size);

/*
**	Swap \param a and \param b where both of them is pointer to
**	 \param len bytes data-type.
*/
extern void	ft_memswap(void *restrict a, void *restrict b, size_t const len);

/*
**	\return \param dest where fills the first \param len bytes of
**	 \param dest with the \param c.
*/
void		*ft_memset(void *const dest, int32_t const c, size_t len);

/*
**	\return \param dest where copies \param n bytes from
**	 \param src to \param dest.
*/
void		*ft_memcpy(void *dest, void const *const src, size_t const n);

/*
**	\return \param dest where copies no more than \param n bytes from
**	 \param src to \pararm dest, stopping when the symbol \param c is found.
*/
void		*ft_memccpy(void *const dest,
				void const *const src,
				uint8_t const c,
				size_t const n);

/*
**	\return \param dest where copies
**	\param len bytes from \param src to \param dest.
*/
void		*ft_memmove(void *const dest, void const *const src, size_t len);

/*
**	\return matching byte of \param s after scans the initial \param n bytes
**	 of \param s for the first instance of c.
*/
void		*ft_memchr(void const *const s, char const c, size_t n);

/*
**	Compares the first \param n bytes of \param s1 and \param s2.
**	\return an integer less than, equal to, or greater than zero
**	 if the first \param n bytes of \param s1 is found,
**	 respectively, to be less than, to match,
**	 or be greater than the first \param n bytes of \param s2.
*/
int32_t		ft_memcmp(void const *s1, void const *s2, size_t n);

#endif

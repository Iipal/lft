/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_utils.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/15 17:09:12 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/23 12:46:34 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_UTILS_H
# define LIBFT_UTILS_H

# include <string.h>
# include <stdint.h>

# include "libft_macroses.h"

/*
**	Reading file line by line. (Get Next Line)
**	\param fd: File descriptor.
**	\param line: pointer to string where will saved each line from file.
**	\return:
**	[0 - End of File.
**	 1 - Successful read 1 line from file.
**	 -1 - Reading error.]
*/
int32_t
ft_gnl(int32_t fd, char *restrict _Nonnull *restrict _Nullable line);

/*
**	Compare if one of \param n va_list arguments is equal to \param cmp.
**	\param cmp: Value to compare.
**	\param n: va_list arguments counter to compare.
**	\param ...: va_list.
**	\return true if one of argument is equal to \param cmp, else - false.
*/
size_t __attribute__((__overloadable__))
ft_is_one_of_n(char cmp, size_t n, ...);
size_t __attribute__((__overloadable__))
ft_is_one_of_n(int cmp, size_t n, ...);
size_t __attribute__((__overloadable__))
ft_is_one_of_n(long cmp, size_t n, ...);
size_t __attribute__((__overloadable__))
ft_is_one_of_n(char *restrict _Nonnull cmp, size_t n, ...);
size_t __attribute__((__overloadable__))
ft_is_one_of_n(char *restrict _Nonnull cmp, size_t cmp_len, size_t n, ...);

/*
**	\return How many digits in \param n.
*/
size_t __attribute__((__overloadable__))
ft_digits(int n);
size_t __attribute__((__overloadable__))
ft_digits(long n);
size_t __attribute__((__overloadable__))
ft_digits(unsigned int n);
size_t __attribute__((__overloadable__))
ft_digits(size_t n);


/*
**	\return How many digits in \param str.
**	If in string exist mantissa(data after .(dot) and actually .(dot))
**	 the function will return number of digits including this .(dot).
*/
size_t
ft_fdigits_str(const char *_Nonnull str);

/*
**	\return true is \param str contain only digits or false if not.
*/
bool
ft_isdigits_str(const char *restrict _Nonnull str);

/*
**	\return true is \param str contain only digits and valid float value
**	 or false if not.
*/
bool
ft_isfdigits_str(const char *restrict _Nonnull str);

/*
**	\return true is \param str contain only hex digits or false if not.
*/
bool __attribute__((__overloadable__))
ft_ishex_str(const char *restrict _Nonnull str);
bool __attribute__((__overloadable__))
ft_ishex_str(const char *restrict _Nonnull str, size_t n);

/*
**	\return true is \param str contain only hex digits or false if not.
*/
bool
ft_isalpha_str(const char *restrict _Nonnull str);

/*
**	\return How many blanks skips in string \param str.
*/
size_t
ft_skip_blanks(const char *restrict _Nonnull str);

/*
**	\return How many symbols to first blank symbol in string \param str.
*/
size_t
ft_skip_to_blank(const char *restrict _Nonnull str);

/*
**	Randomize unsigned decimal number.
**	\param limits: Max random number.
**	\return random: number from 0 to \ref limits.
*/
extern size_t
ft_rand(size_t limit);

extern void __attribute__((__overloadable__))
ft_swap(char *restrict _Nonnull a,
		char *restrict _Nonnull b);

extern void __attribute__((__overloadable__))
ft_swap(short *restrict _Nonnull a,
		short *restrict _Nonnull b);

extern void __attribute__((__overloadable__))
ft_swap(int *restrict _Nonnull a,
		int *restrict _Nonnull b);

extern void __attribute__((__overloadable__))
ft_swap(long *restrict _Nonnull a,
		long *restrict _Nonnull b);


extern void __attribute__((__overloadable__))
ft_swap(unsigned char *restrict _Nonnull a,
		unsigned char *restrict _Nonnull b);

extern void __attribute__((__overloadable__))
ft_swap(unsigned short *restrict _Nonnull a,
		unsigned short *restrict _Nonnull b);

extern void __attribute__((__overloadable__))
ft_swap(unsigned int *restrict _Nonnull a,
		unsigned int *restrict _Nonnull b);

extern void __attribute__((__overloadable__))
ft_swap(unsigned long *restrict _Nonnull a,
		unsigned long *restrict _Nonnull b);


#endif

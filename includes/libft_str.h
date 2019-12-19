/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_str.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/15 17:06:13 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 20:56:16 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_STR_H
# define LIBFT_STR_H

# include <string.h>

# include "libft_macroses.h"

/*
**	Free memory for string and set \param as to NULL.
**	\param as pointer to string.
*/
extern void		ft_strdel(char *restrict _Nonnull *restrict _Nullable as);

/*
**	Reverse string \param str.
*/
void			ft_strrev(char *restrict _Nonnull str);

/*
**	Replace all \param s symbols in string \param str to \param r.
*/
void			ft_strrepchr(char *_Nonnull str, int32_t s, int32_t r);

/*
**	Compare string \param s1 with \param s2.
**	\return difference of not matching symbols or 0 if strings equal.
*/
int32_t			ft_strcmp(const char *_Nonnull s1,
					const char *_Nonnull s2);

/*
**	Compare string \param s1 with \param s2 by \param n symbols.
**	\return difference of not matching symbols or 0 if strings equal.
*/
int32_t			ft_strncmp(const char *_Nonnull s1,
					const char *_Nonnull s2,
					size_t n);

/*
**	\return length of string \param str.
*/
size_t			ft_strlen(const char *restrict _Nonnull str);
/*
**	\return length of string \param str.
*/
size_t			ft_strnlen(const char *restrict _Nonnull str,
					size_t max_len);

/*
**	\return converted string \str alphabet symbols to lower case.
*/
char *_Nonnull	ft_strlwr(char *restrict _Nonnull str);

/*
**	\return converted string \str alphabet symbols to upper case.
*/
char *_Nonnull	ft_strupr(char *restrict _Nonnull str);

/*
**	\return new allocated copy string \param src
**	 or NULL if something went wrong.
*/
extern char *_Nullable	ft_strdup(const char *restrict _Nonnull src);

/*
**	\return new allocated copied \param n symbols from string \param src
**	 or NULL if something went wrong.
*/
extern char *_Nullable ft_strndup(const char *restrict _Nonnull s1,
							size_t n);

/*
**	Copy string \param str to \param dest.
**	\return \param dest.
*/
char *_Nonnull ft_strcpy(char *restrict _Nonnull dest,
					const char *restrict _Nonnull str);

/*
**	Copy \param len of string \param src to string \param dest.
**	\return \param dest.
*/
char *_Nonnull	ft_strncpy(char *restrict _Nonnull dest,
						const char *restrict _Nonnull src,
						size_t len);

/*
**	Appends string \param src to \param dest.
**	\return \param dest.
*/
char *_Nonnull	ft_strcat(char *restrict _Nonnull dest,
						const char *restrict _Nonnull src);

/*
**	Appends \param n symbols from string \param src to \param dest.
**	\return \param dest.
*/
char *_Nonnull	ft_strncat(char *restrict _Nonnull dest,
						const char *restrict _Nonnull src,
						size_t n);

/*
** \return a pointer to the first occurrence of the character \param c
**	 in the string \param s.
*/
char *_Nullable	ft_strchr(char *_Nonnull str, int32_t c);

/*
**	\return a pointer to the last occurrence of the character \param c
**	 in the string \param s
*/
char *_Nullable	ft_strrchr(char *restrict _Nonnull s,
						int32_t c);

/*
** \return the first occurrence of the substring \param to_find
**  in the string \param str.
*/
char *_Nullable	ft_strstr(char *restrict _Nonnull str,
						char *restrict _Nonnull to_find);

/*
** \return the first occurrence of the null-terminated string
**	 \param to_find in the string \param str,
**	 where not more than \param len characters are searched.
*/
char *_Nullable	ft_strnstr(char *_Nonnull str,
						const char *restrict _Nonnull to_find,
						size_t len);

/*
**	\return allocate null-terminated string.
*/
extern char *_Nullable	ft_strnew(size_t size);

/*
**	\return allocate a “fresh” substring from the string \param s argument.
**	 The substring begins at index \param start and is of size \param len.
**	 If \param start and \param len aren’t refering to a valid substring,
**	 the behavior is undefined. If the allocation fails, returns NULL.
*/
extern char *_Nullable	ft_strsub(const char *restrict _Nonnull s,
								size_t start,
								size_t len);

/*
**	\return allocate a “fresh” string ending with ’\0’,
**	 result of the concatenation of \param s1 and \param s2.
**	 If the allocation fails the function returns NULL.
*/
extern char *_Nullable	ft_strjoin(const char *restrict _Nonnull s1,									const char *restrict _Nonnull s2);

/*
**	\return allocate a copy of the string \param s without whitespaces
**	 at the beginning or at the end of the string.
**	 Will be considered as whitespaces the following characters ’ ’, ’\n’, ’\t’.
**	 If s has no whitespaces at the beginning or at the end,
**	 the function returns a copy of \param s.
**	 If the allocation fails the function returns NULL.
*/
char *_Nullable	ft_strtrim(const char *restrict _Nonnull s);

/*
** \return allocate an array of “fresh” strings (all ending with ’\0’,
**	 including the array itself) obtained by spliting \param s
**	 using the character \param c as a delimiter.
**	 If the allocation fails the function returns NULL.
*/
char *_Nullable *_Nullable	ft_strsplit(char *_Nonnull s, int32_t c);

/*
**	Convert string \param str to double type.
**	\return 0.0 if string \param str is invalid,
**	 else - number which contained in string
*/
double			ft_atof(const char *_Nonnull str);

/*
**	Convert string \param str to int32_t type.
**	\return 0 if string \param str is invalid,
**	 else - number which contained in string.
*/
int32_t			ft_atoi(const char *restrict _Nonnull str);

/*
**	Convert string \param str to int64_t number.
**	\return 0 if string \param str is invalid,
**	 else - number which contained in string.
*/
int64_t			ft_atol(const char *_Nonnull str);

/*
**	Convert string \param str to int32_t number in \param base notation.
**	\return 0 if string \param str is invalid,
**	 else - number which contained in string converted in \param base notation.
*/
int32_t			ft_atoi_base(const char *_Nonnull str, int8_t base);

/*
**	\return convert number \param n to string in \param base number system.
*/
char *_Nullable	ft_ltoa_base(int64_t value, uint8_t base);

/*
**	\return convert number \param n to string.
*/
char *_Nullable	ft_i128toa(__int128_t n);

/*
**	\return convert number \param n to string.
*/
char *_Nullable	ft_itoa(int32_t n);

/*
**	\return convert number \param n to string.
*/
char *_Nullable	ft_ltoa(int64_t n);

/*
**	\return convert number \param num to \param dst string
**	 in \param radix notation.
*/
char *_Nullable	ft_ultoa(unsigned long num,
						char *_Nonnull restrict dst,
						int base);

#endif

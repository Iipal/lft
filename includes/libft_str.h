/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_str.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/15 17:06:13 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 19:32:36 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_STR_H
# define LIBFT_STR_H

# include <string.h>

# include "libft_macroses.h"
# include "libft_defs.h"

/*
**	Free memory for string and set \param as to NULL.
**	\param as pointer to string.
*/
extern void		ft_strdel(char *LFT_RESTRICT LFT_NONNULL
					*LFT_NULLALBE LFT_RESTRICT as);

/*
**	Reverse string \param str.
*/
void			ft_strrev(char *LFT_RESTRICT LFT_NONNULL str);

/*
**	Replace all \param s symbols in string \param str to \param r.
*/
void			ft_strrepchr(char *LFT_RESTRICT LFT_NONNULL str,
					int32_t s,
					int32_t r);

/*
**	Compare string \param s1 with \param s2.
**	\return difference of not matching symbols or 0 if strings equal.
*/
int32_t			ft_strcmp(const char *LFT_NONNULL s1,
					const char *LFT_NONNULL s2);

/*
**	Compare string \param s1 with \param s2 by \param n symbols.
**	\return difference of not matching symbols or 0 if strings equal.
*/
int32_t			ft_strncmp(const char *LFT_NONNULL s1,
					const char *LFT_NONNULL s2,
					size_t n);

/*
**	\return length of string \param str.
*/
size_t			ft_strlen(const char *LFT_RESTRICT LFT_NONNULL str);
/*
**	\return length of string \param str.
*/
size_t			ft_strnlen(const char *LFT_RESTRICT LFT_NONNULL str,
					size_t max_len);

/*
**	\return converted string \str alphabet symbols to lower case.
*/
char *LFT_NONNULL	ft_strlwr(char *LFT_RESTRICT LFT_NONNULL str);

/*
**	\return converted string \str alphabet symbols to upper case.
*/
char *LFT_NONNULL	ft_strupr(char *LFT_RESTRICT LFT_NONNULL str);

/*
**	\return new allocated copy string \param src
**	 or NULL if something went wrong.
*/
extern char *LFT_NULLALBE	ft_strdup(const char *LFT_RESTRICT LFT_NONNULL src);

/*
**	\return new allocated copied \param n symbols from string \param src
**	 or NULL if something went wrong.
*/
extern char *LFT_NULLALBE ft_strndup(const char *LFT_RESTRICT LFT_NONNULL s1,
							size_t n);

/*
**	Copy string \param str to \param dest.
**	\return \param dest.
*/
char *LFT_NONNULL ft_strcpy(char *LFT_RESTRICT LFT_NONNULL dest,
					const char *LFT_RESTRICT LFT_NONNULL str);

/*
**	Copy \param len of string \param src to string \param dest.
**	\return \param dest.
*/
char *LFT_NONNULL	ft_strncpy(char *LFT_RESTRICT LFT_NONNULL dest,
						const char *LFT_RESTRICT LFT_NONNULL src,
						size_t len);

/*
**	Appends string \param src to \param dest.
**	\return \param dest.
*/
char *LFT_NONNULL	ft_strcat(char *LFT_RESTRICT LFT_NONNULL dest,
						const char *LFT_RESTRICT LFT_NONNULL src);

/*
**	Appends \param n symbols from string \param src to \param dest.
**	\return \param dest.
*/
char *LFT_NONNULL	ft_strncat(char *LFT_RESTRICT LFT_NONNULL dest,
						const char *LFT_RESTRICT LFT_NONNULL src,
						size_t n);

/*
** \return a pointer to the first occurrence of the character \param c
**	 in the string \param s.
*/
char *LFT_NULLALBE	ft_strchr(char *LFT_NONNULL str, int32_t c);

/*
**	\return a pointer to the last occurrence of the character \param c
**	 in the string \param s
*/
char *LFT_NULLALBE	ft_strrchr(char *LFT_RESTRICT LFT_NONNULL s,
						int32_t c);

/*
** \return the first occurrence of the substring \param to_find
**  in the string \param str.
*/
char *LFT_NULLALBE	ft_strstr(char *LFT_RESTRICT LFT_NONNULL str,
						char *LFT_RESTRICT LFT_NONNULL to_find);

/*
** \return the first occurrence of the null-terminated string
**	 \param to_find in the string \param str,
**	 where not more than \param len characters are searched.
*/
char *LFT_NULLALBE	ft_strnstr(char *LFT_NONNULL str,
						const char *LFT_RESTRICT LFT_NONNULL to_find,
						size_t len);

/*
**	\return allocate null-terminated string.
*/
extern char *LFT_NULLALBE	ft_strnew(size_t size);

/*
**	\return allocate a “fresh” substring from the string \param s argument.
**	 The substring begins at index \param start and is of size \param len.
**	 If \param start and \param len aren’t refering to a valid substring,
**	 the behavior is undefined. If the allocation fails, returns NULL.
*/
extern char *LFT_NULLALBE	ft_strsub(const char *LFT_RESTRICT LFT_NONNULL s,
								size_t start,
								size_t len);

/*
**	\return allocate a “fresh” string ending with ’\0’,
**	 result of the concatenation of \param s1 and \param s2.
**	 If the allocation fails the function returns NULL.
*/
extern char *LFT_NULLALBE	ft_strjoin(const char *LFT_RESTRICT LFT_NONNULL s1,									const char *LFT_RESTRICT LFT_NONNULL s2);

/*
**	\return allocate a copy of the string \param s without whitespaces
**	 at the beginning or at the end of the string.
**	 Will be considered as whitespaces the following characters ’ ’, ’\n’, ’\t’.
**	 If s has no whitespaces at the beginning or at the end,
**	 the function returns a copy of \param s.
**	 If the allocation fails the function returns NULL.
*/
char *LFT_NULLALBE	ft_strtrim(const char *LFT_RESTRICT LFT_NONNULL s);

/*
** \return allocate an array of “fresh” strings (all ending with ’\0’,
**	 including the array itself) obtained by spliting \param s
**	 using the character \param c as a delimiter.
**	 If the allocation fails the function returns NULL.
*/
char *LFT_NULLALBE *LFT_NULLALBE	ft_strsplit(char *LFT_NONNULL s, int32_t c);

/*
**	Convert string \param str to double type.
**	\return 0.0 if string \param str is invalid,
**	 else - number which contained in string
*/
double			ft_atof(const char *LFT_NONNULL str);

/*
**	Convert string \param str to int32_t type.
**	\return 0 if string \param str is invalid,
**	 else - number which contained in string.
*/
int32_t			ft_atoi(const char *LFT_RESTRICT LFT_NONNULL str);

/*
**	Convert string \param str to int64_t number.
**	\return 0 if string \param str is invalid,
**	 else - number which contained in string.
*/
int64_t			ft_atol(const char *LFT_NONNULL str);

/*
**	Convert string \param str to int32_t number in \param base notation.
**	\return 0 if string \param str is invalid,
**	 else - number which contained in string converted in \param base notation.
*/
int32_t			ft_atoi_base(const char *LFT_NONNULL str, int8_t base);

/*
**	\return convert number \param n to string in \param base number system.
*/
char *LFT_NULLALBE	ft_ltoa_base(int64_t value, uint8_t base);

/*
**	\return convert number \param n to string.
*/
char *LFT_NULLALBE	ft_i128toa(__int128_t n);

/*
**	\return convert number \param n to string.
*/
char *LFT_NULLALBE	ft_itoa(int32_t n);

/*
**	\return convert number \param n to string.
*/
char *LFT_NULLALBE	ft_ltoa(int64_t n);

/*
**	\return convert number \param num to \param dst string
**	 in \param radix notation.
*/
char *LFT_NULLALBE	ft_ultoa(unsigned long num,
						char *LFT_NONNULL LFT_RESTRICT dst,
						int base);

#endif

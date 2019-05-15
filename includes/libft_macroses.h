/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_macroses.h                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/15 16:59:23 by tmaluh            #+#    #+#             */
/*   Updated: 2019/05/15 17:16:57 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_MACROSES_H
# define LIBFT_MACROSES_H

# include <stdint.h>

/*
**	ft_gnl reading buffer size.
*/
# define BUFF_SIZE 2048

/*
**	Most useful macro:
*/
# define MSG(msg) ft_putstr_fd(msg, STDERR_FILENO)
# define MSGN(msg) ft_putendl_fd(msg, STDERR_FILENO)

# define ISARGS(ac, av) {--ac;++av; IFM_F(E_USAGE, !ac);}

# define IFR(ex, ret) if ((ex)) {return (ret);}
# define IF_F(ex) if ((ex)) return (false);
# define IFDO(ex, do) if ((ex)) {do;}
# define IFDOM(msg, ex, do) if ((ex)) {MSGN(msg); do;}
# define IFDOR(ex, do, ret) {if ((ex)) {do; return(ret);}}
# define IFDOMR(msg, ex, do, ret) if ((ex)) {MSGN(msg); do; return (ret);}
# define IFME(msg, ex, do, ret) if ((ex)) {perror(msg); do; return (ret);}
# define IFM_F(msg, ex) if ((ex)) {MSGN(msg); return (false);}

# define NO(msg, ex, do, ret) if (!(ex)) {MSGN(msg); do; return(ret);}
# define NO_R(ex, ret) if (!(ex)) return (ret)
# define NO_F(ex) if (!(ex)) return (false)
# define NODO(ex, do) if (!(ex)) {do;}
# define NODO_F(ex, do) if (!(ex)) {do; return(false);}
# define NOM_F(msg, ex) if (!(ex)) {MSGN(msg); return (false);}

# define C(type, dest, x) ft_bzero(dest, sizeof(type) * (x))
# define MEM(t, d, x, m) NO(m,d=(t*)malloc(sizeof(t)*(x)),exit(1),0);C(t,d,x)

# define FREE(trash, del) if ((trash)) {del((trash)); (trash) = NULL;}

# define ABS(var) ((var) < 0) ? -(var) : (var)

# define DOT    typedef struct s_dot    Dot
# define FDOT   typedef struct s_fdot   fDot
# define STR    typedef char*           string
# define CSTR   typedef const char*     cstring
# define USTR   typedef unsigned char*  ustring
# define UCHAR  typedef unsigned char   uchar
# define STRTAB typedef char**          strtab
# define PVOID  typedef void*           pvoid
# define BOOL   typedef enum e_bool     bool
# define IARR   typedef int32_t*        iarr
# define ITAB   typedef int32_t**       itab
# define UIARR  typedef uint32_t*       uiarr
# define UINT   typedef uint32_t        uint

STR;
CSTR;
USTR;
UCHAR;
STRTAB;
PVOID;
IARR;
ITAB;
UIARR;
UINT;

enum	e_bool {false, true} __attribute__((packed));

struct	s_dot
{
	int32_t	x;
	int32_t	y;
};

struct	s_fdot
{
	double_t	x;
	double_t	y;
};

BOOL;
DOT;
FDOT;

#endif

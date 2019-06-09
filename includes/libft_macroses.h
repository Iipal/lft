/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_macroses.h                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/15 16:59:23 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/05 22:06:05 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_MACROSES_H
# define LIBFT_MACROSES_H

# include <stdint.h>

enum	e_bool {false, true} __attribute__((packed));

# define BOOL typedef enum e_bool bool

BOOL;

/*
**	ft_gnl reading buffer size.
*/
# define BUFF_SIZE 2048

/*
**	Most useful macro:
*/
# define MSG(msg) ft_putstr_fd(msg, STDERR_FILENO)
# define MSGN(msg) ft_putendl_fd(msg, STDERR_FILENO)

# define ISARGS(ac, av, usage_msg) {--ac;++av; IFM_F(usage_msg, !ac);}

# define IFR(ex, ret) if ((ex)) {return (ret);}
# define IFMR(msg, ex, ret) if ((ex)) {MSGN(msg); return (ret);}
# define IF_F(ex) if ((ex)) {return (false);}
# define IFDO(ex, do) if ((ex)) {do;}
# define IFDO_F(ex, do) if ((ex)) {do; return (false);}
# define IFDOM(msg, ex, do) if ((ex)) {MSGN(msg); do;}
# define IFDOR(ex, do, ret) {if ((ex)) {do; return(ret);}}
# define IFDOMR(msg, ex, do, ret) if ((ex)) {MSGN(msg); do; return (ret);}
# define IFME(msg, ex, do, ret) if ((ex)) {perror(msg); do; return (ret);}
# define IFM_F(msg, ex) if ((ex)) {MSGN(msg); return (false);}

# define NO(msg, ex, do, ret) if (!(ex)) {MSGN(msg); do; return(ret);}
# define NO_R(ex, ret) if (!(ex)) {return (ret);}
# define NO_F(ex) if (!(ex)) {return (false);}
# define NODO(ex, do) if (!(ex)) {do;}
# define NODO_F(ex, do) if (!(ex)) {do; return(false);}
# define NOM_F(msg, ex) if (!(ex)) {MSGN(msg); return (false);}
# define NOM_R(msg, ex, ret) if (!(ex)) {MSGN(msg); return (ret);}

# define SWAP(a, b) {typeof (a) _a = (a); (a) = (b); (b) = _a;}

# define SIZEOF(type, x) (sizeof(type) * (x))

# define ZERO(type, dest, x) ft_bzero(dest, SIZEOF(type,x))
# define MALLOC(dest, type, x) (dest) = (type*)malloc(SIZEOF(type, x))
# define MEM(t, d, x, m) {NO(m,MALLOC(d,t,x),exit(1),0);ZERO(t,d,x);}

# define FREE(trash, del) if ((trash)) {del((trash)); (trash) = NULL;}

# define ABS(var) ((var) < 0) ? -(var) : (var)

# define STR    typedef char*           string
# define USTR   typedef unsigned char*  ustring
# define UCHAR  typedef unsigned char   uchar
# define STRTAB typedef char**          strtab
# define PVOID  typedef void*           pvoid
# define IARR   typedef int32_t*        iarr
# define ITAB   typedef int32_t**       itab
# define UIARR  typedef uint32_t*       uiarr
# define UINT   typedef uint32_t        uint

STR;
USTR;
UCHAR;
STRTAB;
PVOID;
IARR;
ITAB;
UIARR;
UINT;

#endif
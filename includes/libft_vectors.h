/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_vectors.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/18 12:16:52 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/09 05:01:34 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_VECTORS_H
# define LIBFT_VECTORS_H

# include <math.h>
# include <stdint.h>
# include "libft_macroses.h"

typedef double_t t_v4df __attribute__((vector_size(32),aligned));

# define X(v) v[0]
# define Y(v) v[1]
# define Z(v) v[2]
# define W(v) v[3]

# define VDISC(a, b, c) ((b) * (b) - 4.0 * (a) * (c))

/*
**	u_ prefix is short name for utils.
*/
extern double_t	u_vlen(const t_v4df v);
extern double_t	u_vdot(const t_v4df v1, const t_v4df v2);

extern t_v4df	u_vnorm(const t_v4df v);

extern t_v4df	u_vmuld(const t_v4df v, const double_t d);
extern t_v4df	u_vaddd(const t_v4df v, const double_t d);
extern t_v4df	u_vsubd(const t_v4df v, const double_t d);
extern t_v4df	u_vdivd(const t_v4df v, const double_t d);

extern t_v4df	u_vmulv(const t_v4df a, const t_v4df b);
extern t_v4df	u_vaddv(const t_v4df a, const t_v4df b);
extern t_v4df	u_vsubv(const t_v4df a, const t_v4df b);
extern t_v4df	u_vdivv(const t_v4df a, const t_v4df b);

extern t_v4df	u_vinvert(const t_v4df v);

extern bool		u_vec_range(t_v4df v,
					const double_t max_range,
					const double_t min_range);
extern bool		u_isd_range(double_t a,
					const double_t max_range,
					const double_t min_range);
extern double_t	u_d_range(double_t x,
					const double_t max_range,
					const double_t min_range);

#endif

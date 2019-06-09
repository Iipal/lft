/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   u_vnorm.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/21 22:34:31 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/09 05:01:31 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline t_v4df	u_vnorm(const t_v4df v)
{
	const double_t	sqrtvdv = sqrt(u_vdot(v, v));
	const t_v4df	c = {X(v) / sqrtvdv, Y(v) / sqrtvdv, Z(v) / sqrtvdv, 0.0};

	return (c);
}

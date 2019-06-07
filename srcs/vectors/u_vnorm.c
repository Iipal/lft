/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   u_vnorm.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/21 22:34:31 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/07 18:38:18 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline __v4df	u_vnorm(const __v4df v)
{
	const double_t	sqrtvdv = sqrt(u_vdot(v, v));
	const __v4df	c = {X(v) / sqrtvdv, Y(v) / sqrtvdv, Z(v) / sqrtvdv, 0.0};

	return (c);
}

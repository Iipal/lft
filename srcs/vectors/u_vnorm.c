/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   u_vnorm.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/05/21 22:34:31 by tmaluh            #+#    #+#             */
/*   Updated: 2019/06/09 05:16:27 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

inline __v4df	u_vnorm(const __v4df v)
{
	const double_t	sqrtvdv = sqrt(u_vdot(v, v));

	return ((__v4df){X(v) / sqrtvdv, Y(v) / sqrtvdv, Z(v) / sqrtvdv, 0.0});
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_pow.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/10/27 18:56:53 by tmaluh            #+#    #+#             */
/*   Updated: 2018/10/28 14:46:43 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../includes/lft_math.h"

int		ft_pow(int nb, int exp)
{
	if (exp <= 0)
		return (1);
	else
		return (nb * (ft_pow(nb, exp - 1)));
}

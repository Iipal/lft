/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_defs.h                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tmaluh <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/12/18 18:36:19 by tmaluh            #+#    #+#             */
/*   Updated: 2019/12/18 18:37:19 by tmaluh           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_DEFS_H
# define LIBFT_DEFS_H

# if defined __linux__
#  include <sys/cdefs.h>

#  define LFT_NONNULL _Nonnull
#  define LFT_NULLALBE _Nullable

#  if defined __restrict
#   define LFT_RESTRICT __restrict
#  elif defined __restrict_arr
#   define LFT_RESTRICT __restrict_arr
#  else
#   define LFT_RESTRICT
#  endif

# elif defined __APPLE__

#  define LFT_NONNULL __nonnull
#  define LFT_NULLALBE __nullable
#  define LFT_RESTRICT __restrict

# else

#  define LFT_NONNULL  /* unknown behavior on unknown system */
#  define LFT_NULLALBE /* unknown behavior on unknown system */
#  define LFT_RESTRICT /* unknown behavior on unknown system */

# endif

#endif

# ~~~
# This file is part of the dune-xt project:
#   https://github.com/dune-community/dune-xt
# Copyright 2009-2018 dune-xt developers and contributors. All rights reserved.
# License: Dual licensed as BSD 2-Clause License (http://opensource.org/licenses/BSD-2-Clause)
#      or  GPL-2.0+ (http://opensource.org/licenses/gpl-license)
#          with "runtime exception" (http://www.dune-project.org/license.html)
# Authors:
#   Felix Schindler (2019)
#   René Fritze     (2018)
#   Tim Keil        (2018)
#   Tobias Leibner  (2019)
# ~~~

dune_pybindxi_add_module(_boundaryinfo EXCLUDE_FROM_ALL boundaryinfo.cc)
dune_pybindxi_add_module(_types EXCLUDE_FROM_ALL types.cc)
dune_pybindxi_add_module(_walker EXCLUDE_FROM_ALL walker.cc)
dune_pybindxi_add_module(_provider EXCLUDE_FROM_ALL provider.cc)

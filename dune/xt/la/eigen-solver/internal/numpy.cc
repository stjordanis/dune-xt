// This file is part of the dune-xt project:
//   https://github.com/dune-community/dune-xt
// Copyright 2009-2018 dune-xt developers and contributors. All rights reserved.
// License: Dual licensed as BSD 2-Clause License (http://opensource.org/licenses/BSD-2-Clause)
//      or  GPL-2.0+ (http://opensource.org/licenses/gpl-license)
//          with "runtime exception" (http://www.dune-project.org/license.html)
// Authors:
//   Felix Schindler (2017)
//   René Fritze     (2018)

#include "config.h"

#include <dune/pybindxi/interpreter.hh>

namespace Dune {
namespace XT {
namespace LA {
namespace internal {


bool numpy_eigensolver_available()
{
  try {
    PybindXI::GlobalInterpreter().import_module("numpy.linalg");
  } catch (...) {
    return false;
  }
  return true;
} // ... numpy_eigensolver_available(...)


} // namespace internal
} // namespace LA
} // namespace XT
} // namespace Dune

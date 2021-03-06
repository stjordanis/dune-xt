// This file is part of the dune-xt project:
//   https://github.com/dune-community/dune-xt
// Copyright 2009-2018 dune-xt developers and contributors. All rights reserved.
// License: Dual licensed as BSD 2-Clause License (http://opensource.org/licenses/BSD-2-Clause)
//      or  GPL-2.0+ (http://opensource.org/licenses/gpl-license)
//          with "runtime exception" (http://www.dune-project.org/license.html)
// Authors:
//   Felix Schindler (2017, 2019)
//   René Fritze     (2018)
//
// reserved. License: Dual licensed as BSD 2-Clause License
// (http://opensource.org/licenses/BSD-2-Clause)

#ifndef DUNE_XT_GRID_WALKER_BINDINGS_HH
#define DUNE_XT_GRID_WALKER_BINDINGS_HH

#include <dune/pybindxi/pybind11.h>

#include "grids.bindings.hh"
#include "layers.bindings.hh"
#include <dune/xt/grid/gridprovider/provider.hh>
#include <dune/xt/grid/type_traits.hh>
#include <dune/xt/grid/walker.hh>

namespace Dune {
namespace XT {
namespace Grid {
namespace bindings {
namespace internal {

template <class WalkerOrDerivedType, class... Bases>
static void bind_walker_functions(pybind11::class_<WalkerOrDerivedType, Bases...>& c)
{
  namespace py = pybind11;
  using namespace pybind11::literals;
  using type = WalkerOrDerivedType;

  c.def("clear", &type::clear);
  c.def("append", [](type& self, type& other) { self.append(other); }, "other"_a, py::keep_alive<1, 2>());
  c.def("prepare", &type::prepare);
  c.def("finalize", &type::finalize);
  c.def("walk", [](type& self, const bool use_tbb) { self.walk(use_tbb); }, "use_tbb"_a = false);
} // ... bind(...)

} // namespace internal

template <class G, Layers layer, Backends backend>
class Walker
{
  static_assert(is_grid<G>::value, "");
  typedef typename Layer<G, layer, backend>::type GL;

public:
  using type = XT::Grid::Walker<GL>;
  using bound_type = pybind11::class_<type>;

  static bound_type bind(pybind11::module& m)
  {
    using pybind11::operator""_a;

    // we need to add the factory methods first, since adding the class below
    // might fail (if someone added it before)
    m.def(std::string("make_walker_on_" + layer_names[layer] + "_" + backend_name<backend>::value()).c_str(),
          [](GridProvider<G>& grid_provider, const int level) {
            return type(grid_provider.template layer<layer, backend>(level));
          },
          "grid_provider"_a,
          "level"_a = -1);

    const auto gl_name = grid_name<G>::value() + "_" + layer_names[layer] + "_" + backend_name<backend>::value();
    bound_type c(m, Common::to_camel_case(std::string("walker_") + gl_name).c_str());
    internal::bind_walker_functions(c);
    return c;
  }
}; // class Walker

} // namespace bindings
} // namespace Grid
} // namespace XT
} // namespace Dune

#endif // DUNE_XT_GRID_WALKER_BINDINGS_HH

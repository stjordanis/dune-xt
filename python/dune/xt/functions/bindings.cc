// This file is part of the dune-xt-functions project:
//   https://github.com/dune-community/dune-xt-functions
// Copyright 2009-2018 dune-xt-functions developers and contributors. All rights reserved.
// License: Dual licensed as BSD 2-Clause License (http://opensource.org/licenses/BSD-2-Clause)
//      or  GPL-2.0+ (http://opensource.org/licenses/gpl-license)
//          with "runtime exception" (http://www.dune-project.org/license.html)
// Authors:
//   Felix Schindler (2016 - 2017)
//   Rene Milk       (2018)

#include "config.h"

#include <string>
#include <vector>

#include <dune/common/parallel/mpihelper.hh>

#include <dune/pybindxi/pybind11.h>
#include <dune/pybindxi/stl.h>

#include <python/dune/xt/common/bindings.hh>
#include <python/dune/xt/grid/grids.bindings.hh>

#include "interfaces.pbh"
#include "constant.pbh"
#include "checkerboard.pbh"
#include "ESV2007.bindings.hh"
#include "expression.pbh"
#include "spe10.pbh"


template <class G>
void addbind_for_Grid(pybind11::module& m)
{
  const auto grid_id = Dune::XT::Grid::bindings::grid_name<G>::value();

  auto i_1_1 = Dune::XT::Functions::bind_LocalizableFunctionInterface<G, 1, 1>(m, grid_id);
  auto i_2_1 = Dune::XT::Functions::bind_LocalizableFunctionInterface<G, 2, 1>(m, grid_id);
  auto i_3_1 = Dune::XT::Functions::bind_LocalizableFunctionInterface<G, 3, 1>(m, grid_id);
  auto i_4_1 = Dune::XT::Functions::bind_LocalizableFunctionInterface<G, 4, 1>(m, grid_id);

  auto i_d_d = Dune::XT::Functions::bind_LocalizableFunctionInterface<G, G::dimension, G::dimension>(m, grid_id);

  Dune::XT::Functions::bind_combined_LocalizableFunction<G,
                                                         G::dimension,
                                                         Dune::XT::Functions::internal::Combination::difference,
                                                         1,
                                                         1,
                                                         1,
                                                         1>(m, grid_id);
  Dune::XT::Functions::
      addbind_LocalizableFunctionInterface_combined_op<G,
                                                       G::dimension,
                                                       Dune::XT::Functions::internal::Combination::difference,
                                                       1,
                                                       1,
                                                       1,
                                                       1>(i_1_1);
  Dune::XT::Functions::bind_combined_LocalizableFunction<G,
                                                         G::dimension,
                                                         Dune::XT::Functions::internal::Combination::difference,
                                                         2,
                                                         1,
                                                         2,
                                                         1>(m, grid_id);
  Dune::XT::Functions::
      addbind_LocalizableFunctionInterface_combined_op<G,
                                                       G::dimension,
                                                       Dune::XT::Functions::internal::Combination::difference,
                                                       2,
                                                       1,
                                                       2,
                                                       1>(i_2_1);
  Dune::XT::Functions::bind_combined_LocalizableFunction<G,
                                                         G::dimension,
                                                         Dune::XT::Functions::internal::Combination::difference,
                                                         3,
                                                         1,
                                                         3,
                                                         1>(m, grid_id);
  Dune::XT::Functions::
      addbind_LocalizableFunctionInterface_combined_op<G,
                                                       G::dimension,
                                                       Dune::XT::Functions::internal::Combination::difference,
                                                       3,
                                                       1,
                                                       3,
                                                       1>(i_3_1);
  Dune::XT::Functions::bind_combined_LocalizableFunction<G,
                                                         G::dimension,
                                                         Dune::XT::Functions::internal::Combination::difference,
                                                         4,
                                                         1,
                                                         4,
                                                         1>(m, grid_id);
  Dune::XT::Functions::
      addbind_LocalizableFunctionInterface_combined_op<G,
                                                       G::dimension,
                                                       Dune::XT::Functions::internal::Combination::difference,
                                                       4,
                                                       1,
                                                       4,
                                                       1>(i_4_1);
  Dune::XT::Functions::bind_combined_LocalizableFunction<G,
                                                         G::dimension,
                                                         Dune::XT::Functions::internal::Combination::difference,
                                                         2,
                                                         2,
                                                         2,
                                                         2>(m, grid_id);
  Dune::XT::Functions::
      addbind_LocalizableFunctionInterface_combined_op<G,
                                                       G::dimension,
                                                       Dune::XT::Functions::internal::Combination::difference,
                                                       G::dimension,
                                                       G::dimension,
                                                       G::dimension,
                                                       G::dimension>(i_d_d);


  Dune::XT::Functions::
      bind_combined_LocalizableFunction<G, G::dimension, Dune::XT::Functions::internal::Combination::sum, 1, 1, 1, 1>(
          m, grid_id);
  Dune::XT::Functions::addbind_LocalizableFunctionInterface_combined_op<G,
                                                                        G::dimension,
                                                                        Dune::XT::Functions::internal::Combination::sum,
                                                                        1,
                                                                        1,
                                                                        1,
                                                                        1>(i_1_1);
  Dune::XT::Functions::
      bind_combined_LocalizableFunction<G, G::dimension, Dune::XT::Functions::internal::Combination::sum, 2, 1, 2, 1>(
          m, grid_id);
  Dune::XT::Functions::addbind_LocalizableFunctionInterface_combined_op<G,
                                                                        G::dimension,
                                                                        Dune::XT::Functions::internal::Combination::sum,
                                                                        2,
                                                                        1,
                                                                        2,
                                                                        1>(i_2_1);
  Dune::XT::Functions::
      bind_combined_LocalizableFunction<G, G::dimension, Dune::XT::Functions::internal::Combination::sum, 3, 1, 3, 1>(
          m, grid_id);
  Dune::XT::Functions::addbind_LocalizableFunctionInterface_combined_op<G,
                                                                        G::dimension,
                                                                        Dune::XT::Functions::internal::Combination::sum,
                                                                        3,
                                                                        1,
                                                                        3,
                                                                        1>(i_3_1);
  Dune::XT::Functions::
      bind_combined_LocalizableFunction<G, G::dimension, Dune::XT::Functions::internal::Combination::sum, 4, 1, 4, 1>(
          m, grid_id);
  Dune::XT::Functions::addbind_LocalizableFunctionInterface_combined_op<G,
                                                                        G::dimension,
                                                                        Dune::XT::Functions::internal::Combination::sum,
                                                                        4,
                                                                        1,
                                                                        4,
                                                                        1>(i_4_1);
  Dune::XT::Functions::
      bind_combined_LocalizableFunction<G, G::dimension, Dune::XT::Functions::internal::Combination::sum, 2, 2, 2, 2>(
          m, grid_id);
  Dune::XT::Functions::addbind_LocalizableFunctionInterface_combined_op<G,
                                                                        G::dimension,
                                                                        Dune::XT::Functions::internal::Combination::sum,
                                                                        G::dimension,
                                                                        G::dimension,
                                                                        G::dimension,
                                                                        G::dimension>(i_d_d);

  Dune::XT::Functions::bind_combined_LocalizableFunction<G,
                                                         G::dimension,
                                                         Dune::XT::Functions::internal::Combination::product,
                                                         1,
                                                         1,
                                                         1,
                                                         1>(m, grid_id);
  Dune::XT::Functions::
      addbind_LocalizableFunctionInterface_combined_op<G,
                                                       G::dimension,
                                                       Dune::XT::Functions::internal::Combination::product,
                                                       1,
                                                       1,
                                                       1,
                                                       1>(i_1_1);
  Dune::XT::Functions::bind_combined_LocalizableFunction<G,
                                                         G::dimension,
                                                         Dune::XT::Functions::internal::Combination::product,
                                                         1,
                                                         1,
                                                         2,
                                                         1>(m, grid_id);
  Dune::XT::Functions::
      addbind_LocalizableFunctionInterface_combined_op<G,
                                                       G::dimension,
                                                       Dune::XT::Functions::internal::Combination::product,
                                                       1,
                                                       1,
                                                       2,
                                                       1>(i_1_1);
  Dune::XT::Functions::bind_combined_LocalizableFunction<G,
                                                         G::dimension,
                                                         Dune::XT::Functions::internal::Combination::product,
                                                         1,
                                                         1,
                                                         3,
                                                         1>(m, grid_id);
  Dune::XT::Functions::
      addbind_LocalizableFunctionInterface_combined_op<G,
                                                       G::dimension,
                                                       Dune::XT::Functions::internal::Combination::product,
                                                       1,
                                                       1,
                                                       3,
                                                       1>(i_1_1);
  Dune::XT::Functions::bind_combined_LocalizableFunction<G,
                                                         G::dimension,
                                                         Dune::XT::Functions::internal::Combination::product,
                                                         1,
                                                         1,
                                                         4,
                                                         1>(m, grid_id);
  Dune::XT::Functions::
      addbind_LocalizableFunctionInterface_combined_op<G,
                                                       G::dimension,
                                                       Dune::XT::Functions::internal::Combination::product,
                                                       1,
                                                       1,
                                                       4,
                                                       1>(i_1_1);
  Dune::XT::Functions::bind_combined_LocalizableFunction<G,
                                                         G::dimension,
                                                         Dune::XT::Functions::internal::Combination::product,
                                                         1,
                                                         1,
                                                         2,
                                                         2>(m, grid_id);
  Dune::XT::Functions::
      addbind_LocalizableFunctionInterface_combined_op<G,
                                                       G::dimension,
                                                       Dune::XT::Functions::internal::Combination::product,
                                                       1,
                                                       1,
                                                       2,
                                                       2>(i_1_1);

  Dune::XT::Functions::bind_ConstantFunction<G, G::dimension, 1, 1>(m, grid_id);
  Dune::XT::Functions::bind_ConstantFunction<G, G::dimension, 2, 1>(m, grid_id);
  Dune::XT::Functions::bind_ConstantFunction<G, G::dimension, 3, 1>(m, grid_id);
  Dune::XT::Functions::bind_ConstantFunction<G, G::dimension, 4, 1>(m, grid_id);
  Dune::XT::Functions::bind_ConstantFunction<G, G::dimension, 2, 2>(m, grid_id);

  Dune::XT::Functions::bind_CheckerboardFunction<G, G::dimension, 1, 1>(m, grid_id);
  //  Dune::XT::Functions::bind_CheckerboardFunction<G, G::dimension, 2, 1>(m, grid_id);
  //  Dune::XT::Functions::bind_CheckerboardFunction<G, G::dimension, 3, 1>(m, grid_id);
  //  Dune::XT::Functions::bind_CheckerboardFunction<G, G::dimension, 4, 1>(m, grid_id);

  Dune::XT::Functions::bindings::ESV2007::CutoffFunction<G>::bind(m);

  Dune::XT::Functions::bind_ExpressionFunction<G, G::dimension, 1, 1>(m, grid_id);
  Dune::XT::Functions::bind_ExpressionFunction<G, G::dimension, 2, 1>(m, grid_id);
  Dune::XT::Functions::bind_ExpressionFunction<G, G::dimension, 3, 1>(m, grid_id);
  Dune::XT::Functions::bind_ExpressionFunction<G, G::dimension, 4, 1>(m, grid_id);

  Dune::XT::Functions::bind_Spe10Model1Function<G, G::dimension, 1, 1>(m, grid_id);
} // ... addbind_for_Grid(...)


PYBIND11_PLUGIN(_functions)
{
  namespace py = pybind11;
  using namespace pybind11::literals;

  py::module m("_functions", "dune-xt-functions");

  Dune::XT::Common::bindings::addbind_exceptions(m);

  py::module::import("dune.xt.common");
  py::module::import("dune.xt.grid");

  addbind_for_Grid<Dune::YaspGrid<1, Dune::EquidistantOffsetCoordinates<double, 1>>>(m);
  addbind_for_Grid<Dune::YaspGrid<2, Dune::EquidistantOffsetCoordinates<double, 2>>>(m);
#if HAVE_DUNE_ALUGRID
  addbind_for_Grid<Dune::ALUGrid<2, 2, Dune::simplex, Dune::conforming>>(m);
#endif
  //#if HAVE_UG
  //  addbind_for_Grid<Dune::UGGrid<2>>(m, "2d_simplex_uggrid");
  //#endif
  //#if HAVE_ALBERTA
  //  addbind_for_Grid<Dune::AlbertaGrid<2, 2>>(m, "2d_simplex_albertagrid");
  //#endif

  Dune::XT::Common::bindings::add_initialization(m, "dune.xt.functions");
  return m.ptr();
}

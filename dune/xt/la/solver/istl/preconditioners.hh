// This file is part of the dune-xt project:
//   https://github.com/dune-community/dune-xt
// Copyright 2009-2018 dune-xt developers and contributors. All rights reserved.
// License: Dual licensed as BSD 2-Clause License (http://opensource.org/licenses/BSD-2-Clause)
//      or  GPL-2.0+ (http://opensource.org/licenses/gpl-license)
//          with "runtime exception" (http://www.dune-project.org/license.html)
// Authors:
//   Felix Schindler (2019)
//   Tobias Leibner  (2019)

#ifndef DUNE_XT_LA_SOLVER_ISTL_PRECONDITIONERS_HH
#define DUNE_XT_LA_SOLVER_ISTL_PRECONDITIONERS_HH

#include <type_traits>
#include <cmath>

#include <dune/istl/preconditioners.hh>

namespace Dune {
namespace XT {
namespace LA {


template <class O>
class IdentityPreconditioner : public Dune::Preconditioner<typename O::domain_type, typename O::range_type>
{
public:
  //! \brief The domain type of the preconditioner.
  typedef typename O::domain_type domain_type;
  //! \brief The range type of the preconditioner.
  typedef typename O::range_type range_type;
  //! \brief The field type of the preconditioner.
  typedef typename range_type::field_type field_type;
  typedef O InverseOperator;

  IdentityPreconditioner(const SolverCategory::Category cat)
    : category_(cat)
  {}

  //! Category of the preconditioner (see SolverCategory::Category)
  SolverCategory::Category category() const override final
  {
    return category_;
  }

  void pre(domain_type&, range_type&) override final {}

  void apply(domain_type& v, const range_type& d) override final
  {
    v = d;
  }

  void post(domain_type&) override final {}

private:
  SolverCategory::Category category_;
};


} // namespace LA
} // namespace XT
} // namespace Dune

#endif // DUNE_XT_LA_SOLVER_ISTL_PRECONDITIONERS_HH

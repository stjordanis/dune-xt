// This file is part of the dune-stuff project:
//   https://users.dune-project.org/projects/dune-stuff/
// Copyright Holders: Felix Albrecht, Rene Milk
// License: BSD 2-Clause License (http://opensource.org/licenses/BSD-2-Clause)

#ifndef DUNE_STUFF_LA_CONTAINER_HH
#define DUNE_STUFF_LA_CONTAINER_HH

#include <dune/common/typetraits.hh>

#include "container/interfaces.hh"
#include "container/eigen.hh"

namespace Dune {
namespace Stuff {
namespace LA {


template <class ContainerImp>
class Container
{
public:
  static ContainerImp create(const size_t /*size*/)
  {
    static_assert(Dune::AlwaysFalse<ContainerImp>::value, "Please specialize this class for this ContainerImp!");
  }
};


#if HAVE_EIGEN
template <class S>
class Container<EigenDenseVector<S>>
{
public:
  static EigenDenseVector<S> create(const size_t size)
  {
    return EigenDenseVector<S>(size, S(1));
  }
};

template <class S>
class Container<EigenMappedDenseVector<S>>
{
public:
  static EigenMappedDenseVector<S> create(const size_t size)
  {
    return EigenMappedDenseVector<S>(size, S(1));
  }
};

template <class S>
class Container<EigenRowMajorSparseMatrix<S>>
{
public:
  static EigenRowMajorSparseMatrix<S> create(const size_t size)
  {
    Dune::Stuff::LA::SparsityPatternDefault pattern(size);
    for (size_t ii = 0; ii < size; ++ii)
      pattern.inner(ii).insert(ii);
    Dune::Stuff::LA::EigenRowMajorSparseMatrix<S> matrix(size, size, pattern);
    for (size_t ii = 0; ii < size; ++ii)
      matrix.unit_row(ii);
    return matrix;
  }
};

template <class S>
class Container<EigenDenseMatrix<S>>
{
public:
  static EigenDenseMatrix<S> create(const size_t size)
  {
    Dune::Stuff::LA::EigenDenseMatrix<S> matrix(size, size);
    for (size_t ii = 0; ii < size; ++ii)
      matrix.unit_row(ii);
    return matrix;
  }
};
#endif // HAVE_EIGEN


} // namespace LA
} // namespace Stuff
} // namespace Dune

#endif // DUNE_STUFF_LA_CONTAINER_HH

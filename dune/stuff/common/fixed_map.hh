#ifndef DUNE_STUFF_FIXED_MAP_HH
#define DUNE_STUFF_FIXED_MAP_HH

#include <array>
#include <utility>
#include <boost/range/adaptor/map.hpp>
#include <boost/iterator/iterator_facade.hpp>

namespace Dune {
namespace Stuff {
namespace Common {

template <class FixedMapType>
class FixedMapIterator : public boost::iterator_facade<FixedMapIterator<FixedMapType>,
                                                       typename FixedMapType::value_type, boost::forward_traversal_tag>
{
  typedef FixedMapIterator<FixedMapType> ThisType;

  static const std::size_t N;

public:
  FixedMapIterator()
    : index_(N)
    , map_(nullptr)
  {
  }

  explicit FixedMapIterator(FixedMapType* map, std::size_t i)
    : index_(i)
    , map_(map)
  {
  }

private:
  friend class boost::iterator_core_access;

  void increment()
  {
    index_++;
  }

  bool equal(ThisType const& other) const
  {
    return this->map_ == other.map_;
  }

  typename FixedMapType::value_type& dereference() const
  {
    return map_->map_[index_];
  }

  std::size_t index_;
  FixedMapType* map_;
};

template <class Y>
const std::size_t FixedMapIterator<Y>::N = Y::N;

//! a std::map like container that prevent map size change
template <class key_imp, class T, std::size_t nin>
class FixedMap
{
public:
  typedef std::pair<key_imp, T> value_type;
  static const std::size_t N;

private:
  typedef std::array<value_type, nin> MapType;

  template <class R>
  friend class FixedMapIterator;
  typedef FixedMap<key_imp, T, nin> ThisType;

public:
  typedef key_imp key_type;
  typedef T mapped_type;
  typedef FixedMapIterator<ThisType> iterator;
  typedef FixedMapIterator<const ThisType> const_iterator;

  FixedMap()
  {
  }
  FixedMap(const MapType& map)
  {
    map_ = map;
  }

  std::size_t getIdx(const key_type& key) const
  {
    //    auto it =
    assert(false);
    return -1;
  }

  const mapped_type& operator[](const key_type& key) const
  {
    const auto it = getIdx(key);
    if (it != -1)
      DUNE_THROW(Dune::RangeError, "missing key in FixedMap");
    return map_[it].second;
  }

  mapped_type& operator[](const key_type& key)
  {
    const auto it = getIdx(key);
    if (it != -1)
      DUNE_THROW(Dune::RangeError, "missing key in FixedMap");
    return map_[it].second;
  }

  const_iterator find(const key_type& key) const
  {
    return const_iterator(*this, getIdx(key));
  }

  iterator find(const key_type& key)
  {
    return iterator(this, getIdx(key));
  }

  iterator begin()
  {
    return iterator(this, 0);
  }

  iterator end()
  {
    return iterator(this, N);
  }

  const_iterator begin() const
  {
    return const_iterator(this, 0);
  }

  const_iterator end() const
  {
    return const_iterator(this, N);
  }

private:
  MapType map_;
};

template <class K, class T, std::size_t nin>
const std::size_t FixedMap<K, T, nin>::N = nin;

} // namespace Common
} // namepspace Stuff
} // namespace Dune

#endif // DUNE_STUFF_FIXED_MAP_HH


/** Copyright (c) 2012, Rene Milk
   * All rights reserved.
   *
   * Redistribution and use in source and binary forms, with or without
   * modification, are permitted provided that the following conditions are met:
   *
   * 1. Redistributions of source code must retain the above copyright notice, this
   *    list of conditions and the following disclaimer.
   * 2. Redistributions in binary form must reproduce the above copyright notice,
   *    this list of conditions and the following disclaimer in the documentation
   *    and/or other materials provided with the distribution.
   *
   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
   * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
   * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
   * ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
   * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
   * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
   * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
   * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
   * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
   *
   * The views and conclusions contained in the software and documentation are those
   * of the authors and should not be interpreted as representing official policies,
   * either expressed or implied, of the FreeBSD Project.
   **/

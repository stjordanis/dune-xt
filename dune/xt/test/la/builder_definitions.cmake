set(DXT_BIN_COUNT "2" CACHE STRING "number of bins for test targets")
add_custom_target(test_binaries_builder_0
                  DEPENDS headercheck__dune_xt_la_container_common.hh
                          headercheck__dune_xt_la_container_common_matrix.hh
                          headercheck__dune_xt_la_container_common_matrix_dense.hh
                          headercheck__dune_xt_la_container_common_vector.hh
                          headercheck__dune_xt_la_container_common_vector_dense.hh
                          headercheck__dune_xt_la_container_conversion.hh
                          headercheck__dune_xt_la_container_eigen_base.hh
                          headercheck__dune_xt_la_container_eigen_dense.hh
                          headercheck__dune_xt_la_container_eye-matrix.hh
                          headercheck__dune_xt_la_container_io.hh
                          headercheck__dune_xt_la_container_matrix-interface.hh
                          headercheck__dune_xt_la_container_pattern.hh
                          headercheck__dune_xt_la_container_vector-array_list.hh
                          headercheck__dune_xt_la_eigen-solver_default.hh
                          headercheck__dune_xt_la_eigen-solver_internal_lapacke.hh
                          headercheck__dune_xt_la_exceptions.hh
                          headercheck__dune_xt_la_matrix-inverter_default.hh
                          headercheck__dune_xt_la_matrix-inverter_eigen.hh
                          headercheck__dune_xt_la_matrix-inverter_fmatrix.hh
                          headercheck__dune_xt_la_matrix-inverter_internal_eigen.hh
                          headercheck__dune_xt_la_solver.hh
                          headercheck__dune_xt_la_solver_eigen.hh
                          headercheck__dune_xt_la_solver_fasp.hh
                          headercheck__dune_xt_la_solver_istl.hh
                          headercheck__dune_xt_la_solver_istl_amg.hh
                          headercheck__dune_xt_la_solver_istl_preconditioners.hh
                          headercheck__dune_xt_la_solver_istl_schurcomplement.hh
                          headercheck__dune_xt_la_test_container.hh
                          headercheck__dune_xt_la_test_eigensolver.hh
                          headercheck__dune_xt_la_type_traits.hh
                          headercheck__python_dune_xt_la_container.bindings.hh
                          headercheck__python_dune_xt_la_container_container-interface.hh
                          headercheck__python_dune_xt_la_container_vector-interface.hh
                          test_algorithms_qr_5x5
                          test_algorithms_solve_sym_tridiag_posdef
                          test_convert
                          test_eigensolver_for_real_matrix_with_distinct_real_evs
                          test_eigensolver_for_real_matrix_with_real_evs_from_2d_euler_equations
                          test_eigensolver_for_real_matrix_with_real_evs_from_3d_pointsource
                          test_empty
                          test_matrix_view
                          test_matrixinverter_for_complex_matrix
                          test_matrixinverter_for_complex_matrix_2
                          test_saddlepoint)
set_tests_properties(test_algorithms_qr_5x5 PROPERTIES LABELS "builder_0")
set_tests_properties(test_algorithms_solve_sym_tridiag_posdef PROPERTIES LABELS "builder_0")
set_tests_properties(test_convert PROPERTIES LABELS "builder_0")
set_tests_properties(test_eigensolver_for_real_matrix_with_distinct_real_evs PROPERTIES LABELS "builder_0")
set_tests_properties(test_eigensolver_for_real_matrix_with_real_evs_from_2d_euler_equations
                     PROPERTIES LABELS "builder_0")
set_tests_properties(test_eigensolver_for_real_matrix_with_real_evs_from_3d_pointsource PROPERTIES LABELS "builder_0")
set_tests_properties(test_empty PROPERTIES LABELS "builder_0")
set_tests_properties(test_matrix_view PROPERTIES LABELS "builder_0")
set_tests_properties(test_matrixinverter_for_complex_matrix PROPERTIES LABELS "builder_0")
set_tests_properties(test_matrixinverter_for_complex_matrix_2 PROPERTIES LABELS "builder_0")
set_tests_properties(test_saddlepoint PROPERTIES LABELS "builder_0")
add_custom_target(test_binaries_builder_1
                  DEPENDS headercheck__dune_xt_la_algorithms.hh
                          headercheck__dune_xt_la_algorithms_cholesky.hh
                          headercheck__dune_xt_la_algorithms_qr.hh
                          headercheck__dune_xt_la_algorithms_solve_sym_tridiag_posdef.hh
                          headercheck__dune_xt_la_algorithms_triangular_solves.hh
                          headercheck__dune_xt_la_container.hh
                          headercheck__dune_xt_la_container_common_matrix_sparse.hh
                          headercheck__dune_xt_la_container_common_vector_sparse.hh
                          headercheck__dune_xt_la_container_container-interface.hh
                          headercheck__dune_xt_la_container_eigen.hh
                          headercheck__dune_xt_la_container_eigen_sparse.hh
                          headercheck__dune_xt_la_container_interfaces.hh
                          headercheck__dune_xt_la_container_istl.hh
                          headercheck__dune_xt_la_container_matrix-view.hh
                          headercheck__dune_xt_la_container_vector-array_interface.hh
                          headercheck__dune_xt_la_container_vector-interface-internal.hh
                          headercheck__dune_xt_la_container_vector-interface.hh
                          headercheck__dune_xt_la_container_vector-view.hh
                          headercheck__dune_xt_la_eigen-solver.hh
                          headercheck__dune_xt_la_eigen-solver_eigen.hh
                          headercheck__dune_xt_la_eigen-solver_fmatrix.hh
                          headercheck__dune_xt_la_eigen-solver_internal_base.hh
                          headercheck__dune_xt_la_eigen-solver_internal_eigen.hh
                          headercheck__dune_xt_la_eigen-solver_internal_numpy.hh
                          headercheck__dune_xt_la_eigen-solver_internal_shifted-qr.hh
                          headercheck__dune_xt_la_matrix-inverter.hh
                          headercheck__dune_xt_la_matrix-inverter_internal_base.hh
                          headercheck__dune_xt_la_solver_common.hh
                          headercheck__dune_xt_la_solver_istl_saddlepoint.hh
                          headercheck__dune_xt_la_solver_view.hh
                          headercheck__dune_xt_la_test_matrixinverter.hh
                          headercheck__python_dune_xt_la_container_matrix-interface.hh
                          headercheck__python_dune_xt_la_container_pattern.hh
                          test_algorithms_cholesky
                          test_algorithms_qr_5x3
                          test_algorithms_qr_block_2x3x3
                          test_algorithms_triangular_solves_2x2
                          test_algorithms_triangular_solves_3x3
                          test_container
                          test_container_matrix
                          test_container_vector
                          test_eigensolver_for_matrix_from_eigens_example
                          test_eigensolver_for_real_matrix_with_complex_evs
                          test_eigensolver_for_real_matrix_with_real_evs
                          test_matrixinverter_for_real_matrix_from_3d_pointsource
                          test_pattern)
set_tests_properties(test_algorithms_cholesky PROPERTIES LABELS "builder_1")
set_tests_properties(test_algorithms_qr_5x3 PROPERTIES LABELS "builder_1")
set_tests_properties(test_algorithms_qr_block_2x3x3 PROPERTIES LABELS "builder_1")
set_tests_properties(test_algorithms_triangular_solves_2x2 PROPERTIES LABELS "builder_1")
set_tests_properties(test_algorithms_triangular_solves_3x3 PROPERTIES LABELS "builder_1")
set_tests_properties(test_container PROPERTIES LABELS "builder_1")
set_tests_properties(test_container_matrix PROPERTIES LABELS "builder_1")
set_tests_properties(test_container_vector PROPERTIES LABELS "builder_1")
set_tests_properties(test_eigensolver_for_matrix_from_eigens_example PROPERTIES LABELS "builder_1")
set_tests_properties(test_eigensolver_for_real_matrix_with_complex_evs PROPERTIES LABELS "builder_1")
set_tests_properties(test_eigensolver_for_real_matrix_with_real_evs PROPERTIES LABELS "builder_1")
set_tests_properties(test_matrixinverter_for_real_matrix_from_3d_pointsource PROPERTIES LABELS "builder_1")
set_tests_properties(test_pattern PROPERTIES LABELS "builder_1")

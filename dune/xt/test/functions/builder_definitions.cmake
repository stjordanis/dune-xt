set(DXT_BIN_COUNT "8" CACHE STRING "number of bins for test targets")
add_custom_target(test_binaries_builder_0
                  DEPENDS headercheck__dune_xt_functions_base_function-as-flux-function.hh
                          headercheck__dune_xt_functions_base_reinterpret.hh
                          headercheck__dune_xt_functions_generic_flux-function.hh
                          headercheck__dune_xt_functions_indicator.hh
                          headercheck__python_dune_xt_functions_ESV2007.bindings.hh
                          test_ESV2007_cutoff_2d_3d__3d_simplex_alunonconformgrid
                          test_ESV2007_exact_solution__2d_simplex_alunonconformgrid
                          test_ESV2007_force__2d_cube_yaspgrid
                          test_ESV2007_force__2d_simplex_aluconformgrid
                          test_checkerboard__3d_cube_alunonconformgrid
                          test_constant__2d_cube_yaspgrid
                          test_constant__2d_simplex_alunonconformgrid
                          test_constant__3d_cube_yaspgrid
                          test_constant__3d_simplex_albertagrid
                          test_difference__1d_cube_yaspgrid
                          test_difference__3d_cube_alunonconformgrid
                          test_expression_matrix_valued__2d_cube_yaspgrid
                          test_expression_matrix_valued__2d_simplex_aluconformgrid
                          test_expression_parametric__3d_cube_yaspgrid
                          test_expression_vector_valued__3d_simplex_aluconformgrid
                          test_flattop__1d_cube_yaspgrid
                          test_flattop__2d_cube_yaspgrid
                          test_flattop__2d_simplex_alunonconformgrid
                          test_generic_flux_function__1d_cube_onedgrid
                          test_generic_flux_function__3d_simplex_alunonconformgrid
                          test_generic_function__2d_simplex_albertagrid
                          test_generic_grid_function__2d_simplex_albertagrid
                          test_generic_grid_function__3d_simplex_albertagrid
                          test_generic_grid_function__3d_simplex_uggrid
                          test_indicator_grid_function__2d_cube_alunonconformgrid
                          test_spe10_model2__3d_simplex_uggrid
                          test_sum_for_functions__2d_simplex_uggrid
                          test_sum_for_functions__3d_cube_yaspgrid
                          test_sum_for_functions__3d_simplex_albertagrid
                          test_sum_for_grid_functions__3d_simplex_alunonconformgrid
                          test_visualization__2d_simplex_aluconformgrid
                          test_visualization__3d_simplex_albertagrid)
set_tests_properties(test_ESV2007_cutoff_2d_3d__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_ESV2007_exact_solution__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_ESV2007_force__2d_cube_yaspgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_ESV2007_force__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_checkerboard__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_constant__2d_cube_yaspgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_constant__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_constant__3d_cube_yaspgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_constant__3d_simplex_albertagrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_difference__1d_cube_yaspgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_difference__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_expression_matrix_valued__2d_cube_yaspgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_expression_matrix_valued__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_expression_parametric__3d_cube_yaspgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_expression_vector_valued__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_flattop__1d_cube_yaspgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_flattop__2d_cube_yaspgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_flattop__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_generic_flux_function__1d_cube_onedgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_generic_flux_function__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_generic_function__2d_simplex_albertagrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_generic_grid_function__2d_simplex_albertagrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_generic_grid_function__3d_simplex_albertagrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_generic_grid_function__3d_simplex_uggrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_indicator_grid_function__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_spe10_model2__3d_simplex_uggrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_sum_for_functions__2d_simplex_uggrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_sum_for_functions__3d_cube_yaspgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_sum_for_functions__3d_simplex_albertagrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_sum_for_grid_functions__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_visualization__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_0")
set_tests_properties(test_visualization__3d_simplex_albertagrid PROPERTIES LABELS "builder_0")
add_custom_target(test_binaries_builder_1
                  DEPENDS headercheck__dune_xt_functions_base_visualization.hh
                          headercheck__dune_xt_functions_constant.hh
                          headercheck__dune_xt_functions_interfaces_element-flux-functions.hh
                          headercheck__dune_xt_functions_interfaces_element-functions.hh
                          headercheck__dune_xt_functions_inverse.hh
                          headercheck__python_dune_xt_functions_expression.hh
                          test_ESV2007_cutoff_2d_3d__3d_simplex_aluconformgrid
                          test_ESV2007_exact_solution__2d_simplex_albertagrid
                          test_ESV2007_exact_solution__2d_simplex_aluconformgrid
                          test_ESV2007_force__2d_simplex_alunonconformgrid
                          test_checkerboard__2d_simplex_aluconformgrid
                          test_constant__1d_cube_onedgrid
                          test_constant__2d_cube_alunonconformgrid
                          test_constant__3d_cube_alunonconformgrid
                          test_constant__3d_simplex_uggrid
                          test_difference__1d_cube_onedgrid
                          test_difference__2d_simplex_aluconformgrid
                          test_difference__2d_simplex_uggrid
                          test_expression_parametric__2d_simplex_aluconformgrid
                          test_expression_parametric__3d_simplex_uggrid
                          test_expression_vector_valued__1d_cube_yaspgrid
                          test_expression_vector_valued__3d_cube_yaspgrid
                          test_expression_vector_valued__3d_simplex_uggrid
                          test_flattop__3d_simplex_alunonconformgrid
                          test_generic_flux_function__3d_simplex_aluconformgrid
                          test_generic_function__1d_cube_yaspgrid
                          test_generic_function__3d_simplex_aluconformgrid
                          test_generic_function__3d_simplex_uggrid
                          test_generic_grid_function__1d_cube_onedgrid
                          test_generic_grid_function__2d_simplex_alunonconformgrid
                          test_indicator_function__1d_cube_onedgrid
                          test_indicator_grid_function__3d_cube_alunonconformgrid
                          test_spe10_model1__2d_simplex_aluconformgrid
                          test_sum_for_functions__3d_simplex_uggrid
                          test_visualization__2d_simplex_albertagrid
                          test_visualization__2d_simplex_uggrid
                          test_visualization__3d_simplex_alunonconformgrid)
set_tests_properties(test_ESV2007_cutoff_2d_3d__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_ESV2007_exact_solution__2d_simplex_albertagrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_ESV2007_exact_solution__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_ESV2007_force__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_checkerboard__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_constant__1d_cube_onedgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_constant__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_constant__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_constant__3d_simplex_uggrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_difference__1d_cube_onedgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_difference__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_difference__2d_simplex_uggrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_expression_parametric__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_expression_parametric__3d_simplex_uggrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_expression_vector_valued__1d_cube_yaspgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_expression_vector_valued__3d_cube_yaspgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_expression_vector_valued__3d_simplex_uggrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_flattop__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_generic_flux_function__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_generic_function__1d_cube_yaspgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_generic_function__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_generic_function__3d_simplex_uggrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_generic_grid_function__1d_cube_onedgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_generic_grid_function__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_indicator_function__1d_cube_onedgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_indicator_grid_function__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_spe10_model1__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_sum_for_functions__3d_simplex_uggrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_visualization__2d_simplex_albertagrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_visualization__2d_simplex_uggrid PROPERTIES LABELS "builder_1")
set_tests_properties(test_visualization__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_1")
add_custom_target(test_binaries_builder_2
                  DEPENDS headercheck__dune_xt_functions_exceptions.hh
                          headercheck__dune_xt_functions_expression.hh
                          headercheck__dune_xt_functions_expression_parametric.hh
                          headercheck__dune_xt_functions_interfaces_flux-function.hh
                          headercheck__dune_xt_functions_interfaces_grid-function.hh
                          headercheck__python_dune_xt_functions_interfaces.hh
                          test_ESV2007_cutoff_1d__1d_cube_onedgrid
                          test_ESV2007_cutoff_2d_3d__3d_cube_alunonconformgrid
                          test_ESV2007_force__2d_cube_alunonconformgrid
                          test_ESV2007_force__2d_simplex_uggrid
                          test_checkerboard__3d_simplex_albertagrid
                          test_difference__3d_simplex_albertagrid
                          test_expression_matrix_valued__2d_simplex_uggrid
                          test_expression_matrix_valued__3d_simplex_uggrid
                          test_expression_parametric__1d_cube_onedgrid
                          test_expression_parametric__3d_simplex_albertagrid
                          test_expression_vector_valued__2d_simplex_alunonconformgrid
                          test_generic_flux_function__3d_simplex_uggrid
                          test_generic_function__3d_simplex_albertagrid
                          test_generic_grid_function__2d_simplex_uggrid
                          test_indicator_function__2d_cube_alunonconformgrid
                          test_indicator_function__3d_simplex_uggrid
                          test_indicator_grid_function__1d_cube_onedgrid
                          test_indicator_grid_function__3d_cube_yaspgrid
                          test_product__1d_cube_onedgrid
                          test_product__2d_simplex_aluconformgrid
                          test_product__2d_simplex_alunonconformgrid
                          test_product__2d_simplex_uggrid
                          test_product__3d_simplex_albertagrid
                          test_product__3d_simplex_alunonconformgrid
                          test_spe10_model2__3d_simplex_albertagrid
                          test_spe10_model2__3d_simplex_aluconformgrid
                          test_sum_for_functions__1d_cube_yaspgrid
                          test_sum_for_grid_functions__2d_simplex_aluconformgrid
                          test_sum_for_grid_functions__3d_simplex_albertagrid
                          test_visualization__2d_cube_alunonconformgrid
                          test_visualization__2d_simplex_alunonconformgrid)
set_tests_properties(test_ESV2007_cutoff_1d__1d_cube_onedgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_ESV2007_cutoff_2d_3d__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_ESV2007_force__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_ESV2007_force__2d_simplex_uggrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_checkerboard__3d_simplex_albertagrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_difference__3d_simplex_albertagrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_expression_matrix_valued__2d_simplex_uggrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_expression_matrix_valued__3d_simplex_uggrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_expression_parametric__1d_cube_onedgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_expression_parametric__3d_simplex_albertagrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_expression_vector_valued__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_generic_flux_function__3d_simplex_uggrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_generic_function__3d_simplex_albertagrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_generic_grid_function__2d_simplex_uggrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_indicator_function__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_indicator_function__3d_simplex_uggrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_indicator_grid_function__1d_cube_onedgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_indicator_grid_function__3d_cube_yaspgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_product__1d_cube_onedgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_product__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_product__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_product__2d_simplex_uggrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_product__3d_simplex_albertagrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_product__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_spe10_model2__3d_simplex_albertagrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_spe10_model2__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_sum_for_functions__1d_cube_yaspgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_sum_for_grid_functions__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_sum_for_grid_functions__3d_simplex_albertagrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_visualization__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_2")
set_tests_properties(test_visualization__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_2")
add_custom_target(test_binaries_builder_3
                  DEPENDS headercheck__dune_xt_functions_base_composition.hh
                          headercheck__dune_xt_functions_base_sliced.hh
                          headercheck__dune_xt_functions_base_transformed.hh
                          headercheck__python_dune_xt_functions_constant.hh
                          test_ESV2007_cutoff_1d__1d_cube_yaspgrid
                          test_ESV2007_cutoff_2d_3d__2d_simplex_albertagrid
                          test_ESV2007_exact_solution__2d_cube_yaspgrid
                          test_ESV2007_force__2d_simplex_albertagrid
                          test_constant__2d_simplex_uggrid
                          test_expression_matrix_valued__1d_cube_onedgrid
                          test_expression_matrix_valued__2d_cube_alunonconformgrid
                          test_expression_matrix_valued__2d_simplex_albertagrid
                          test_expression_matrix_valued__3d_cube_yaspgrid
                          test_expression_matrix_valued__3d_simplex_alunonconformgrid
                          test_expression_vector_valued__2d_cube_yaspgrid
                          test_expression_vector_valued__2d_simplex_albertagrid
                          test_expression_vector_valued__3d_simplex_alunonconformgrid
                          test_generic_flux_function__1d_cube_yaspgrid
                          test_generic_flux_function__3d_cube_alunonconformgrid
                          test_generic_flux_function__3d_simplex_albertagrid
                          test_generic_function__1d_cube_onedgrid
                          test_generic_function__2d_cube_alunonconformgrid
                          test_generic_function__3d_cube_yaspgrid
                          test_generic_function__3d_simplex_alunonconformgrid
                          test_generic_grid_function__3d_cube_yaspgrid
                          test_indicator_function__2d_simplex_alunonconformgrid
                          test_indicator_function__2d_simplex_uggrid
                          test_indicator_function__3d_simplex_albertagrid
                          test_indicator_grid_function__1d_cube_yaspgrid
                          test_indicator_grid_function__2d_simplex_albertagrid
                          test_indicator_grid_function__3d_simplex_aluconformgrid
                          test_product__2d_simplex_albertagrid
                          test_product__3d_cube_alunonconformgrid
                          test_spe10_model1__2d_cube_alunonconformgrid
                          test_spe10_model1__2d_cube_yaspgrid
                          test_spe10_model2__3d_simplex_alunonconformgrid
                          test_sum_for_grid_functions__2d_simplex_uggrid
                          test_visualization__3d_simplex_aluconformgrid)
set_tests_properties(test_ESV2007_cutoff_1d__1d_cube_yaspgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_ESV2007_cutoff_2d_3d__2d_simplex_albertagrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_ESV2007_exact_solution__2d_cube_yaspgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_ESV2007_force__2d_simplex_albertagrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_constant__2d_simplex_uggrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_expression_matrix_valued__1d_cube_onedgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_expression_matrix_valued__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_expression_matrix_valued__2d_simplex_albertagrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_expression_matrix_valued__3d_cube_yaspgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_expression_matrix_valued__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_expression_vector_valued__2d_cube_yaspgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_expression_vector_valued__2d_simplex_albertagrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_expression_vector_valued__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_generic_flux_function__1d_cube_yaspgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_generic_flux_function__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_generic_flux_function__3d_simplex_albertagrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_generic_function__1d_cube_onedgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_generic_function__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_generic_function__3d_cube_yaspgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_generic_function__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_generic_grid_function__3d_cube_yaspgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_indicator_function__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_indicator_function__2d_simplex_uggrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_indicator_function__3d_simplex_albertagrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_indicator_grid_function__1d_cube_yaspgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_indicator_grid_function__2d_simplex_albertagrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_indicator_grid_function__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_product__2d_simplex_albertagrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_product__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_spe10_model1__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_spe10_model1__2d_cube_yaspgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_spe10_model2__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_sum_for_grid_functions__2d_simplex_uggrid PROPERTIES LABELS "builder_3")
set_tests_properties(test_visualization__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_3")
add_custom_target(test_binaries_builder_4
                  DEPENDS headercheck__dune_xt_functions_base_combined-functions.hh
                          headercheck__dune_xt_functions_base_derivatives-of-element-functions.hh
                          headercheck__dune_xt_functions_expression_default.hh
                          headercheck__dune_xt_functions_generic_function.hh
                          headercheck__dune_xt_functions_spe10_model2.hh
                          headercheck__python_dune_xt_functions_checkerboard.hh
                          test_ESV2007_cutoff_2d_3d__2d_simplex_aluconformgrid
                          test_ESV2007_cutoff_2d_3d__2d_simplex_uggrid
                          test_checkerboard__2d_cube_alunonconformgrid
                          test_checkerboard__2d_cube_yaspgrid
                          test_checkerboard__3d_cube_yaspgrid
                          test_checkerboard__3d_simplex_alunonconformgrid
                          test_difference__2d_simplex_albertagrid
                          test_difference__3d_simplex_uggrid
                          test_expression_matrix_valued__3d_simplex_albertagrid
                          test_expression_matrix_valued__3d_simplex_aluconformgrid
                          test_expression_parametric__2d_simplex_alunonconformgrid
                          test_expression_parametric__2d_simplex_uggrid
                          test_expression_parametric__3d_simplex_alunonconformgrid
                          test_expression_vector_valued__2d_cube_alunonconformgrid
                          test_flattop__1d_cube_onedgrid
                          test_flattop__2d_simplex_uggrid
                          test_flattop__3d_simplex_albertagrid
                          test_generic_function__2d_simplex_alunonconformgrid
                          test_generic_grid_function__1d_cube_yaspgrid
                          test_indicator_function__3d_cube_alunonconformgrid
                          test_indicator_grid_function__2d_simplex_uggrid
                          test_product__1d_cube_yaspgrid
                          test_product__3d_simplex_aluconformgrid
                          test_sum_for_functions__1d_cube_onedgrid
                          test_sum_for_functions__2d_simplex_albertagrid
                          test_sum_for_functions__3d_cube_alunonconformgrid
                          test_sum_for_grid_functions__1d_cube_onedgrid
                          test_sum_for_grid_functions__2d_simplex_alunonconformgrid
                          test_sum_for_grid_functions__3d_cube_alunonconformgrid
                          test_sum_for_grid_functions__3d_simplex_uggrid
                          test_visualization__2d_cube_yaspgrid)
set_tests_properties(test_ESV2007_cutoff_2d_3d__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_ESV2007_cutoff_2d_3d__2d_simplex_uggrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_checkerboard__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_checkerboard__2d_cube_yaspgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_checkerboard__3d_cube_yaspgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_checkerboard__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_difference__2d_simplex_albertagrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_difference__3d_simplex_uggrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_expression_matrix_valued__3d_simplex_albertagrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_expression_matrix_valued__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_expression_parametric__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_expression_parametric__2d_simplex_uggrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_expression_parametric__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_expression_vector_valued__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_flattop__1d_cube_onedgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_flattop__2d_simplex_uggrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_flattop__3d_simplex_albertagrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_generic_function__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_generic_grid_function__1d_cube_yaspgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_indicator_function__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_indicator_grid_function__2d_simplex_uggrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_product__1d_cube_yaspgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_product__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_sum_for_functions__1d_cube_onedgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_sum_for_functions__2d_simplex_albertagrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_sum_for_functions__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_sum_for_grid_functions__1d_cube_onedgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_sum_for_grid_functions__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_sum_for_grid_functions__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_sum_for_grid_functions__3d_simplex_uggrid PROPERTIES LABELS "builder_4")
set_tests_properties(test_visualization__2d_cube_yaspgrid PROPERTIES LABELS "builder_4")
add_custom_target(test_binaries_builder_5
                  DEPENDS headercheck__dune_xt_functions_ESV2007.hh
                          headercheck__dune_xt_functions_derivatives.hh
                          headercheck__dune_xt_functions_expression_base.hh
                          headercheck__dune_xt_functions_expression_mathexpr.hh
                          headercheck__dune_xt_functions_spe10_model1.hh
                          test_ESV2007_cutoff_2d_3d__2d_cube_alunonconformgrid
                          test_ESV2007_cutoff_2d_3d__2d_cube_yaspgrid
                          test_checkerboard__1d_cube_onedgrid
                          test_checkerboard__1d_cube_yaspgrid
                          test_checkerboard__2d_simplex_uggrid
                          test_constant__3d_simplex_alunonconformgrid
                          test_difference__3d_simplex_alunonconformgrid
                          test_expression_matrix_valued__2d_simplex_alunonconformgrid
                          test_expression_parametric__2d_cube_alunonconformgrid
                          test_expression_parametric__3d_cube_alunonconformgrid
                          test_expression_vector_valued__2d_simplex_aluconformgrid
                          test_expression_vector_valued__3d_cube_alunonconformgrid
                          test_flattop__3d_cube_yaspgrid
                          test_flattop__3d_simplex_aluconformgrid
                          test_flattop__3d_simplex_uggrid
                          test_generic_flux_function__3d_cube_yaspgrid
                          test_generic_function__3d_cube_alunonconformgrid
                          test_generic_grid_function__2d_cube_alunonconformgrid
                          test_generic_grid_function__2d_cube_yaspgrid
                          test_generic_grid_function__2d_simplex_aluconformgrid
                          test_generic_grid_function__3d_simplex_alunonconformgrid
                          test_indicator_function__3d_simplex_aluconformgrid
                          test_indicator_grid_function__2d_cube_yaspgrid
                          test_indicator_grid_function__2d_simplex_aluconformgrid
                          test_indicator_grid_function__3d_simplex_albertagrid
                          test_product__2d_cube_yaspgrid
                          test_product__3d_cube_yaspgrid
                          test_spe10_model2__3d_cube_alunonconformgrid
                          test_sum_for_functions__3d_simplex_alunonconformgrid
                          test_sum_for_grid_functions__1d_cube_yaspgrid
                          test_visualization__1d_cube_yaspgrid
                          test_visualization__3d_cube_alunonconformgrid)
set_tests_properties(test_ESV2007_cutoff_2d_3d__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_ESV2007_cutoff_2d_3d__2d_cube_yaspgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_checkerboard__1d_cube_onedgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_checkerboard__1d_cube_yaspgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_checkerboard__2d_simplex_uggrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_constant__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_difference__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_expression_matrix_valued__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_expression_parametric__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_expression_parametric__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_expression_vector_valued__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_expression_vector_valued__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_flattop__3d_cube_yaspgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_flattop__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_flattop__3d_simplex_uggrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_generic_flux_function__3d_cube_yaspgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_generic_function__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_generic_grid_function__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_generic_grid_function__2d_cube_yaspgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_generic_grid_function__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_generic_grid_function__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_indicator_function__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_indicator_grid_function__2d_cube_yaspgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_indicator_grid_function__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_indicator_grid_function__3d_simplex_albertagrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_product__2d_cube_yaspgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_product__3d_cube_yaspgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_spe10_model2__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_sum_for_functions__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_sum_for_grid_functions__1d_cube_yaspgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_visualization__1d_cube_yaspgrid PROPERTIES LABELS "builder_5")
set_tests_properties(test_visualization__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_5")
add_custom_target(test_binaries_builder_6
                  DEPENDS headercheck__dune_xt_functions_base_combined-element-functions.hh
                          headercheck__dune_xt_functions_base_combined-grid-functions.hh
                          headercheck__dune_xt_functions_flattop.hh
                          headercheck__dune_xt_functions_generic_grid-function.hh
                          headercheck__python_dune_xt_functions_indicator.hh
                          test_ESV2007_cutoff_2d_3d__2d_simplex_alunonconformgrid
                          test_ESV2007_cutoff_2d_3d__3d_cube_yaspgrid
                          test_ESV2007_exact_solution__2d_simplex_uggrid
                          test_checkerboard__2d_simplex_albertagrid
                          test_checkerboard__2d_simplex_alunonconformgrid
                          test_checkerboard__3d_simplex_aluconformgrid
                          test_checkerboard__3d_simplex_uggrid
                          test_constant__2d_simplex_albertagrid
                          test_constant__2d_simplex_aluconformgrid
                          test_constant__3d_simplex_aluconformgrid
                          test_difference__3d_simplex_aluconformgrid
                          test_empty
                          test_expression_matrix_valued__3d_cube_alunonconformgrid
                          test_expression_parametric__2d_cube_yaspgrid
                          test_expression_parametric__2d_simplex_albertagrid
                          test_expression_vector_valued__2d_simplex_uggrid
                          test_generic_function__2d_cube_yaspgrid
                          test_generic_function__2d_simplex_uggrid
                          test_indicator_function__2d_cube_yaspgrid
                          test_indicator_function__2d_simplex_aluconformgrid
                          test_indicator_grid_function__3d_simplex_alunonconformgrid
                          test_indicator_grid_function__3d_simplex_uggrid
                          test_product__3d_simplex_uggrid
                          test_spe10_model1__2d_simplex_alunonconformgrid
                          test_spe10_model1__2d_simplex_uggrid
                          test_spe10_model2__3d_cube_yaspgrid
                          test_sum_for_functions__2d_cube_alunonconformgrid
                          test_sum_for_functions__2d_simplex_aluconformgrid
                          test_sum_for_grid_functions__2d_simplex_albertagrid
                          test_sum_for_grid_functions__3d_cube_yaspgrid
                          test_sum_for_grid_functions__3d_simplex_aluconformgrid
                          test_visualization__3d_cube_yaspgrid)
set_tests_properties(test_ESV2007_cutoff_2d_3d__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_ESV2007_cutoff_2d_3d__3d_cube_yaspgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_ESV2007_exact_solution__2d_simplex_uggrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_checkerboard__2d_simplex_albertagrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_checkerboard__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_checkerboard__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_checkerboard__3d_simplex_uggrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_constant__2d_simplex_albertagrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_constant__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_constant__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_difference__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_empty PROPERTIES LABELS "builder_6")
set_tests_properties(test_expression_matrix_valued__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_expression_parametric__2d_cube_yaspgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_expression_parametric__2d_simplex_albertagrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_expression_vector_valued__2d_simplex_uggrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_generic_function__2d_cube_yaspgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_generic_function__2d_simplex_uggrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_indicator_function__2d_cube_yaspgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_indicator_function__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_indicator_grid_function__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_indicator_grid_function__3d_simplex_uggrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_product__3d_simplex_uggrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_spe10_model1__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_spe10_model1__2d_simplex_uggrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_spe10_model2__3d_cube_yaspgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_sum_for_functions__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_sum_for_functions__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_sum_for_grid_functions__2d_simplex_albertagrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_sum_for_grid_functions__3d_cube_yaspgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_sum_for_grid_functions__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_6")
set_tests_properties(test_visualization__3d_cube_yaspgrid PROPERTIES LABELS "builder_6")
add_custom_target(test_binaries_builder_7
                  DEPENDS headercheck__dune_xt_functions_base_function-as-grid-function.hh
                          headercheck__dune_xt_functions_checkerboard.hh
                          headercheck__dune_xt_functions_generic_element-function.hh
                          headercheck__dune_xt_functions_interfaces_function.hh
                          headercheck__dune_xt_functions_type_traits.hh
                          test_ESV2007_cutoff_2d_3d__3d_simplex_albertagrid
                          test_ESV2007_cutoff_2d_3d__3d_simplex_uggrid
                          test_ESV2007_exact_solution__2d_cube_alunonconformgrid
                          test_constant__1d_cube_yaspgrid
                          test_difference__2d_cube_alunonconformgrid
                          test_difference__2d_cube_yaspgrid
                          test_difference__2d_simplex_alunonconformgrid
                          test_difference__3d_cube_yaspgrid
                          test_expression_matrix_valued__1d_cube_yaspgrid
                          test_expression_parametric__1d_cube_yaspgrid
                          test_expression_parametric__3d_simplex_aluconformgrid
                          test_expression_vector_valued__1d_cube_onedgrid
                          test_expression_vector_valued__3d_simplex_albertagrid
                          test_flattop__2d_cube_alunonconformgrid
                          test_flattop__2d_simplex_albertagrid
                          test_flattop__2d_simplex_aluconformgrid
                          test_flattop__3d_cube_alunonconformgrid
                          test_generic_function__2d_simplex_aluconformgrid
                          test_generic_grid_function__3d_cube_alunonconformgrid
                          test_generic_grid_function__3d_simplex_aluconformgrid
                          test_indicator_function__1d_cube_yaspgrid
                          test_indicator_function__2d_simplex_albertagrid
                          test_indicator_function__3d_cube_yaspgrid
                          test_indicator_function__3d_simplex_alunonconformgrid
                          test_indicator_grid_function__2d_simplex_alunonconformgrid
                          test_product__2d_cube_alunonconformgrid
                          test_spe10_model1__2d_simplex_albertagrid
                          test_sum_for_functions__2d_cube_yaspgrid
                          test_sum_for_functions__2d_simplex_alunonconformgrid
                          test_sum_for_functions__3d_simplex_aluconformgrid
                          test_sum_for_grid_functions__2d_cube_alunonconformgrid
                          test_sum_for_grid_functions__2d_cube_yaspgrid
                          test_visualization__1d_cube_onedgrid)
set_tests_properties(test_ESV2007_cutoff_2d_3d__3d_simplex_albertagrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_ESV2007_cutoff_2d_3d__3d_simplex_uggrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_ESV2007_exact_solution__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_constant__1d_cube_yaspgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_difference__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_difference__2d_cube_yaspgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_difference__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_difference__3d_cube_yaspgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_expression_matrix_valued__1d_cube_yaspgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_expression_parametric__1d_cube_yaspgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_expression_parametric__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_expression_vector_valued__1d_cube_onedgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_expression_vector_valued__3d_simplex_albertagrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_flattop__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_flattop__2d_simplex_albertagrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_flattop__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_flattop__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_generic_function__2d_simplex_aluconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_generic_grid_function__3d_cube_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_generic_grid_function__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_indicator_function__1d_cube_yaspgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_indicator_function__2d_simplex_albertagrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_indicator_function__3d_cube_yaspgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_indicator_function__3d_simplex_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_indicator_grid_function__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_product__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_spe10_model1__2d_simplex_albertagrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_sum_for_functions__2d_cube_yaspgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_sum_for_functions__2d_simplex_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_sum_for_functions__3d_simplex_aluconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_sum_for_grid_functions__2d_cube_alunonconformgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_sum_for_grid_functions__2d_cube_yaspgrid PROPERTIES LABELS "builder_7")
set_tests_properties(test_visualization__1d_cube_onedgrid PROPERTIES LABELS "builder_7")

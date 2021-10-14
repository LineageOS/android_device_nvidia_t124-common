# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function patch_t124_glcore() {
  sed -i 's/libc.so/libs.so/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/vsnprintf/haxprintf/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/__haxprintf/__vsnprintf/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/libc.so/libs.so/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib64/libglcore.so
  sed -i 's/vsnprintf/haxprintf/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib64/libglcore.so
  sed -i 's/__haxprintf/__vsnprintf/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib64/libglcore.so
}

function patch_t124_scf() {
  sed -i 's/libprotobuf-cpp-lite.so/libprotobuf-cpp-lold.so/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/camera/lib/libscf.so
}

function patch_t124_intrinsics() {
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/egl/libEGL_tegra.so
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libcuda.so
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libnvglsi.so
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libnvrmapi_tegra.so

  sed -i 's/__aeabi_ul2d/s_aeabi_ul2d/'         ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/egl/libEGL_tegra.so
  sed -i 's/__aeabi_ul2f/s_aeabi_ul2f/'         ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/egl/libEGL_tegra.so
  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/egl/libEGL_tegra.so

  sed -i 's/__aeabi_d2lz/s_aeabi_d2lz/'         ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_d2ulz/s_aeabi_d2ulz/'       ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_f2lz/s_aeabi_f2lz/'         ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_f2ulz/s_aeabi_f2ulz/'       ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_l2d/s_aeabi_l2d/'           ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_ul2d/s_aeabi_ul2d/'         ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_ul2f/s_aeabi_ul2f/'         ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_ldivmod/s_aeabi_ldivmod/'   ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libcuda.so
  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libcuda.so

  sed -i 's/__aeabi_d2lz/s_aeabi_d2lz/'         ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_d2ulz/s_aeabi_d2ulz/'       ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_f2lz/s_aeabi_f2lz/'         ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_f2ulz/s_aeabi_f2ulz/'       ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_l2d/s_aeabi_l2d/'           ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_ul2d/s_aeabi_ul2d/'         ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_l2f/s_aeabi_l2f/'           ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_ul2f/s_aeabi_ul2f/'         ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_ldivmod/s_aeabi_ldivmod/'   ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so
  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libglcore.so

  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libnvglsi.so

  sed -i 's/__aeabi_uldivmod/s_aeabi_uldivmod/' ${LINEAGE_ROOT}/${OUTDIR}/t124/nvgpu/lib/libnvrmapi_tegra.so
}

patch_t124_glcore;
patch_t124_scf;
patch_t124_intrinsics;

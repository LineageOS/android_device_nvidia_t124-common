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
  sed -i 's/libm.so/libw.so/g' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so

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

  sed -i 's/__aeabi_d2f/s_aeabi_d2f/'       ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_d2iz/s_aeabi_d2iz/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_d2lz/s_aeabi_d2lz/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_dadd/s_aeabi_dadd/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_dcmpeq/s_aeabi_dcmpeq/' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_dcmpge/s_aeabi_dcmpge/' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_dcmpgt/s_aeabi_dcmpgt/' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_dcmple/s_aeabi_dcmple/' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_dcmplt/s_aeabi_dcmplt/' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_ddiv/s_aeabi_ddiv/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_dmul/s_aeabi_dmul/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_dsub/s_aeabi_dsub/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_f2d/s_aeabi_f2d/'       ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_f2iz/s_aeabi_f2iz/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_f2lz/s_aeabi_f2lz/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_fadd/s_aeabi_fadd/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_fcmpeq/s_aeabi_fcmpeq/' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_fcmpge/s_aeabi_fcmpge/' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_fcmpgt/s_aeabi_fcmpgt/' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_fcmple/s_aeabi_fcmple/' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_fcmplt/s_aeabi_fcmplt/' ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_fdiv/s_aeabi_fdiv/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_fmul/s_aeabi_fmul/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_fsub/s_aeabi_fsub/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_i2d/s_aeabi_i2d/'       ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_i2f/s_aeabi_i2f/'       ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_idiv/s_aeabi_idiv/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_l2d/s_aeabi_l2d/'       ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_l2f/s_aeabi_l2f/'       ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
  sed -i 's/__aeabi_ui2f/s_aeabi_ui2f/'     ${LINEAGE_ROOT}/${OUTDIR}/t124/sensors/lib/libmplmpu.so
}

patch_t124_glcore;
patch_t124_scf;
patch_t124_intrinsics;

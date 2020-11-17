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

patch_t124_glcore;
patch_t124_scf;

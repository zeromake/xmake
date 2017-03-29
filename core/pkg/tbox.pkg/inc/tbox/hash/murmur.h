/*!The Treasure Box Library
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * Copyright (C) 2009 - 2017, TBOOX Open Source Group.
 *
 * @author      ruki
 * @file        murmur.h
 * @ingroup     hash
 *
 */
#ifndef TB_HASH_MURMUR_H
#define TB_HASH_MURMUR_H

/* //////////////////////////////////////////////////////////////////////////////////////
 * includes
 */
#include "prefix.h"

/* //////////////////////////////////////////////////////////////////////////////////////
 * extern
 */
__tb_extern_c_enter__

/* //////////////////////////////////////////////////////////////////////////////////////
 * interfaces
 */

/*! make murmur hash
 *
 * one-byte-at-a-time hash based on Murmur's mix
 *
 * @param data      the data
 * @param size      the size
 * @param seed      uses this seed if be non-zero
 *
 * @return          the murmur value
 */
tb_size_t           tb_murmur_make(tb_byte_t const* data, tb_size_t size, tb_size_t seed);

/*! make murmur hash from c-string
 *
 * @param cstr      the c-string
 * @param seed      uses this seed if be non-zero
 *
 * @return          the murmur value
 */
tb_size_t           tb_murmur_make_from_cstr(tb_char_t const* cstr, tb_size_t seed);

/* //////////////////////////////////////////////////////////////////////////////////////
 * extern
 */
__tb_extern_c_leave__

#endif
/*!The Treasure Box Library
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * Copyright (C) 2009 - 2017, TBOOX Open Source Group.
 *
 * @author      ruki
 * @file        murmur.h
 * @ingroup     hash
 *
 */
#ifndef TB_HASH_MURMUR_H
#define TB_HASH_MURMUR_H

/* //////////////////////////////////////////////////////////////////////////////////////
 * includes
 */
#include "prefix.h"

/* //////////////////////////////////////////////////////////////////////////////////////
 * extern
 */
__tb_extern_c_enter__

/* //////////////////////////////////////////////////////////////////////////////////////
 * interfaces
 */

/*! make murmur hash
 *
 * one-byte-at-a-time hash based on Murmur's mix
 *
 * @param data      the data
 * @param size      the size
 * @param seed      uses this seed if be non-zero
 *
 * @return          the murmur value
 */
tb_size_t           tb_murmur_make(tb_byte_t const* data, tb_size_t size, tb_size_t seed);

/*! make murmur hash from c-string
 *
 * @param cstr      the c-string
 * @param seed      uses this seed if be non-zero
 *
 * @return          the murmur value
 */
tb_size_t           tb_murmur_make_from_cstr(tb_char_t const* cstr, tb_size_t seed);

/* //////////////////////////////////////////////////////////////////////////////////////
 * extern
 */
__tb_extern_c_leave__

#endif

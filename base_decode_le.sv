/*
 * Copyright 2017 IBM Corporation
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
 * Author: Andrew K Martin akmartin@us.ibm.com
 */
 
module base_decode_le#
  (
   parameter enc_width=1,
   parameter dec_width = 2 ** enc_width
   )
  (
   input en,
   input [enc_width-1:0] din,
   output [dec_width-1:0] dout
   );
   
   genvar 		  i;
   generate
      for(i=0; i<dec_width; i=i+1) begin : Gen
	 assign dout[i] = en & (din == i);
      end
   endgenerate
endmodule // gx_decode


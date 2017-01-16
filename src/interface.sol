/*
   Copyright 2016 Nexus Development, LLC

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*/

pragma solidity ^0.4.7;

contract FeedAggregatorEvents100 {
    event LogClaim     (bytes12 indexed id, address owner);
    event LogSet       (bytes12 id, address contract1, bytes12 position1, address contract2, bytes12 position2,
    address contract3, bytes12 position3);
    event LogSetOwner  (bytes12 indexed id, address owner);
    event LogSetLabel  (bytes12 indexed id, bytes32 label);
}

contract FeedAggregatorInterface100 {
    function claim() returns (bytes12 id);
    function set(bytes12 id, address contract1, bytes12 position1, address contract2, bytes12 position2,
    address contract3, bytes12 position3);
    function get(bytes12 id) returns (bytes32 value);
    function tryGet(bytes12 id) returns (bytes32 value, bool ok);
}
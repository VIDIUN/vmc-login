// ===================================================================================================
//                           _  __     _ _
//                          | |/ /__ _| | |_ _  _ _ _ __ _
//                          | ' </ _` | |  _| || | '_/ _` |
//                          |_|\_\__,_|_|\__|\_,_|_| \__,_|
//
// This file is part of the Vidiun Collaborative Media Suite which allows users
// to do with audio, video, and animation what Wiki platfroms allow them to do with
// text.
//
// Copyright (C) 2006-2011  Vidiun Inc.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
// @ignore
// ===================================================================================================
package com.vidiun.vo
{
	import com.vidiun.vo.VidiunBaseEntry;

	[Bindable]
	public dynamic class VidiunPlaylist extends VidiunBaseEntry
	{
		/** 
		* 		* */ 
		public var playlistContent : String = null;

		/** 
		* 		* */ 
		public var filters : Array = null;

		/** 
		* 		* */ 
		public var totalResults : int = int.MIN_VALUE;

		/** 
		* 		* */ 
		public var playlistType : int = int.MIN_VALUE;

		/** 
		* 		* */ 
		public var plays : int = int.MIN_VALUE;

		/** 
		* 		* */ 
		public var views : int = int.MIN_VALUE;

		/** 
		* 		* */ 
		public var duration : int = int.MIN_VALUE;

		override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			arr.push('playlistContent');
			arr.push('filters');
			arr.push('totalResults');
			arr.push('playlistType');
			return arr;
		}

		override public function getInsertableParamKeys():Array
		{
			var arr : Array;
			arr = super.getInsertableParamKeys();
			return arr;
		}

	}
}

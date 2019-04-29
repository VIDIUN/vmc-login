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
package com.vidiun.commands.genericDistributionProviderAction
{
	import flash.net.FileReference;
	import com.vidiun.net.VidiunFileCall;
	import com.vidiun.delegates.genericDistributionProviderAction.GenericDistributionProviderActionAddMrssValidateFromFileDelegate;

	public class GenericDistributionProviderActionAddMrssValidateFromFile extends VidiunFileCall
	{
		public var xsdFile:Object;

		/**
		 * @param id int
		 * @param xsdFile Object - FileReference or ByteArray
		 **/
		public function GenericDistributionProviderActionAddMrssValidateFromFile( id : int,xsdFile : Object )
		{
			service= 'contentdistribution_genericdistributionprovideraction';
			action= 'addMrssValidateFromFile';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push('id');
			valueArr.push(id);
			this.xsdFile = xsdFile;
			applySchema(keyArr, valueArr);
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields', filterFields);
			delegate = new GenericDistributionProviderActionAddMrssValidateFromFileDelegate( this , config );
		}
	}
}

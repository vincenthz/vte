-- -*-haskell-*-
--  GIMP Toolkit (GTK) @entry Widget Bin@
--
--  Author : Duncan Coutts
--          
--  Created: 25 April 2004
--
--  Copyright (c) 2004 Duncan Coutts
--
--  This file is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This file is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
-- @description@ --------------------------------------------------------------
--
-- * This abstract widget implements a container with just one child.
--
module Bin (
  Bin,
  BinClass,
  binGetChild
) where

import FFI
import Object  (makeNewObject)
{#import Hierarchy#}

{# context lib="gtk" prefix="gtk" #}

binGetChild :: BinClass bin => bin -> IO Widget
binGetChild bin =
  makeNewObject mkWidget $ {# call gtk_bin_get_child #} (toBin bin)
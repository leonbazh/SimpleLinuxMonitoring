#!/bin/bash

column1_background=$(awk '/column1_background=/' color.config | sed 's/column1_background=//')
column1_font_color=$(awk '/column1_font_color=/' color.config | sed 's/column1_font_color=//')
column2_background=$(awk '/column2_background=/' color.config | sed 's/column2_background=//')
column2_font_color=$(awk '/column2_font_color=/' color.config | sed 's/column2_font_color=//')

bash check.sh $column1_background $column1_font_color $column2_background $column2_font_color
require('lualine').setup {
   options = {
      icons_enabled = false,
      theme = 'rose-pine',
      section_separators = { left = '', right = '' },
      component_separators = { left = '', right = '' }

   },
   sections = {
      lualine_a = {
         {
            'filename',
            path = 1,
         }
      }
   }
}

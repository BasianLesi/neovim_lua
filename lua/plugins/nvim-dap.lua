return{
    "mfussenegger/nvim-dap",
    config = function()
      -- Setup dap configuration here (optional)  
      local dap = require('dap')

      -- Example: Setup for a C/C++ debugger  
      dap.adapters.cppdbg = {
          type = 'executable',
          command = "/usr/bin/gdb", -- Update this path  
          name = "cppdbg",
      }

      dap.configurations.cpp = {
        {
            name = 'Launch CPP',
            type = 'cppdbg',
            request = 'launch',
            program = '${workspaceFolder}/${fileBasenameNoExtension}', -- Path to your compiled program  
            args = {},  -- You can add command-line arguments here  
            cwd = '${workspaceFolder}',  -- Current working directory  
            stopAtEntry = false,  -- If you want to stop right at the entry point  
            MIMode = 'gdb',
            miDebuggerPath = '/usr/bin/gdb'
        },
      }
      --dap.configurations.c = dap.configurations.cpp  -- Use same configuration for C++  
  end,
}


// class for csv type file dumper which extended from 'dump_file_agent'
`ifndef CSV_FILE_DUMP__SV
    `define CSV_FILE_DUMP__SV
    `include "dump_file_agent.sv"
    class csv_file_dump extends dump_file_agent;
        integer file_handle;

        //initial function
        function new(string name);
            super.new(name);
            this.file_handle = $fopen(super.file_name, "w");
            if (this.file_handle)
                 ;
            else
                $display("File %s is opened failed.",name);
        endfunction

        //get file handle function
        virtual function integer get_file_handle();
            get_file_handle = this.file_handle;
        endfunction

        // dump function for one column
        virtual function void dump_1_col(logic [31:0] arr[$]);
            integer length = arr.size;
            for(integer i = 0; i < length; i++)
                $fdisplay(this.file_handle,"%0d",arr[i]);
        endfunction

        // dump function for 2 column
        virtual function void dump_2_col(logic [31:0] arr1[$], logic [1:0] arr2[$]);
            integer length = arr1.size;
            if (length > arr2.size)
                length = arr2.size;
            for(integer i = 0; i < length; i++)
                $fdisplay(this.file_handle,"%0d,%0d",arr1[i],arr2[i]);
        endfunction

        //close file
        virtual function void finish_dump();
            $fclose(this.file_handle);
        endfunction

    endclass
`endif

pragma Ada_95;
pragma Warnings (Off);
pragma Source_File_Name (ada_main, Spec_File_Name => "b__controller.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__controller.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E77 : Short_Integer; pragma Import (Ada, E77, "system__os_lib_E");
   E13 : Short_Integer; pragma Import (Ada, E13, "system__soft_links_E");
   E23 : Short_Integer; pragma Import (Ada, E23, "system__exception_table_E");
   E52 : Short_Integer; pragma Import (Ada, E52, "ada__io_exceptions_E");
   E54 : Short_Integer; pragma Import (Ada, E54, "ada__tags_E");
   E51 : Short_Integer; pragma Import (Ada, E51, "ada__streams_E");
   E75 : Short_Integer; pragma Import (Ada, E75, "interfaces__c_E");
   E25 : Short_Integer; pragma Import (Ada, E25, "system__exceptions_E");
   E80 : Short_Integer; pragma Import (Ada, E80, "system__file_control_block_E");
   E70 : Short_Integer; pragma Import (Ada, E70, "system__file_io_E");
   E73 : Short_Integer; pragma Import (Ada, E73, "system__finalization_root_E");
   E71 : Short_Integer; pragma Import (Ada, E71, "ada__finalization_E");
   E17 : Short_Integer; pragma Import (Ada, E17, "system__secondary_stack_E");
   E06 : Short_Integer; pragma Import (Ada, E06, "ada__text_io_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E06 := E06 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__file_io__finalize_body");
      begin
         E70 := E70 - 1;
         F2;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := 16384;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      System.Secondary_Stack.Default_Secondary_Stack_Size := 16384;

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E23 := E23 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E52 := E52 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E51 := E51 + 1;
      Interfaces.C'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E25 := E25 + 1;
      System.File_Control_Block'Elab_Spec;
      E80 := E80 + 1;
      System.Finalization_Root'Elab_Spec;
      E73 := E73 + 1;
      Ada.Finalization'Elab_Spec;
      E71 := E71 + 1;
      System.File_Io'Elab_Body;
      E70 := E70 + 1;
      E75 := E75 + 1;
      Ada.Tags'Elab_Body;
      E54 := E54 + 1;
      System.Soft_Links'Elab_Body;
      E13 := E13 + 1;
      System.Os_Lib'Elab_Body;
      E77 := E77 + 1;
      System.Secondary_Stack'Elab_Body;
      E17 := E17 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E06 := E06 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_controller");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/nemo/Documents/uni/embedded-systems/traffic-sim/ica-linux/obj-linux/controller.o
   --   -L/home/nemo/Documents/uni/embedded-systems/traffic-sim/ica-linux/obj-linux/
   --   -L/home/nemo/Documents/uni/embedded-systems/traffic-sim/ica-linux/obj-linux/
   --   -L/home/nemo/Documents/uni/embedded-systems/traffic-sim/ica-linux/xrif-ali-linux/
   --   -L/usr/lib/gcc/x86_64-linux-gnu/6/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;

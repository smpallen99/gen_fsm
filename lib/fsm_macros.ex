defmodule FsmMacros do
  @docmodule """
  Debug macro for checking state_data and state_name for nil

  Enable debug audit by setting @debug to true. This is a compile 
  time check. So, disabling it has not affect on real time performance.
  """
  require Logger
  
  @debug false  # set this to true to compile in debugging

  @doc """
  Checks state_data and state_name for nil. 

  Throws exception if either state data or state name is nil. 
  Also prints log for every call
  """
  defmacro debug(state_data, state_name) do
    if @debug do
      quote do
        Logger.debug "GenFSM: #{unquote(state_name)}"
        unless unquote(state_data), do: throw {:nil_state_data, unquote(state_name)}
        unless unquote(state_name), do: throw {:nil_state_name}
      end 
    end
  end
end

defmodule Jobber do
  alias Jobber.{JobRunner, JobSupervisor}
  @moduledoc """
  Documentation for `Jobber`.
  """

  def start_job(args) do
    DynamicSupervisor.start_child(JobRunner, {JobSupervisor, args})
  end


end

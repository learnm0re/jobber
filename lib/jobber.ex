defmodule Jobber do
  alias Jobber.{JobRunner, Job}
  @moduledoc """
  Documentation for `Jobber`.
  """

  def start_job(args) do
    DynamicSupervisor.start_child(JobRunner, {Job, args})
  end


end

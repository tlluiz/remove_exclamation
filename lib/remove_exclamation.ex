defmodule RemoveExclamation do
  def remove(phrase) do
    phrase
    |> String.split("")
    |> do_remove
  end

  defp do_remove([]) do
    ""
  end

  defp do_remove(["!" | tail]) do
    do_remove(tail)
  end

  defp do_remove([head | tail]) do
    head <> do_remove(tail)
  end
end

defmodule HighSchoolSweetheart do
  def first_letter(name) do
    String.trim(name) |> String.first()
  end

  def initial(name) do
    first_letter(name) |> String.upcase() |> Kernel.<>(".")
  end

  def initials(full_name) do
    # Much more functional but as it's my first approach to the language
    # I think it's not elegant nor more understandable than approach 1
    full_name 
    |> String.split()
    |> (fn names -> Enum.map(names, &initial/1) end).()
    |> (fn initials -> "#{Enum.at(initials, 0)}" <> " " <> "#{Enum.at(initials, 1)}" end).()
  end

  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end

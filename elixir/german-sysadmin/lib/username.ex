defmodule Username do
  def sanitize(username) do
    # ä becomes ae
    # ö becomes oe
    # ü becomes ue
    # ß becomes ss

    # Remove all but letters
    filtered_username = Enum.filter(username, fn char_code ->
      (char_code in ?a..?z) or (char_code in ?A..?Z)
    end)

    filtered_username
    |> to_string()
    |> String.downcase()
    |> to_charlist()
  end
end

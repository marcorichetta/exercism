from typing import Union


class Matrix:
    def __init__(self, matrix_string: str):

        # .splitlines() extracts to a list for every linebreak in the string
        # .split() does the same excepts in this case it cleans whitespaces
        self.rows: list[list[int]] = [
            [int(n) for n in row.split() if n != " "] for row in matrix_string.splitlines()
        ]

        # zip transposes the matrix but it returns a list of tuples
        # I needed to add another `list()`
        self.columns: list[list[int]] = list(map(list, zip(*self.rows)))

    def row(self, index: int) -> Union[list[int], int]:
        """Returns nth row based on the provided index"""

        return self.rows[index - 1]

    def column(self, index: int) -> Union[list[int], int]:

        return self.columns[index - 1]

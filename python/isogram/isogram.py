from collections import Counter


def is_isogram(string: str) -> bool:

    # "".join(string.split()) -> Removes whitespace
    # If at least one of `Counter.values` is different than 1 it means there's a repetition
    return not any(
        n != 1 for n in Counter("".join(string.split()).casefold().replace("-", "")).values()
    )

    # Nice solution with sets and is_alpha()
    # https://exercism.io/tracks/python/exercises/isogram/solutions/beed72fdd12a4e78b86d651720532286

from typing import Union


def latest(scores: list[int]) -> Union[list[int], int]:
    return scores[-1:].pop()


def personal_best(scores: list[int]) -> Union[list[int], int]:
    return max(scores)


def personal_top_three(scores: list[int]) -> Union[list[int], int]:
    return sorted(scores, reverse=True)[:3]

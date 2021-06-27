def distance(strand_a: str, strand_b: str) -> int:
    if len(strand_a) != len(strand_b):
        raise ValueError(".+")

    return [k == v for k, v in zip(strand_a, strand_b)].count(False)

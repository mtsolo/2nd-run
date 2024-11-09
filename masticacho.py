#!/usr/bin/env python3


NOTES_DICT: dict[str, str] = {
    "Do": "C",
    "Re": "D",
    "Mi": "E",
    "Fa": "F",
    "Sol": "G",
    "La": "A",
    "Si": "B",
}

input_file_name = input("input file name: ")

parsed: list[list[list[str]]] = []
with open(input_file_name + ".md", "r") as file:
    for line in file:
        line = line.strip()
        if not line or line[0] == "#":
            continue
        for it, en in NOTES_DICT.items():
            line = line.replace(it, en)
        parsed.append([bar.strip().split(" ") for bar in line.split("|")])

output_file_name = input_file_name + ".abc"
with open(output_file_name, "w") as file:
    file.writelines(
        " | ".join([" ".join([f'"{chord}"' for chord in bar]) for bar in line]) + "\n"
        for line in parsed
    )

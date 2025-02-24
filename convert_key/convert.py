class Layouts:
    colemak = [
        ['q','w','f','p','g','j','l','u','y',';'],
        ['a','r','s','t','d','h','n','e','i','o'],
        ['z','x','c','v','b','k','m',',','.','/'],
    ]

    pnea = [
        ['q','g','d','l','f','k','w','o','u','y'],
        ['r','s','t','h','m','p','n','e','a','i'],
        ['z','x','c','v','_','_','b','j','.','_'],
    ]


def convert_layout(in_path: str, out_path: str, before_layout: list, after_layout: list):
    with open(out_path, 'w', encoding='utf8') as out_f:
        with open(in_path, 'r', encoding='utf8') as in_f:
            is_done = False
            for line in in_f:
                for y in range(len(before_layout)):
                    for x in range(len(before_layout[y])):
                        before_char = before_layout[y][x]
                        after_char = after_layout[y][x]
                        if before_char == after_char:
                            continue
                        line = line.replace(before_char, after_char)
                        is_done = True
                out_f.write(line)
                if is_done:
                    continue

if __name__ == '__main__':
    convert_layout('../ime/google-japanese-input/とろみ配列/とろみ配列α.colemak.v1.0.txt', 'とろみ配列α.pnea.v1.0.txt', Layouts.colemak, Layouts.pnea)

# extends a given text file to a specified size in MB or GB
# runs at TestFiles level cause im too lazy to fix that part

import os
import sys

def resize_file_to_size(file_path, target_size, unit):
    unit_multipliers = {
        "KB": 1024,
        "MB": 1024 * 1024,
        "GB": 1024 * 1024 * 1024,
    }

    # get targets
    target_bytes = int(target_size) * unit_multipliers[unit]
    base_name, ext = os.path.splitext(file_path)
    output_path = f"{base_name}-{int(target_size)}{unit}{ext}"

    # print(target_bytes)

    # get the content
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # output, keep writing till we reach target_bytes
    content_bytes = content.encode('utf-8')
    content_len = len(content_bytes)

    with open(output_path, 'w', encoding='utf-8') as out_file:
        if content_len == target_bytes:
            out_file.write(content)

        elif content_len > target_bytes:
            truncated = content_bytes[:target_bytes]
            out_file.write(truncated.decode('utf-8', errors='ignore'))

        else:
            written_bytes = 0

            while written_bytes + content_len <= target_bytes:
                out_file.write(content)
                written_bytes += content_len

            remaining = target_bytes - written_bytes
            if remaining > 0:
                partial_bytes = content_bytes[:remaining]
                out_file.write(partial_bytes.decode('utf-8', errors='ignore'))


def main():
    if len(sys.argv) != 4:
        print("Usage: python3 resize_input.py <input file> <size> <KB|MB|GB>")
        return
    resize_file_to_size(sys.argv[1], sys.argv[2], sys.argv[3])


if __name__ == "__main__":
    main()

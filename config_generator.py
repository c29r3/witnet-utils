import os
from pathlib import Path


def write_to_file(file_path, string, mode="w"):
    with open(file_path, mode=mode) as f:
        f.write(string)


with open("template.yml", "r") as temp_data:
    template = temp_data.read()

with open("docker-compose.yml") as com_file:
    sentry_data = com_file.read()

p          = Path('.')
P2P_START  = 21338
OFFSET     = 1
MONIKER    = 2
count      = 39

write_to_file(f"docker-compose-{count+1}.yml", sentry_data, mode="w")

for acc in range(count):
    new_tmpl = template\
        .replace("%P2P_PORT%",  str(P2P_START))\
        .replace("%MONIKER%",   str(MONIKER))

    write_to_file(f"docker-compose-{count+1}.yml", new_tmpl, mode="a")
    P2P_START += OFFSET
    MONIKER   += OFFSET

print("Done")

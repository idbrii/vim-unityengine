#! /bin/env python3

# You should apply smartmerge.patch to <unity_install>/Editor/Data/Tools/ or
# specify your own merge file handler.

import argparse
import datetime
import os
import pathlib
import subprocess

def _get_and_validate_args():
    arg_parser = argparse.ArgumentParser(
        description='''Run Unity's smartmerge.

TortoiseSVN setup:
    unity_smartmerge.py --base %base --theirs %theirs --mine %mine --merged %merged
        ''',
        formatter_class=argparse.RawDescriptionHelpFormatter # preserves newlines
    )

    arg_parser.add_argument('--base',
                            required=True,
                            help="")
    arg_parser.add_argument('--theirs',
                            required=True,
                            help="")
    arg_parser.add_argument('--mine',
                            required=True,
                            help="")
    arg_parser.add_argument('--merged',
                            required=True,
                            help="")

    arg_parser.add_argument('--unity',
                            
                            help="Path to unity.exe")

    args = arg_parser.parse_args()
    return args

def find_unity():
    """Search for Unity.exe

    find_unity() -> str
    """
    for v in os.environ.values():
        if v.endswith("Unity.exe"):
            return v
    unity_root = pathlib.Path(os.environ['PROGRAMFILES']) / "Unity/Editor"
    if unity_root.exists():
        for f in unity_root.rglob("Unity.exe"):
            return f
    return None


def _main(args):
    unity = args.unity
    if not unity:
        unity = find_unity()
    
    unity = pathlib.Path(unity)
    smartmerge = unity.parent / "Data/Tools/UnityYAMLMerge.exe"

    cmd = [smartmerge, "merge", "-p", args.base, args.theirs, args.mine, args.merged]
    out = subprocess.check_output(cmd, universal_newlines=True)
    with open('c:/logs/unitymerge.log', 'a') as f:
        f.write(f"\n\nOn {datetime.datetime.now()} {args.mine} {'{{{'}1\n")
        f.write("Command: {{{2\n")
        f.write("\n".join(str(c) for c in cmd))
        f.write("\nOutput: {{{2\n\n")
        f.write(out)

if __name__ == "__main__":
    args = _get_and_validate_args()
    _main(args)


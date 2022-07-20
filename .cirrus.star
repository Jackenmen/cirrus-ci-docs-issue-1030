load("github.com/cirrus-modules/helpers", "container", "script", "task")


def main(ctx):
    return [
        task("example", container("ubuntu:latest"), {}, [script('echo "${CUSTOM_VAR:-default value}"')])
    ]

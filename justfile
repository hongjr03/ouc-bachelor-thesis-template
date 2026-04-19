package target="@local":
    #!/usr/bin/env bash
    set -euo pipefail
    
    . scripts/setup

    OUT_DIR="$(resolve-target {{target}})"
    TARGET="$OUT_DIR/$PKG_PREFIX/$VERSION"

    echo "Packaging $PKG_PREFIX v$VERSION to $TARGET"
    mkdir -p "$TARGET"
    
    # 使用 rsync 复制所有需要打包的文件，排除不必要的文件和文件夹
    rsync -a --exclude '.git' --exclude '.github' --exclude 'scripts' --exclude 'justfile' --exclude 'out' --exclude 'dist' ./ "$TARGET/"
    
    echo "Successfully packaged to $TARGET"

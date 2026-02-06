agent-init-md() {
    local CONFIG_DIR="$HOME/.config/coding-with-ai-workshop/default-project-config"

    # Choose target filename
    echo "Select target file:"
    echo "1) CLAUDE.md"
    echo "2) AGENTS.md"
    read -p "Choice [1-2]: " choice

    local TARGET
    case $choice in
        1) TARGET="CLAUDE.md" ;;
        2) TARGET="AGENTS.md" ;;
        *) echo "Invalid choice"; return 1 ;;
    esac

    # Get all available templates
    local files=()
    mapfile -t files < <(ls "$CONFIG_DIR"/*.md 2>/dev/null | sort)
    [[ ${#files[@]} -eq 0 ]] && { echo "No templates found"; return 1; }

    # Show options
    echo -e "\nSelect template:"
    for i in "${!files[@]}"; do
        local name=$(basename "${files[$i]}" .md)
        echo "$((i+1))) $name"
    done

    # Get selection
    read -p "Choice [1-${#files[@]}]: " sel
    ((sel >= 1 && sel <= ${#files[@]})) || { echo "Invalid choice"; return 1; }

    # Copy file
    cp "${files[$((sel-1))]}" "./${TARGET}"
    echo "Created ./${TARGET}"
}

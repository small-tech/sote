# Send Output to Editor (sote)
function sote
    printf '%s\n' (string split0 (eval $history[1])) | "$EDITOR"
end

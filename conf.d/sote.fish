# Send Output to Editor (sote)
function sote
    set -l lastCommand (eval $history[1])
    printf '%s\n' (string split0 (eval $history[1])) | "$EDITOR"
end

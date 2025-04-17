# Function for showing weather info (using wttr.in)
function weather() {
    local style=$1
    case "$style" in
        detail)
            curl v2d.wttr.in 
            ;;
        *)
            curl wttr.in 
            ;;
    esac
}

###################
# Weather aliases #
###################
alias sw=weather
alias swd="weather detail"
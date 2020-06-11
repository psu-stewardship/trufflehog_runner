# trufflehog_runner
Secrets scanner for public repos.  Uses trufflehog: https://github.com/dxa4481/truffleHog

Usage:

    make scan GIT_URL={url of repo you want to scan}

 Add regex patterns to exclude files/directories in the exclude_patterns.txt file.  These are any files/directories that do not need to be scanned.  The patterns must be regexes that match the full path of the file/directory from the app's root directory.  Make sure to label your patterns with a comment indicating the name of the system the patterns
 are for.

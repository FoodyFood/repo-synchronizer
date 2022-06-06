# Repo Synchronizer

I had an issue in work where we ahd a repo with one providor, and needed to copy it's contents out to a different providor.

This script was my solution, and since it's pretty basic I figured I'd put it on my GitHub and hopefully it saves someone else some time too.

### Usage

```bash
./sync.sh git@github.com:FoodyFood/repo-1.git git@github.com:FoodyFood/repo-2.git
```

### Repo Providers

Since the sommands lean totally on git and dont really have anything to do with the providor, I see no reason why this wouldnt work between any 2 providors and any 2 repos.

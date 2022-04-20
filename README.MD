[![Datawrapper re-publish](https://github.com/fubits1/ua-datawrapper/actions/workflows/dw-publish.yaml/badge.svg)](https://github.com/fubits1/ua-datawrapper/actions/workflows/dw-publish.yaml)

# What

Minimal, CRON-ed pipeline, which runs daily and re-publishes a set of datawrapper charts with `R` and the [DatawrappR 📦](https://github.com/munichrocker/DatawRappr) package.

# Purpose

This is done to upkeep the "5-minute auto-refresh frequency for live-connected data" feature which datawrapper grants for the first 24h after a chart has been published.

> Important: `@param` `secrets.CHART_IDS` - if you provide more than 1, it must be a comma-separated string `id1, id2, id3`

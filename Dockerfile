FROM grafana/grafana:6.6.0
ENV GF_PATHS_PLUGINS=/var/lib/grafana-plugins
RUN mkdir "$GF_PATHS_PLUGINS" && grafana-cli --pluginsDir "$GF_PATHS_PLUGINS" plugins install grafana-piechart-panel 1.4.0
ENTRYPOINT [ "/run.sh" ]

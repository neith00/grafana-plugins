FROM grafana/grafana:6.7.1
ENV GF_PATHS_PLUGINS=/var/lib/grafana-plugins
USER root
RUN mkdir "$GF_PATHS_PLUGINS"  && chown grafana:grafana "$GF_PATHS_PLUGINS"
USER grafana 
RUN grafana-cli --pluginsDir "$GF_PATHS_PLUGINS" plugins install grafana-piechart-panel 1.4.0
ENTRYPOINT [ "/run.sh" ]

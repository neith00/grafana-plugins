FROM grafana/grafana:6.6.0
RUN grafana-cli plugins install grafana-piechart-panel 1.4.0
ENTRYPOINT [ "/run.sh" ]

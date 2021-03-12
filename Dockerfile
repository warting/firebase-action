FROM andreysenov/firebase-tools

LABEL "name"="firebase"
LABEL "version"="1.0.7"
LABEL "maintainer"="Jonah Snider <me@jonahsnider.ninja> (jonahsnider.ninja)"

LABEL "com.github.actions.name"="Firebase GitHub Action"
LABEL "com.github.actions.description"="Wraps the Firebase CLI to enable common commands."
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/pizzafox/firebase-action"
LABEL "homepage"="https://github.com/pizzafox/firebase-action"
USER root
COPY license.md readme.md /
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
USER node
ENTRYPOINT ["/entrypoint.sh"]
CMD ["--help"]
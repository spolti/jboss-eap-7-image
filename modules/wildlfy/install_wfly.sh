#!/bin/sh

set -e

SOURCES_DIR=/tmp/artifacts/
DISTRIBUTION_ZIP="${DISTRIBUTION_ZIP}"

unzip -q $SOURCES_DIR/$DISTRIBUTION_ZIP
mv wildfly-$WILDFLY_VERSION $JBOSS_HOME

function update_permissions {
  chown -R jboss:root $JBOSS_HOME
  chmod 0755 $JBOSS_HOME
  chmod -R g+rwX $JBOSS_HOME
}

update_permissions
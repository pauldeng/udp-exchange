PROJECT = udp_exchange
PROJECT_DESCRIPTION = Udp Exchange Type

define PROJECT_APP_EXTRA_KEYS
	{broker_version_requirements, []}
endef

DEPS = rabbit_common rabbit
TEST_DEPS = rabbitmq_ct_helpers rabbitmq_ct_client_helpers amqp_client

DEP_EARLY_PLUGINS = rabbit_common/mk/rabbitmq-early-plugin.mk
DEP_PLUGINS = rabbit_common/mk/rabbitmq-plugin.mk

include ../../rabbitmq-components.mk
include ../../erlang.mk
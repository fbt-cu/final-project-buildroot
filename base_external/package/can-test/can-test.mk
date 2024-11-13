
##############################################################
#
# CAN-TEST
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
CAN_TEST_VERSION = '5fa9d5940500ff3825d8d4f5bf933606dbec40ca'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
CAN_TEST_SITE = 'git@github.com:fbt-cu/final-project-can-socket.git'
CAN_TEST_SITE_METHOD = git
CAN_TEST_GIT_SUBMODULES = YES

define CAN_TEST_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/can-test all
endef

define CAN_TEST_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/can-test/can-test $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))

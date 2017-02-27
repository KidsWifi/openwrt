include $(TOPDIR)/rules.mk

PKG_NAME:=mdns-repeater
PKG_VERSION:=1.0.0
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/mdns-repeater

include $(INCLUDE_DIR)/package.mk

define Package/mdns-repeater
  SECTION:=network
  CATEGORY:=Network
  TITLE:=mDNS Repeater
  #DEPENDS:=+libpcap 
endef

define Package/mdns-repeater/description
 A daemon used for repeating mDNS packets between physical/virtual interfaces 
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/mdns-repeater/install
	$(INSTALL_DIR) $(1)/sbin
	$(INSTALL_DIR) $(1)/etc/hotplug.d/iface
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/mdns-repeater $(1)/sbin/
	$(INSTALL_BIN) ./files/mdns-repeater-hotplug.sh $(1)/etc/hotplug.d/iface/40-mdns-repeater
endef

$(eval $(call BuildPackage,mdns-repeater))

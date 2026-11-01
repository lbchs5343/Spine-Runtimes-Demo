package com.bytedance.sdk.openadsdk.core.h.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;

/* loaded from: classes3.dex */
public class p implements EventListener {
    public void dq(Bridge bridge, Bridge bridge2, Bridge bridge3) {
    }

    @Override // com.bykv.vk.openvk.api.proto.EventListener
    public ValueSet onEvent(int i, Result result) {
        if (i != 223200 || result == null || result.values() == null) {
            return null;
        }
        ValueSet values = result.values();
        dq((Bridge) values.objectValue(ValueSetConstants.VALUE_DOWNLOAD_MODEL, Bridge.class), (Bridge) values.objectValue(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG, Bridge.class), (Bridge) values.objectValue(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER, Bridge.class));
        return null;
    }
}

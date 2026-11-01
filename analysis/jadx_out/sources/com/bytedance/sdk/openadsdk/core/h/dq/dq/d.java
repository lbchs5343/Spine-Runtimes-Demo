package com.bytedance.sdk.openadsdk.core.h.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;

/* loaded from: classes3.dex */
public class d implements EventListener {
    public void d(Bridge bridge) {
    }

    public void d(Bridge bridge, int i) {
    }

    public void dq() {
    }

    public void dq(Bridge bridge) {
    }

    public void dq(Bridge bridge, int i) {
    }

    public void dq(Bridge bridge, Bridge bridge2) {
    }

    @Override // com.bykv.vk.openvk.api.proto.EventListener
    public ValueSet onEvent(int i, Result result) {
        switch (i) {
            case ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_IDLE /* 223600 */:
                dq();
                break;
            case ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_START /* 223601 */:
                if (result != null && result.values() != null) {
                    ValueSet values = result.values();
                    dq((Bridge) values.objectValue(ValueSetConstants.VALUE_DOWNLOAD_MODEL, Bridge.class), (Bridge) values.objectValue(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER, Bridge.class));
                    break;
                }
                break;
            case ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE /* 223602 */:
                if (result != null && result.values() != null) {
                    ValueSet values2 = result.values();
                    dq((Bridge) values2.objectValue(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_SHORT, Bridge.class), ((Integer) values2.objectValue(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_PERCENT, Integer.class)).intValue());
                    break;
                }
                break;
            case ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_PAUSED /* 223603 */:
                if (result != null && result.values() != null) {
                    ValueSet values3 = result.values();
                    d((Bridge) values3.objectValue(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_SHORT, Bridge.class), ((Integer) values3.objectValue(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_PERCENT, Integer.class)).intValue());
                    break;
                }
                break;
            case ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_FAILED /* 223604 */:
                if (result != null && result.values() != null) {
                    dq((Bridge) result.values().objectValue(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_SHORT, Bridge.class));
                    break;
                }
                break;
            case ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ON_INSTALLED /* 223605 */:
                if (result != null && result.values() != null) {
                    d((Bridge) result.values().objectValue(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_SHORT, Bridge.class));
                    break;
                }
                break;
            case ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ON_FINISHED /* 223606 */:
                if (result != null && result.values() != null) {
                    ox((Bridge) result.values().objectValue(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_SHORT, Bridge.class));
                    break;
                }
                break;
        }
        return null;
    }

    public void ox(Bridge bridge) {
    }
}

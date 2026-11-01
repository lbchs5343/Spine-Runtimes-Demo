package com.bytedance.msdk.iw.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* loaded from: classes.dex */
public class ox {
    private final ValueSet dq;

    private ox(ValueSet valueSet) {
        this.dq = valueSet;
    }

    private boolean d() {
        ValueSet valueSet = this.dq;
        return (valueSet == null || valueSet.isEmpty()) ? false : true;
    }

    public static ox dq(ValueSet valueSet) {
        return new ox(valueSet);
    }

    public Bridge dq() {
        if (d()) {
            return (Bridge) this.dq.objectValue(8301, Bridge.class);
        }
        return null;
    }
}

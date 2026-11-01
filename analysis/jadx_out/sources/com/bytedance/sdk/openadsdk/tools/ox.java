package com.bytedance.sdk.openadsdk.tools;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.wp;
import g.hat;

/* loaded from: classes3.dex */
public class ox implements Bridge {
    private static volatile ox dq;

    private ox() {
    }

    public static ox dq() {
        if (dq == null) {
            dq = new ox();
        }
        return dq;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 10001) {
            no.ia().o(valueSet.booleanValue(1));
            return null;
        }
        if (i == 10002) {
            return (T) Boolean.valueOf(no.ia().uh());
        }
        if (i == 10003) {
            Bridge bridge = (Bridge) valueSet.objectValue(0, Bridge.class);
            if (bridge == null) {
                return null;
            }
            wp.dq().dq(bridge);
            return null;
        }
        if (i != 10004) {
            if (i != 10005) {
                return null;
            }
            hat f2 = hat.f();
            f2.n(0, no.ia().yy());
            f2.n(1, no.ia().v());
            return (T) f2.k();
        }
        Bridge bridge2 = (Bridge) valueSet.objectValue(0, Bridge.class);
        String str = (String) valueSet.objectValue(1, String.class);
        String str2 = (String) valueSet.objectValue(2, String.class);
        String str3 = (String) valueSet.objectValue(3, String.class);
        String str4 = (String) valueSet.objectValue(4, String.class);
        if (bridge2 == null) {
            return null;
        }
        wp.dq().dq(str, str2, str3, str4, bridge2);
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}

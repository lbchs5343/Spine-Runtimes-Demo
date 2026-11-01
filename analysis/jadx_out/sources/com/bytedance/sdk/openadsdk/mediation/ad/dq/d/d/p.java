package com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class p implements Bridge {
    private ValueSet dq;

    private ValueSet o() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 271047) {
            return (T) ia();
        }
        switch (i) {
            case 271035:
                return (T) dq();
            case 271036:
                return (T) d();
            case 271037:
                return (T) Long.class.cast(Long.valueOf(ox()));
            case 271038:
                return (T) p();
            case 271039:
                return (T) s();
            case 271040:
                return (T) iw();
            case 271041:
                return (T) mn();
            case 271042:
                return (T) kk();
            default:
                return null;
        }
    }

    public abstract String d();

    public abstract String dq();

    public abstract String ia();

    public abstract String iw();

    public abstract Map<String, Object> kk();

    public abstract String mn();

    public abstract long ox();

    public abstract String p();

    public abstract Map<String, String> s();

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet o = o();
        this.dq = o;
        return o;
    }
}

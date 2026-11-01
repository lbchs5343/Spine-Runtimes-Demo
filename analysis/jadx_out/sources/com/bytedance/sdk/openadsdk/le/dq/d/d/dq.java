package com.bytedance.sdk.openadsdk.le.dq.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public abstract class dq implements Bridge {
    private ValueSet dq;

    private ValueSet s() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 162101:
                return (T) dq();
            case 162102:
                d();
                return null;
            case 162103:
                dq(valueSet.longValue(0));
                return null;
            case 162104:
                d(valueSet.longValue(0));
                return null;
            case 162105:
                ox();
                return null;
            case 162106:
                ox(valueSet.longValue(0));
                return null;
            case 162107:
                p();
                return null;
            case 162108:
                dq(valueSet.intValue(0), valueSet.intValue(1));
                return null;
            case 162109:
                dq(valueSet.longValue(0), valueSet.intValue(1), valueSet.intValue(2));
                return null;
            default:
                return null;
        }
    }

    public abstract void d();

    public abstract void d(long j);

    public abstract String dq();

    public abstract void dq(int i, int i2);

    public abstract void dq(long j);

    public abstract void dq(long j, int i, int i2);

    public abstract void ox();

    public abstract void ox(long j);

    public abstract void p();

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet s = s();
        this.dq = s;
        return s;
    }
}

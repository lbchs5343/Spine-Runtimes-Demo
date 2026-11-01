package com.bytedance.sdk.openadsdk.mediation.ad.dq.d.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class d implements Bridge {
    private ValueSet dq;

    private ValueSet jy() {
        return hat.f().k();
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        switch (i) {
            case 271021:
                return (T) Integer.class.cast(Integer.valueOf(dq()));
            case 271022:
                return (T) Integer.class.cast(Integer.valueOf(d()));
            case 271023:
                return (T) Integer.class.cast(Integer.valueOf(ox()));
            case 271024:
                return (T) Integer.class.cast(Integer.valueOf(p()));
            case 271025:
                return (T) Integer.class.cast(Integer.valueOf(s()));
            case 271026:
                return (T) Integer.class.cast(Integer.valueOf(iw()));
            case 271027:
                return (T) Integer.class.cast(Integer.valueOf(mn()));
            case 271028:
                return (T) Integer.class.cast(Integer.valueOf(ia()));
            case 271029:
                return (T) Integer.class.cast(Integer.valueOf(kk()));
            case 271030:
                return (T) Integer.class.cast(Integer.valueOf(o()));
            case 271031:
                return (T) Integer.class.cast(Integer.valueOf(no()));
            case 271032:
                return (T) Integer.class.cast(Integer.valueOf(ig()));
            case 271033:
                return (T) Integer.class.cast(Integer.valueOf(mp()));
            case 271034:
                return (T) q();
            default:
                return null;
        }
    }

    public abstract int d();

    public abstract int dq();

    public abstract int ia();

    public abstract int ig();

    public abstract int iw();

    public abstract int kk();

    public abstract int mn();

    public abstract int mp();

    public abstract int no();

    public abstract int o();

    public abstract int ox();

    public abstract int p();

    public abstract Map<String, Integer> q();

    public abstract int s();

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return valueSet;
        }
        ValueSet jy = jy();
        this.dq = jy;
        return jy;
    }
}

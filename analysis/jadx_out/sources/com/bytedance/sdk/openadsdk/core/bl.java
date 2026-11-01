package com.bytedance.sdk.openadsdk.core;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.io.Serializable;
import java.util.Map;

/* loaded from: classes3.dex */
public class bl extends com.bytedance.sdk.openadsdk.f.d.ox.p implements Bridge, Serializable {
    com.bytedance.sdk.openadsdk.f.d.ox.p dq;

    public bl(com.bytedance.sdk.openadsdk.f.d.ox.p pVar) {
        super(null);
        this.dq = pVar;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 262119) {
            return (T) mp();
        }
        switch (i) {
            case 262101:
                return (T) Boolean.valueOf(dq());
            case 262102:
                return (T) ia();
            case 262103:
                return (T) Boolean.valueOf(d());
            case 262104:
                return (T) Boolean.valueOf(ox());
            case 262105:
                return (T) kk();
            case 262106:
                return (T) Boolean.valueOf(p());
            case 262107:
                return (T) o();
            case 262108:
                return (T) Boolean.valueOf(s());
            case 262109:
                return (T) no();
            case 262110:
                return (T) Boolean.valueOf(iw());
            case 262111:
                return (T) Boolean.valueOf(mn());
            case 262112:
                return (T) ig();
            default:
                return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public boolean d() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.d() : pVar.d();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public boolean dq() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.dq() && com.bytedance.sdk.openadsdk.core.k.s.dq().dq(wp.getContext(), "android.permission.ACCESS_COARSE_LOCATION") && com.bytedance.sdk.openadsdk.core.k.s.dq().dq(wp.getContext(), "android.permission.ACCESS_FINE_LOCATION") : pVar.dq() && com.bytedance.sdk.openadsdk.core.k.s.dq().dq(wp.getContext(), "android.permission.ACCESS_COARSE_LOCATION") && com.bytedance.sdk.openadsdk.core.k.s.dq().dq(wp.getContext(), "android.permission.ACCESS_FINE_LOCATION");
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public com.bytedance.sdk.openadsdk.f.d.ox.ox ia() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.ia() : pVar.ia();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public String ig() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.ig() : pVar.ig();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public boolean iw() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.iw() : pVar.iw();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public String kk() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.kk() : pVar.kk();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public boolean mn() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public Map<String, Object> mp() {
        if (op.f3334d < 6408) {
            return null;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.mp() : pVar.mp();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public String no() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.no() : pVar.no();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public String o() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.o() : pVar.o();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public boolean ox() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.ox() : pVar.ox() && com.bytedance.sdk.openadsdk.core.k.s.dq().dq(wp.getContext(), "android.permission.READ_PHONE_STATE");
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public boolean p() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.p() : pVar.p() && com.bytedance.sdk.openadsdk.core.k.s.dq().dq(wp.getContext(), "android.permission.ACCESS_WIFI_STATE");
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
    public boolean s() {
        com.bytedance.sdk.openadsdk.f.d.ox.p pVar = this.dq;
        return pVar == null ? super.s() : pVar.s() && com.bytedance.sdk.openadsdk.core.k.s.dq().dq(wp.getContext(), "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}

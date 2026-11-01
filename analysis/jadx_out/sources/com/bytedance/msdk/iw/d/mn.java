package com.bytedance.msdk.iw.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.List;

/* loaded from: classes.dex */
public class mn implements Bridge {
    private com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.d dq;

    public mn(com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.d dVar) {
        this.dq = dVar;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    public boolean d() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.d dVar = this.dq;
        if (dVar != null) {
            return dVar.s();
        }
        return true;
    }

    public boolean dq() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.d dVar = this.dq;
        if (dVar != null) {
            return dVar.p();
        }
        return false;
    }

    public List<String> ox() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.d dVar = this.dq;
        if (dVar != null) {
            return dVar.dq();
        }
        return null;
    }

    public List<String> p() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.d dVar = this.dq;
        if (dVar != null) {
            return dVar.d();
        }
        return null;
    }

    public boolean s() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.d dVar = this.dq;
        if (dVar != null) {
            return dVar.ox();
        }
        return true;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        f2.m(8476, ox());
        f2.m(8477, p());
        f2.i(8478, s());
        f2.i(8027, dq());
        f2.i(8028, d());
        return f2.k();
    }
}

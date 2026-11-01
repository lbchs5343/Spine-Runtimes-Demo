package com.bytedance.msdk.iw.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes.dex */
public class iw implements Bridge {
    private com.bytedance.sdk.openadsdk.f.d.ox.ox dq;

    public iw(com.bytedance.sdk.openadsdk.f.d.ox.ox oxVar) {
        this.dq = oxVar;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        com.bytedance.sdk.openadsdk.f.d.ox.ox oxVar = this.dq;
        f2.j(8481, oxVar != null ? oxVar.dq() : 0.0d);
        com.bytedance.sdk.openadsdk.f.d.ox.ox oxVar2 = this.dq;
        f2.j(8482, oxVar2 != null ? oxVar2.d() : 0.0d);
        return f2.k();
    }
}

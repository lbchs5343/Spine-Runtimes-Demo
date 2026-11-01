package com.bytedance.msdk.iw.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ia implements Bridge {
    private com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox dq;

    public ia(com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar) {
        this.dq = oxVar;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar = this.dq;
        f2.m(8468, oxVar != null ? oxVar.dq() : new HashMap<>());
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar2 = this.dq;
        f2.o(8469, oxVar2 != null ? oxVar2.s() : 0);
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar3 = this.dq;
        f2.n(8470, oxVar3 != null ? oxVar3.ox() : "");
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar4 = this.dq;
        f2.n(8471, oxVar4 != null ? oxVar4.p() : "");
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar5 = this.dq;
        f2.n(8472, oxVar5 != null ? oxVar5.d() : "");
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar6 = this.dq;
        f2.n(8473, oxVar6 != null ? oxVar6.iw() : "");
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox oxVar7 = this.dq;
        f2.n(8474, oxVar7 != null ? oxVar7.mn() : "");
        return f2.k();
    }
}

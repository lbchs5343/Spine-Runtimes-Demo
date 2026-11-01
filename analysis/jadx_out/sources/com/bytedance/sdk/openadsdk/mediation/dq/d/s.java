package com.bytedance.sdk.openadsdk.mediation.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.List;

/* loaded from: classes3.dex */
public class s {
    private Bridge dq;

    public s(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public dq d() {
        return new dq((ValueSet) this.dq.call(271045, hat.g(0).k(), ValueSet.class));
    }

    public int dq() {
        return ((Integer) this.dq.call(271044, hat.g(0).k(), Integer.TYPE)).intValue();
    }

    public List<String> ox() {
        return (List) this.dq.call(271046, hat.g(0).k(), List.class);
    }
}

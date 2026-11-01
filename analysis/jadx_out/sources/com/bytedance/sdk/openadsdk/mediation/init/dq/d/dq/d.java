package com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.List;

/* loaded from: classes3.dex */
public class d {
    public final ValueSet dq;

    public d(ValueSet valueSet) {
        this.dq = valueSet == null ? hat.f19147b : valueSet;
    }

    public List<String> d() {
        return (List) this.dq.objectValue(262115, List.class);
    }

    public List<String> dq() {
        return (List) this.dq.objectValue(262114, List.class);
    }

    public boolean ox() {
        return this.dq.booleanValue(262116);
    }

    public boolean p() {
        return this.dq.booleanValue(262117);
    }

    public boolean s() {
        return this.dq.booleanValue(262118);
    }
}

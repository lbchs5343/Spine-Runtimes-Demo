package com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class ox {
    public final ValueSet dq;

    public ox(ValueSet valueSet) {
        this.dq = valueSet == null ? hat.f19147b : valueSet;
    }

    public String d() {
        return (String) this.dq.objectValue(265001, String.class);
    }

    public Map<String, String> dq() {
        return (Map) this.dq.objectValue(265007, Map.class);
    }

    public String iw() {
        return (String) this.dq.objectValue(265005, String.class);
    }

    public String mn() {
        return (String) this.dq.objectValue(265006, String.class);
    }

    public String ox() {
        return (String) this.dq.objectValue(265002, String.class);
    }

    public String p() {
        return (String) this.dq.objectValue(265003, String.class);
    }

    public int s() {
        return this.dq.intValue(265004);
    }
}

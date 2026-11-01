package com.bytedance.sdk.openadsdk.f.d.ox;

import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq {
    public final ValueSet dq;

    public dq(ValueSet valueSet) {
        this.dq = valueSet == null ? hat.f19147b : valueSet;
    }

    public String d() {
        return (String) this.dq.objectValue(261002, String.class);
    }

    public String dq() {
        return (String) this.dq.objectValue(261001, String.class);
    }

    public Map<String, Object> f() {
        return (Map) this.dq.objectValue(261018, Map.class);
    }

    public boolean ia() {
        return this.dq.booleanValue(261008);
    }

    public int ig() {
        return this.dq.intValue(261013);
    }

    public int iw() {
        return this.dq.intValue(261006);
    }

    public boolean jy() {
        return this.dq.booleanValue(261017);
    }

    public int[] kk() {
        return (int[]) this.dq.objectValue(261009, int[].class);
    }

    public boolean mn() {
        return this.dq.booleanValue(261007);
    }

    public int mp() {
        return this.dq.intValue(261014);
    }

    public p no() {
        ValueSet valueSet = (ValueSet) this.dq.objectValue(261012, ValueSet.class);
        if (valueSet != null) {
            return new p(valueSet);
        }
        return null;
    }

    public boolean o() {
        return this.dq.booleanValue(261011);
    }

    public boolean ox() {
        return this.dq.booleanValue(261003);
    }

    public String p() {
        return (String) this.dq.objectValue(261004, String.class);
    }

    public com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq q() {
        ValueSet valueSet = (ValueSet) this.dq.objectValue(261016, ValueSet.class);
        if (valueSet != null) {
            return new com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq(valueSet);
        }
        return null;
    }

    public String s() {
        return (String) this.dq.objectValue(261005, String.class);
    }
}

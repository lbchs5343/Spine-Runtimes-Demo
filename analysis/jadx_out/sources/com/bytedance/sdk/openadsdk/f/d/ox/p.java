package com.bytedance.sdk.openadsdk.f.d.ox;

import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.Map;

/* loaded from: classes3.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    public final ValueSet f3750d;

    public static class dq {
        private final hat dq = hat.f();

        public dq d(String str) {
            this.dq.n(262107, str);
            return this;
        }

        public dq d(boolean z) {
            this.dq.i(262103, z);
            return this;
        }

        public dq dq(ox oxVar) {
            this.dq.m(262102, oxVar);
            return this;
        }

        public dq dq(String str) {
            this.dq.n(262105, str);
            return this;
        }

        public dq dq(boolean z) {
            this.dq.i(262101, z);
            return this;
        }

        public p dq() {
            return new p(this.dq.k());
        }

        public dq iw(boolean z) {
            this.dq.i(262110, z);
            return this;
        }

        public dq mn(boolean z) {
            this.dq.i(262111, z);
            return this;
        }

        public dq ox(String str) {
            this.dq.n(262109, str);
            return this;
        }

        public dq ox(boolean z) {
            this.dq.i(262104, z);
            return this;
        }

        public dq p(String str) {
            this.dq.n(262112, str);
            return this;
        }

        public dq p(boolean z) {
            this.dq.i(262106, z);
            return this;
        }

        public dq s(boolean z) {
            this.dq.i(262108, z);
            return this;
        }
    }

    public p(ValueSet valueSet) {
        this.f3750d = valueSet == null ? hat.f19147b : valueSet;
    }

    public boolean d() {
        return this.f3750d.booleanValue(262103);
    }

    public boolean dq() {
        return this.f3750d.booleanValue(262101);
    }

    public ox ia() {
        ValueSet valueSet = (ValueSet) this.f3750d.objectValue(262102, ValueSet.class);
        if (valueSet != null) {
            return new ox(valueSet);
        }
        return null;
    }

    public String ig() {
        return (String) this.f3750d.objectValue(262112, String.class);
    }

    public boolean iw() {
        return this.f3750d.booleanValue(262110);
    }

    public String kk() {
        return (String) this.f3750d.objectValue(262105, String.class);
    }

    public boolean mn() {
        return this.f3750d.booleanValue(262111);
    }

    public Map<String, Object> mp() {
        return (Map) this.f3750d.objectValue(262119, Map.class);
    }

    public String no() {
        return (String) this.f3750d.objectValue(262109, String.class);
    }

    public String o() {
        return (String) this.f3750d.objectValue(262107, String.class);
    }

    public boolean ox() {
        return this.f3750d.booleanValue(262104);
    }

    public boolean p() {
        return this.f3750d.booleanValue(262106);
    }

    public com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.d q() {
        ValueSet valueSet = (ValueSet) this.f3750d.objectValue(262113, ValueSet.class);
        if (valueSet != null) {
            return new com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.d(valueSet);
        }
        return null;
    }

    public boolean s() {
        return this.f3750d.booleanValue(262108);
    }
}

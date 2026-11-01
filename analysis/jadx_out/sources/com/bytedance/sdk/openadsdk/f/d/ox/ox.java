package com.bytedance.sdk.openadsdk.f.d.ox;

import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes3.dex */
public class ox {
    public final ValueSet dq;

    public static class dq {
        private final hat dq = hat.f();

        public dq d(double d2) {
            this.dq.j(262002, d2);
            return this;
        }

        public dq dq(double d2) {
            this.dq.j(262001, d2);
            return this;
        }

        public ox dq() {
            return new ox(this.dq.k());
        }
    }

    public ox(ValueSet valueSet) {
        this.dq = valueSet == null ? hat.f19147b : valueSet;
    }

    public double d() {
        return this.dq.doubleValue(262002);
    }

    public double dq() {
        return this.dq.doubleValue(262001);
    }
}

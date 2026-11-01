package com.bytedance.sdk.openadsdk.f.d.ox;

import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdLoadType;
import g.hat;

/* loaded from: classes3.dex */
public class d {
    public final ValueSet dq;

    public static class dq {
        private final hat dq;

        public dq() {
            this.dq = hat.f();
        }

        public dq(d dVar) {
            this.dq = hat.e(dVar.dq);
        }

        public dq d(float f2) {
            this.dq.l(260009, f2);
            return this;
        }

        public dq d(int i) {
            this.dq.o(260007, i);
            return this;
        }

        public dq d(String str) {
            this.dq.n(260002, str);
            return this;
        }

        public dq d(boolean z) {
            this.dq.i(260010, z);
            return this;
        }

        public dq dq(float f2) {
            this.dq.l(260008, f2);
            return this;
        }

        public dq dq(int i) {
            this.dq.o(260006, i);
            return this;
        }

        public dq dq(TTAdLoadType tTAdLoadType) {
            this.dq.m(260023, tTAdLoadType);
            return this;
        }

        public dq dq(String str) {
            this.dq.n(260001, str);
            return this;
        }

        public dq dq(boolean z) {
            this.dq.i(260005, z);
            return this;
        }

        public dq dq(int[] iArr) {
            this.dq.m(260017, iArr);
            return this;
        }

        public d dq() {
            return new d(this.dq.k());
        }

        public dq ia(int i) {
            this.dq.o(260025, i);
            return this;
        }

        public dq ia(String str) {
            this.dq.n(260021, str);
            return this;
        }

        public dq iw(int i) {
            this.dq.o(260018, i);
            return this;
        }

        public dq iw(String str) {
            this.dq.n(260014, str);
            return this;
        }

        public dq kk(String str) {
            this.dq.n(260022, str);
            return this;
        }

        public dq mn(int i) {
            this.dq.o(260020, i);
            return this;
        }

        public dq mn(String str) {
            this.dq.n(260019, str);
            return this;
        }

        public dq o(String str) {
            this.dq.n(260024, str);
            return this;
        }

        public dq ox(int i) {
            this.dq.o(2600012, i);
            return this;
        }

        public dq ox(String str) {
            this.dq.n(260003, str);
            return this;
        }

        public dq ox(boolean z) {
            this.dq.i(260011, z);
            return this;
        }

        public dq p(int i) {
            this.dq.o(260015, i);
            return this;
        }

        public dq p(String str) {
            this.dq.n(260004, str);
            return this;
        }

        public dq p(boolean z) {
            this.dq.i(260026, z);
            return this;
        }

        public dq s(int i) {
            this.dq.o(260016, i);
            return this;
        }

        public dq s(String str) {
            this.dq.n(260013, str);
            return this;
        }
    }

    public d(ValueSet valueSet) {
        this.dq = valueSet == null ? hat.f19147b : valueSet;
    }

    public boolean bl() {
        return this.dq.booleanValue(260026);
    }

    public int cd() {
        return this.dq.intValue(260015);
    }

    public String e() {
        return (String) this.dq.objectValue(260022, String.class);
    }

    public String f() {
        return (String) this.dq.objectValue(260013, String.class);
    }

    public String fw() {
        return (String) this.dq.objectValue(260014, String.class);
    }

    public int gh() {
        return this.dq.intValue(260016);
    }

    public String h() {
        return (String) this.dq.objectValue(260024, String.class);
    }

    public int i() {
        return this.dq.intValue(260018);
    }

    public boolean ia() {
        return this.dq.booleanValue(260005);
    }

    public float ig() {
        return this.dq.floatValue(260009);
    }

    public String iw() {
        return (String) this.dq.objectValue(260003, String.class);
    }

    public int ji() {
        return this.dq.intValue(260025);
    }

    public int jy() {
        return this.dq.intValue(2600012);
    }

    public int k() {
        return this.dq.intValue(260020);
    }

    public int kk() {
        return this.dq.intValue(260006);
    }

    public TTAdLoadType kx() {
        return (TTAdLoadType) this.dq.objectValue(260023, TTAdLoadType.class);
    }

    public String le() {
        return (String) this.dq.objectValue(260019, String.class);
    }

    public String mn() {
        return (String) this.dq.objectValue(260004, String.class);
    }

    public boolean mp() {
        return this.dq.booleanValue(260010);
    }

    public float no() {
        return this.dq.floatValue(260008);
    }

    public int o() {
        return this.dq.intValue(260007);
    }

    public String p() {
        return (String) this.dq.objectValue(260001, String.class);
    }

    public boolean q() {
        return this.dq.booleanValue(260011);
    }

    public int[] r() {
        return (int[]) this.dq.objectValue(260017, int[].class);
    }

    public String s() {
        return (String) this.dq.objectValue(260002, String.class);
    }

    public String wp() {
        return (String) this.dq.objectValue(260021, String.class);
    }
}

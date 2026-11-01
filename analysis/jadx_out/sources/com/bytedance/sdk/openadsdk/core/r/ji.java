package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public class ji {

    /* renamed from: d, reason: collision with root package name */
    private int f3462d;
    private String dq;
    private String iw;
    private int ox;
    private double p;
    private boolean s;

    public static final class dq extends com.bytedance.sdk.openadsdk.f.d.d.mp {

        /* renamed from: d, reason: collision with root package name */
        private int f3463d;
        private int dq;
        private String ox;
        private double p;

        public dq(int i, int i2, String str, double d2) {
            this.dq = i;
            this.f3463d = i2;
            this.ox = str;
            this.p = d2;
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
        public int d() {
            return this.f3463d;
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
        public int dq() {
            return this.dq;
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
        public String ox() {
            return this.ox;
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
        public double p() {
            return this.p;
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
        public boolean s() {
            String str;
            return this.dq > 0 && this.f3463d > 0 && (str = this.ox) != null && str.length() > 0;
        }
    }

    public static final com.bytedance.sdk.openadsdk.f.d.d.mp dq(int i, int i2, String str, double d2) {
        return new dq(i, i2, str, d2);
    }

    public static com.bytedance.sdk.openadsdk.f.d.d.mp dq(ji jiVar) {
        if (jiVar == null || !jiVar.s()) {
            return null;
        }
        return new dq(jiVar.ox(), jiVar.d(), jiVar.dq(), jiVar.p());
    }

    public int d() {
        return this.f3462d;
    }

    public void d(int i) {
        this.ox = i;
    }

    public void d(String str) {
        this.iw = str;
    }

    public String dq() {
        return this.dq;
    }

    public void dq(double d2) {
        this.p = d2;
    }

    public void dq(int i) {
        this.f3462d = i;
    }

    public void dq(String str) {
        this.dq = str;
    }

    public void dq(boolean z) {
        this.s = z;
    }

    public boolean iw() {
        return this.s;
    }

    public String mn() {
        return this.iw;
    }

    public int ox() {
        return this.ox;
    }

    public double p() {
        return this.p;
    }

    public boolean s() {
        return !TextUtils.isEmpty(this.dq) && this.f3462d > 0 && this.ox > 0;
    }
}

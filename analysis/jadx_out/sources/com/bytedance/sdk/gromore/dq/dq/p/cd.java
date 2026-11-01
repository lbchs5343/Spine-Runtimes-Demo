package com.bytedance.sdk.gromore.dq.dq.p;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class cd extends com.bytedance.sdk.openadsdk.f.d.d.mp {

    /* renamed from: d, reason: collision with root package name */
    private int f2347d;
    private String dq;
    private int ox;

    public cd(String str) {
        this.dq = str;
    }

    public cd(String str, int i, int i2) {
        this.dq = str;
        this.f2347d = i;
        this.ox = i2;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
    public int d() {
        return this.f2347d;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
    public int dq() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
    public String ox() {
        return !TextUtils.isEmpty(this.dq) ? this.dq : "";
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
    public double p() {
        return 0.0d;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.mp
    public boolean s() {
        return false;
    }
}

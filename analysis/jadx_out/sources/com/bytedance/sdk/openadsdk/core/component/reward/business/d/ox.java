package com.bytedance.sdk.openadsdk.core.component.reward.business.d;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private int f2539d;
    private String dq;

    public int d() {
        return this.f2539d;
    }

    public String dq() {
        return this.dq;
    }

    public void dq(int i) {
        this.f2539d = i;
    }

    public void dq(String str) {
        this.dq = str;
    }

    public boolean ox() {
        return !TextUtils.isEmpty(this.dq);
    }
}

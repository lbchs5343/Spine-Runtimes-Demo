package com.bytedance.msdk.mn.d;

import android.text.TextUtils;
import com.bytedance.msdk.dq.s.ox;

/* loaded from: classes.dex */
public class dq implements d {

    /* renamed from: d, reason: collision with root package name */
    private long f1115d;
    private final String dq = "dq";
    private long ox;
    private String p;

    @Override // com.bytedance.msdk.mn.d.d
    public long cd() {
        long j = this.ox - this.f1115d;
        ox.d(this.dq, "InitMethodDuration = ".concat(String.valueOf(j)));
        return j;
    }

    @Override // com.bytedance.msdk.mn.d.d
    public void f() {
        this.f1115d = System.currentTimeMillis();
    }

    @Override // com.bytedance.msdk.mn.d.d
    public void fw() {
        this.ox = System.currentTimeMillis();
    }

    @Override // com.bytedance.msdk.mn.d.d
    public long gh() {
        long currentTimeMillis = System.currentTimeMillis() - this.f1115d;
        ox.d(this.dq, "SplashRequestDuration = ".concat(String.valueOf(currentTimeMillis)));
        return currentTimeMillis;
    }

    @Override // com.bytedance.msdk.mn.d.d
    public boolean i() {
        return TextUtils.isEmpty(this.p);
    }

    @Override // com.bytedance.msdk.mn.d.d
    public boolean le() {
        String str = this.p;
        String str2 = com.bytedance.msdk.s.dq.ox;
        boolean equals = TextUtils.equals(str, str2);
        ox.d(this.dq, "canUploadInitDuration = " + equals + " 当sessionId = " + str2 + " 存储的sessionId = " + this.p);
        return !equals;
    }

    @Override // com.bytedance.msdk.mn.d.d
    public void ox(String str) {
        this.p = str;
    }

    @Override // com.bytedance.msdk.mn.d.d
    public long r() {
        long currentTimeMillis = System.currentTimeMillis() - this.f1115d;
        ox.d(this.dq, "SplashFillDuration = ".concat(String.valueOf(currentTimeMillis)));
        return currentTimeMillis;
    }
}

package com.bytedance.sdk.component.iw.ox.dq.d;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.iw.cd;

/* loaded from: classes.dex */
public class p implements cd {

    /* renamed from: d, reason: collision with root package name */
    private final com.bytedance.sdk.component.iw.ox.dq.d f1952d;
    private final cd dq;

    public p(cd cdVar) {
        this(cdVar, null);
    }

    public p(cd cdVar, com.bytedance.sdk.component.iw.ox.dq.d dVar) {
        this.dq = cdVar;
        this.f1952d = dVar;
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public boolean d(String str) {
        return this.dq.d(str);
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public Bitmap dq(String str) {
        return this.dq.dq((cd) str);
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public void dq(double d2) {
        this.dq.dq(d2);
    }

    @Override // com.bytedance.sdk.component.iw.dq
    public boolean dq(String str, Bitmap bitmap) {
        return this.dq.dq(str, bitmap);
    }
}

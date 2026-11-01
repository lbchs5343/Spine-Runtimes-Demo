package com.bytedance.sdk.openadsdk.core.component.splash.ox.dq;

import android.content.Context;

/* loaded from: classes3.dex */
public class ox extends dq {
    private int ia = 1;
    private Context iw;
    private int kk;
    private String mn;
    private boolean no;
    private com.bytedance.sdk.openadsdk.f.d.ox.d o;
    public ia p;
    private iw s;

    public ox(Context context, String str, iw iwVar, ia iaVar, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.iw = context;
        this.mn = str;
        this.s = iwVar;
        this.no = iwVar.s();
        this.f2749d = iwVar.d();
        this.p = iaVar;
        this.o = dVar;
    }

    public Context getContext() {
        return this.iw;
    }

    public int ia() {
        return this.kk;
    }

    public String iw() {
        return this.mn;
    }

    public boolean kk() {
        return this.no;
    }

    public com.bytedance.sdk.openadsdk.f.d.ox.d mn() {
        return this.o;
    }

    public iw p() {
        return this.s;
    }

    public ia s() {
        return this.p;
    }
}

package com.bytedance.sdk.openadsdk.core.component.splash.ox.dq;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;

/* loaded from: classes3.dex */
public class mn extends dq {
    private boolean ia;
    private boolean iw;
    private com.bytedance.sdk.openadsdk.f.d.d.d kk;
    private int mn;
    private int no;
    private long o;
    private int p;
    private String s;

    public mn() {
        this.p = -1;
        this.s = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        this.iw = false;
        this.ia = false;
        this.no = -1;
    }

    public mn(int i, String str, boolean z) {
        this.iw = false;
        this.no = -1;
        this.p = i;
        this.s = str;
        this.ia = z;
    }

    public void d(int i) {
        this.p = i;
    }

    public void d(boolean z) {
        this.ia = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.dq
    public void dq(long j) {
        this.o = j;
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar) {
        this.kk = dVar;
    }

    public void dq(String str) {
        this.s = str;
    }

    public void dq(boolean z) {
        this.iw = z;
    }

    public int ia() {
        return this.mn;
    }

    public String iw() {
        return TextUtils.isEmpty(this.s) ? MediationConfigUserInfoForSegment.GENDER_UNKNOWN : this.s;
    }

    public boolean kk() {
        return this.ia;
    }

    public boolean mn() {
        return this.iw;
    }

    public com.bytedance.sdk.openadsdk.f.d.d.d o() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.dq
    public long ox() {
        return this.o;
    }

    public void ox(int i) {
        this.no = i;
    }

    public int p() {
        return this.p;
    }

    public void p(int i) {
        this.mn = i;
    }

    public int s() {
        return this.no;
    }
}

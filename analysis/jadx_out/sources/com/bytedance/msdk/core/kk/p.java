package com.bytedance.msdk.core.kk;

import android.text.TextUtils;
import g.awf;

/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: d, reason: collision with root package name */
    protected String f953d;
    protected String dq;
    private boolean iw;
    protected String ox;
    protected String p;
    protected int s;

    public p(String str, String str2, String str3, String str4, int i) {
        this.dq = str;
        this.ox = str3;
        this.s = i;
        this.f953d = str2;
        this.iw = !TextUtils.isEmpty(str2);
        this.p = str4;
    }

    public String d() {
        return this.dq;
    }

    public boolean dq() {
        return this.iw;
    }

    public boolean ia() {
        return this.s == 1;
    }

    public String iw() {
        return this.p;
    }

    public int mn() {
        return this.s;
    }

    public String ox() {
        return this.f953d;
    }

    public String p() {
        if (TextUtils.isEmpty(this.f953d)) {
            return this.dq;
        }
        return this.dq + "_" + this.f953d;
    }

    public String s() {
        return this.ox;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BaseIntervalBean{waterfallId='");
        sb.append(this.dq);
        sb.append("', showRulesVersion='");
        sb.append(this.ox);
        sb.append("', timingMode=");
        return awf.s(sb, this.s, '}');
    }
}

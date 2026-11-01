package com.bytedance.msdk.core.kk;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class kk extends p {
    private long ia;
    private long iw;
    private String mn;

    public kk(String str, String str2, String str3, String str4, int i, String str5, String str6) {
        super(str, str2, str3, str4, i);
        this.ia = 0L;
        this.iw = 0L;
        try {
            this.iw = Long.parseLong(str5);
        } catch (Exception unused) {
        }
        this.mn = str6;
    }

    public kk(String str, String str2, String str3, String str4, int i, String str5, String str6, String str7) {
        this(str, str2, str3, str4, i, str5, str6);
        this.ia = 0L;
        try {
            this.ia = Long.parseLong(str7);
        } catch (Exception unused) {
        }
    }

    public void dq(long j) {
        this.ia = j;
    }

    @Override // com.bytedance.msdk.core.kk.p
    public boolean ia() {
        return (TextUtils.isEmpty(this.mn) || this.iw == 0) ? false : true;
    }

    public boolean ig() {
        return this.ia != 0;
    }

    public long kk() {
        return this.iw;
    }

    public long no() {
        return this.ia;
    }

    public String o() {
        return this.mn;
    }

    @Override // com.bytedance.msdk.core.kk.p
    public String toString() {
        return "BaseIntervalBean{waterfallId='" + this.dq + "', showRulesVersion='" + this.ox + "', timingMode=" + this.s + "}IntervalPacingBean{pacing=" + this.iw + ", pacingRuleId='" + this.mn + "', effectiveTime=" + this.ia + '}';
    }
}

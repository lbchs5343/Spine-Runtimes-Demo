package com.bytedance.msdk.api;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private String f760d;
    private int dq;

    /* renamed from: f, reason: collision with root package name */
    private String f761f;
    private final Map<String, String> fw = new HashMap();
    private String ia;
    private String ig;
    private String iw;
    private String jy;
    private String kk;
    private int mn;
    private String mp;
    private String no;
    private String o;
    private String ox;
    private String p;
    private String q;
    private String s;

    public String d() {
        return this.o;
    }

    public void d(int i) {
        this.mn = i;
    }

    public void d(String str) {
        this.no = str;
    }

    public Map<String, String> dq() {
        return this.fw;
    }

    public void dq(int i) {
        this.dq = i;
    }

    public void dq(String str) {
        this.o = str;
    }

    public void dq(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        this.fw.clear();
        this.fw.putAll(map);
    }

    public String f() {
        return this.ia;
    }

    public String fw() {
        return this.kk;
    }

    public String ia() {
        return this.f761f;
    }

    public void ia(String str) {
        this.f760d = str;
    }

    public String ig() {
        return TextUtils.isEmpty(this.ox) ? this.f760d : this.ox;
    }

    public void ig(String str) {
        this.s = str;
    }

    public String iw() {
        return this.q;
    }

    public void iw(String str) {
        this.jy = str;
    }

    public int jy() {
        return this.mn;
    }

    public String kk() {
        return this.f760d;
    }

    public void kk(String str) {
        this.ox = str;
    }

    public String mn() {
        return this.jy;
    }

    public void mn(String str) {
        this.f761f = str;
    }

    public String mp() {
        return this.iw;
    }

    public void mp(String str) {
        this.ia = str;
    }

    public String no() {
        return this.p;
    }

    public void no(String str) {
        this.iw = str;
    }

    public String o() {
        return this.ox;
    }

    public void o(String str) {
        this.p = str;
    }

    public String ox() {
        return this.no;
    }

    public void ox(String str) {
        this.ig = str;
    }

    public String p() {
        return this.ig;
    }

    public void p(String str) {
        this.mp = str;
    }

    public String q() {
        return this.s;
    }

    public void q(String str) {
        this.kk = str;
    }

    public String s() {
        return this.mp;
    }

    public void s(String str) {
        this.q = str;
    }

    public String toString() {
        return "{mSdkNum='" + this.dq + "', mSlotId='" + this.p + "', mLevelTag='" + this.s + "', mEcpm=" + this.iw + ", mReqBiddingType=" + this.mn + "', mRequestId=" + this.kk + ", mSubRitType=" + this.no + '}';
    }
}

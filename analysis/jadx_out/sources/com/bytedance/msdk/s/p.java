package com.bytedance.msdk.s;

import android.text.TextUtils;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class p {
    public long cd;

    /* renamed from: d, reason: collision with root package name */
    public String f1272d;
    public String dq;

    /* renamed from: f, reason: collision with root package name */
    public String f1273f;
    public int fw;
    public String i;
    public String ia;
    public String ig;
    public String iw;
    public String jy;
    public long kk;
    public String mn;
    public String mp;
    public String no;
    public String o;
    public String ox;
    public String p;
    public int q;
    public String s;
    public int gh = -1;
    public int r = -1;
    public Map<String, Object> le = new ConcurrentHashMap();
    private long k = -1;

    public static p d() {
        return new p();
    }

    public static p ox() {
        p pVar = new p();
        pVar.ox(System.currentTimeMillis());
        return pVar;
    }

    public p d(int i) {
        this.q = i;
        return this;
    }

    public p d(long j) {
        this.kk = j;
        return this;
    }

    public p d(String str) {
        this.ia = str;
        return this;
    }

    public long dq() {
        return this.k;
    }

    public p dq(int i) {
        this.mp = String.valueOf(i);
        return this;
    }

    public p dq(long j) {
        this.cd = j;
        return this;
    }

    public p dq(String str) {
        this.dq = str;
        return this;
    }

    public p dq(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.le.put(str, obj);
        }
        return this;
    }

    public p dq(Map<String, Object> map) {
        if (map != null && map.size() > 0) {
            this.le.putAll(map);
        }
        return this;
    }

    public p ia(String str) {
        this.iw = str;
        return this;
    }

    public p iw(int i) {
        this.r = i;
        return this;
    }

    public p iw(String str) {
        this.p = str;
        return this;
    }

    public p kk(String str) {
        this.mn = str;
        return this;
    }

    public p mn(String str) {
        this.s = str;
        return this;
    }

    public p no(String str) {
        this.i = str;
        return this;
    }

    public p o(String str) {
        this.no = str;
        return this;
    }

    public p ox(int i) {
        this.jy = String.valueOf(i);
        return this;
    }

    public p ox(long j) {
        this.k = j;
        return this;
    }

    public p ox(String str) {
        this.o = str;
        return this;
    }

    public p p(int i) {
        this.f1273f = String.valueOf(i);
        return this;
    }

    public p p(String str) {
        this.f1272d = str;
        return this;
    }

    public p s(int i) {
        this.fw = i;
        return this;
    }

    public p s(String str) {
        this.ox = str;
        return this;
    }

    public p setResult(int i) {
        this.gh = i;
        return this;
    }
}

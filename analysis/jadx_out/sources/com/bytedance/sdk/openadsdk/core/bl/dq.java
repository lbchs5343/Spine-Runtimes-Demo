package com.bytedance.sdk.openadsdk.core.bl;

import com.bytedance.pangle.ZeusPluginEventCallback;
import java.util.List;

/* loaded from: classes3.dex */
public class dq {
    public List<String> cd;
    public String dq;

    /* renamed from: e, reason: collision with root package name */
    public int f2478e;
    public int kx;

    /* renamed from: d, reason: collision with root package name */
    public int f2477d = 1;
    public int ox = 1;
    public int p = 2;
    public int s = 1;
    public int iw = 0;
    public int mn = 1;
    public int ia = 3;
    public int kk = 0;
    public int o = 0;
    public int no = 0;
    public int ig = 1;
    public int mp = 0;
    public int q = 1500;
    public int jy = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f2479f = ZeusPluginEventCallback.EVENT_START_LOAD;
    public boolean fw = false;
    public int gh = 2;
    public int r = 100;
    public int i = 0;
    public boolean le = false;
    public boolean k = false;
    public long wp = 0;

    private dq() {
    }

    public static dq dq() {
        return new dq();
    }

    public dq cd(int i) {
        this.r = i;
        return this;
    }

    public int d() {
        return this.kx;
    }

    public dq d(int i) {
        this.f2478e = i;
        return this;
    }

    public dq d(boolean z) {
        this.k = z;
        return this;
    }

    public dq dq(int i) {
        this.kx = i;
        return this;
    }

    public dq dq(long j) {
        this.wp = j;
        return this;
    }

    public dq dq(String str) {
        this.dq = str;
        return this;
    }

    public dq dq(boolean z) {
        this.le = z;
        return this;
    }

    public dq f(int i) {
        this.ig = i;
        return this;
    }

    public dq fw(int i) {
        this.gh = i;
        return this;
    }

    public dq gh(int i) {
        this.i = i;
        return this;
    }

    public dq ia(int i) {
        this.kk = i;
        return this;
    }

    public dq ig(int i) {
        this.p = i;
        return this;
    }

    public dq iw(int i) {
        this.jy = i;
        return this;
    }

    public dq jy(int i) {
        this.mn = i;
        return this;
    }

    public dq kk(int i) {
        this.o = i;
        return this;
    }

    public dq mn(int i) {
        this.no = i;
        return this;
    }

    public dq mp(int i) {
        this.s = i;
        return this;
    }

    public dq no(int i) {
        this.ox = i;
        return this;
    }

    public dq o(int i) {
        this.f2477d = i;
        return this;
    }

    public int ox() {
        return this.f2478e;
    }

    public dq ox(int i) {
        this.f2479f = i;
        return this;
    }

    public dq ox(boolean z) {
        this.fw = z;
        return this;
    }

    public dq p(int i) {
        this.mp = i;
        return this;
    }

    public dq q(int i) {
        this.iw = i;
        return this;
    }

    public dq s(int i) {
        this.q = i;
        return this;
    }
}

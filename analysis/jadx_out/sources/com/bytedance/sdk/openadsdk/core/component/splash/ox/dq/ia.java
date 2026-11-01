package com.bytedance.sdk.openadsdk.core.component.splash.ox.dq;

import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class ia extends dq {
    private String cd;

    /* renamed from: f, reason: collision with root package name */
    private boolean f2750f;
    private com.bytedance.sdk.openadsdk.f.d.d.d fw;
    private long gh;
    private long ig;
    private boolean jy;
    private com.bytedance.sdk.component.kk.d mn;
    private Map<String, String> mp;
    private long no;
    private long o;
    private com.bytedance.sdk.openadsdk.core.le.dq.d p;
    private String q;
    private com.bytedance.sdk.openadsdk.core.le.dq.d s;
    private boolean iw = false;
    private boolean ia = false;
    private boolean kk = false;
    private AtomicBoolean r = new AtomicBoolean(false);

    public ia(com.bytedance.sdk.openadsdk.core.le.dq.d dVar, j jVar, boolean z) {
        this.p = dVar;
        this.f2749d = jVar;
        this.jy = z;
    }

    public ia(j jVar, boolean z) {
        this.f2749d = jVar;
        this.jy = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.dq
    public j d() {
        return this.f2749d;
    }

    public void d(long j) {
        this.o = j;
    }

    public void d(String str) {
        this.cd = str;
    }

    public void d(boolean z) {
        this.ia = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.dq
    public int dq() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.dq
    public void dq(int i) {
        this.dq = i;
    }

    public void dq(com.bytedance.sdk.component.kk.d dVar) {
        this.mn = dVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar) {
        this.s = dVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox.dq.dq
    public void dq(j jVar) {
        this.f2749d = jVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.d.d dVar) {
        this.fw = dVar;
    }

    public void dq(String str) {
        this.q = str;
    }

    public void dq(Map<String, String> map) {
        this.mp = map;
    }

    public void dq(boolean z) {
        this.iw = z;
    }

    public boolean f() {
        return this.r.get();
    }

    public long ia() {
        return this.o;
    }

    public boolean ig() {
        return this.jy;
    }

    public boolean iw() {
        return this.iw;
    }

    public long jy() {
        return this.gh;
    }

    public long kk() {
        return this.ig;
    }

    public boolean mn() {
        return this.ia;
    }

    public com.bytedance.sdk.openadsdk.f.d.d.d mp() {
        return this.fw;
    }

    public boolean no() {
        return this.kk;
    }

    public Map<String, String> o() {
        return this.mp;
    }

    public void ox(long j) {
        this.no = j;
    }

    public void ox(boolean z) {
        this.kk = z;
    }

    public com.bytedance.sdk.openadsdk.core.le.dq.d p() {
        return this.p;
    }

    public void p(long j) {
        this.ig = j;
    }

    public void p(boolean z) {
        this.f2750f = z;
    }

    public String q() {
        return this.cd;
    }

    public com.bytedance.sdk.openadsdk.core.le.dq.d s() {
        return this.s;
    }

    public void s(long j) {
        this.gh = j;
    }

    public void s(boolean z) {
        this.r.set(z);
    }
}

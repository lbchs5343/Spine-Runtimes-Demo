package com.bytedance.sdk.openadsdk.core.d.dq.dq;

import android.content.Context;
import com.bytedance.sdk.openadsdk.core.d.dq.dq.d;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.Map;

/* loaded from: classes3.dex */
public class iw {
    private long cd;
    boolean dq;

    /* renamed from: f, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.i.dq.d.dq.dq f2791f;
    private com.bytedance.sdk.openadsdk.core.o.d.ox fw;
    private j ig;
    private Map<String, Object> iw;
    private Object kk;
    private String mn;
    private Context mp;
    private d.dq no;
    protected boolean ox;
    protected com.bytedance.sdk.openadsdk.core.video.d.d p;
    private int s;
    private boolean ia = false;
    private int o = Integer.MIN_VALUE;
    private boolean q = false;
    private int jy = -1;

    /* renamed from: d, reason: collision with root package name */
    boolean f2790d = true;

    public com.bytedance.sdk.openadsdk.core.video.d.d cd() {
        return this.p;
    }

    public j d() {
        return this.ig;
    }

    public void d(int i) {
        this.s = i;
    }

    public void d(boolean z) {
        this.dq = z;
    }

    public d.dq dq() {
        return this.no;
    }

    public void dq(int i) {
        this.jy = i;
    }

    public void dq(long j) {
        this.cd = j;
    }

    public void dq(Context context) {
        this.mp = context;
    }

    public void dq(d.dq dqVar) {
        this.no = dqVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.o.d.ox oxVar) {
        this.fw = oxVar;
    }

    public void dq(j jVar) {
        this.ig = jVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.video.d.d dVar) {
        this.p = dVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar) {
        this.f2791f = dqVar;
    }

    public void dq(Object obj) {
        this.kk = obj;
    }

    public void dq(String str) {
        this.mn = str;
    }

    public void dq(Map<String, Object> map) {
        this.iw = map;
    }

    public void dq(boolean z) {
        this.q = z;
    }

    public boolean f() {
        return this.ox;
    }

    public void fw() {
        this.ox = true;
    }

    public Context getContext() {
        return this.mp;
    }

    public com.bytedance.sdk.openadsdk.core.o.d.ox ia() {
        return this.fw;
    }

    public boolean ig() {
        return this.ia;
    }

    public boolean iw() {
        return this.f2790d;
    }

    public long jy() {
        return this.cd;
    }

    public int kk() {
        return this.s;
    }

    public com.bytedance.sdk.openadsdk.i.dq.d.dq.dq mn() {
        return this.f2791f;
    }

    public Object mp() {
        return this.kk;
    }

    public String no() {
        return this.mn;
    }

    public Map<String, Object> o() {
        return this.iw;
    }

    public void ox(int i) {
        this.o = i;
    }

    public void ox(boolean z) {
        this.f2790d = z;
    }

    public boolean ox() {
        return this.q;
    }

    public int p() {
        return this.jy;
    }

    public void p(boolean z) {
        this.ia = z;
    }

    public int q() {
        return this.o;
    }

    public boolean s() {
        return this.dq;
    }
}

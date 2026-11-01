package com.bytedance.sdk.openadsdk.core.r;

import android.util.SparseArray;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.d.p;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class o {
    private String fw;
    private String gh;
    private boolean jy;
    private int k;
    private String le;
    private View mp;
    private View q;
    private float dq = -1.0f;

    /* renamed from: d, reason: collision with root package name */
    private float f3499d = -1.0f;
    private float ox = -1.0f;
    private float p = -1.0f;
    private long s = -1;
    private long iw = -1;
    private int mn = -1;
    private int ia = -1;
    private int kk = -1024;
    private boolean o = true;
    private int no = 0;
    private int ig = 0;

    /* renamed from: f, reason: collision with root package name */
    private boolean f3500f = false;
    private int cd = -1;
    private SparseArray<p.dq> r = new SparseArray<>();
    private List<Integer> i = new ArrayList();

    public String cd() {
        return this.fw;
    }

    public int d() {
        return this.mn;
    }

    public void d(float f2) {
        this.f3499d = f2;
    }

    public void d(int i) {
        this.mn = i;
    }

    public void d(long j) {
        this.iw = j;
    }

    public void d(View view) {
        this.q = (View) new WeakReference(view).get();
    }

    public void d(String str) {
        this.gh = str;
    }

    public void d(boolean z) {
        this.jy = z;
    }

    public void dq(float f2) {
        this.dq = f2;
    }

    public void dq(int i) {
        this.k = i;
    }

    public void dq(long j) {
        this.s = j;
    }

    public void dq(SparseArray<p.dq> sparseArray) {
        this.r = sparseArray;
    }

    public void dq(View view) {
        this.mp = (View) new WeakReference(view).get();
    }

    public void dq(String str) {
        this.fw = str;
    }

    public void dq(boolean z) {
        this.o = z;
    }

    public boolean dq() {
        return this.k == 2;
    }

    public float f() {
        return this.ox;
    }

    public float fw() {
        return this.p;
    }

    public int gh() {
        return this.cd;
    }

    public boolean i() {
        return this.f3500f;
    }

    public int ia() {
        return this.no;
    }

    public long ig() {
        return this.s;
    }

    public View iw() {
        return this.mp;
    }

    public void iw(int i) {
        this.ig = i;
    }

    public float jy() {
        return this.f3499d;
    }

    public int kk() {
        return this.ig;
    }

    public String le() {
        return this.le;
    }

    public View mn() {
        return this.q;
    }

    public void mn(int i) {
        this.cd = i;
    }

    public long mp() {
        return this.iw;
    }

    public List<Integer> no() {
        return this.i;
    }

    public SparseArray<p.dq> o() {
        return this.r;
    }

    public int ox() {
        return this.ia;
    }

    public void ox(float f2) {
        this.ox = f2;
    }

    public void ox(int i) {
        this.ia = i;
    }

    public void ox(String str) {
        this.le = str;
    }

    public void ox(boolean z) {
        this.f3500f = z;
    }

    public int p() {
        return this.kk;
    }

    public void p(float f2) {
        this.p = f2;
    }

    public void p(int i) {
        this.kk = i;
    }

    public float q() {
        return this.dq;
    }

    public String r() {
        return this.gh;
    }

    public void s(int i) {
        this.no = i;
    }

    public boolean s() {
        return this.o;
    }
}

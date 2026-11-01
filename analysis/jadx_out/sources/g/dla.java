package g;

import android.text.Layout;

/* loaded from: classes3.dex */
public final class dla {

    /* renamed from: b, reason: collision with root package name */
    public float f14348b;

    /* renamed from: c, reason: collision with root package name */
    public Layout.Alignment f14349c;

    /* renamed from: e, reason: collision with root package name */
    public int f14351e;

    /* renamed from: f, reason: collision with root package name */
    public String f14352f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14353g;
    public String h;
    public Layout.Alignment k;
    public int n;
    public boolean q;
    public csc s;
    public int i = -1;
    public int r = -1;

    /* renamed from: a, reason: collision with root package name */
    public int f14347a = -1;
    public int m = -1;
    public int o = -1;
    public int l = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f14350d = -1;
    public int p = -1;
    public float j = Float.MAX_VALUE;

    public final String t() {
        return this.f14352f;
    }

    public final void u(dla dlaVar) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (dlaVar != null) {
            if (!this.q && dlaVar.q) {
                this.n = dlaVar.n;
                this.q = true;
            }
            if (this.f14347a == -1) {
                this.f14347a = dlaVar.f14347a;
            }
            if (this.m == -1) {
                this.m = dlaVar.m;
            }
            if (this.h == null && (str = dlaVar.h) != null) {
                this.h = str;
            }
            if (this.i == -1) {
                this.i = dlaVar.i;
            }
            if (this.r == -1) {
                this.r = dlaVar.r;
            }
            if (this.f14350d == -1) {
                this.f14350d = dlaVar.f14350d;
            }
            if (this.f14349c == null && (alignment2 = dlaVar.f14349c) != null) {
                this.f14349c = alignment2;
            }
            if (this.k == null && (alignment = dlaVar.k) != null) {
                this.k = alignment;
            }
            if (this.p == -1) {
                this.p = dlaVar.p;
            }
            if (this.o == -1) {
                this.o = dlaVar.o;
                this.f14348b = dlaVar.f14348b;
            }
            if (this.s == null) {
                this.s = dlaVar.s;
            }
            if (this.j == Float.MAX_VALUE) {
                this.j = dlaVar.j;
            }
            if (!this.f14353g && dlaVar.f14353g) {
                this.f14351e = dlaVar.f14351e;
                this.f14353g = true;
            }
            if (this.l != -1 || (i = dlaVar.l) == -1) {
                return;
            }
            this.l = i;
        }
    }
}

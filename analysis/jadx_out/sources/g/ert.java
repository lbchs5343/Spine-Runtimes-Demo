package g;

import android.content.Context;

/* loaded from: classes.dex */
public final class ert implements cng {

    /* renamed from: a, reason: collision with root package name */
    public String f16052a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f16053b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f16054c;

    /* renamed from: d, reason: collision with root package name */
    public int f16055d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f16056e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16057f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f16058g;
    public int h;
    public final int i;
    public int j;
    public int k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public boolean p;
    public String q;
    public hdb r;
    public boolean s;
    public final String t;
    public Boolean u;
    public String v;
    public boolean w;
    public boolean x;
    public String y;

    public ert(int i, int i2, int i3, int i4, String str) {
        this.s = true;
        this.h = -1;
        this.k = -1;
        this.j = -1;
        this.x = false;
        this.u = null;
        this.f16058g = false;
        this.f16053b = false;
        this.w = true;
        this.p = false;
        this.m = true;
        this.f16054c = false;
        this.l = false;
        this.f16057f = false;
        this.q = str;
        this.n = i;
        this.f16055d = i2;
        this.i = i3;
        this.o = 1;
        this.f16056e = false;
    }

    public ert(String str, int i, int i2) {
        this.i = 0;
        this.s = true;
        this.h = -1;
        this.k = -1;
        this.j = -1;
        this.x = false;
        this.u = null;
        this.f16058g = false;
        this.f16053b = false;
        this.w = true;
        this.p = false;
        this.m = true;
        this.f16054c = false;
        this.l = false;
        this.f16057f = false;
        this.q = str;
        this.n = i;
        this.f16055d = i2;
        this.o = 1;
        this.f16056e = true;
    }

    public ert(String str, int i, int i2, int i3) {
        this.s = true;
        this.h = -1;
        this.k = -1;
        this.j = -1;
        this.x = false;
        this.u = null;
        this.f16058g = false;
        this.f16053b = false;
        this.w = true;
        this.p = false;
        this.m = true;
        this.f16054c = false;
        this.l = false;
        this.f16057f = false;
        this.q = str;
        this.n = i;
        this.f16055d = i2;
        this.i = i3;
        this.o = 1;
        this.f16056e = true;
    }

    public ert(String str, int i, int i2, Object obj) {
        this.i = 0;
        this.s = true;
        this.h = -1;
        this.k = -1;
        this.j = -1;
        this.x = false;
        this.u = null;
        this.f16058g = false;
        this.f16053b = false;
        this.w = true;
        this.p = false;
        this.m = true;
        this.f16054c = false;
        this.l = false;
        this.f16057f = false;
        this.q = str;
        this.n = i;
        this.f16055d = i2;
        this.o = 1;
        this.f16056e = false;
    }

    public ert(String str, String str2, int i) {
        this.i = 0;
        this.n = -1;
        this.s = true;
        this.h = -1;
        this.k = -1;
        this.j = -1;
        this.x = false;
        this.u = null;
        this.f16058g = false;
        this.f16053b = false;
        this.w = true;
        this.p = false;
        this.m = true;
        this.f16054c = false;
        this.l = false;
        this.f16057f = false;
        this.q = str;
        this.t = str2;
        this.f16055d = i;
        this.o = 1;
        this.f16056e = false;
    }

    public final void aa(boolean z) {
        this.u = Boolean.valueOf(z);
    }

    public final String z(Context context) {
        int i = this.n;
        return i == -1 ? this.t : context.getString(i);
    }
}

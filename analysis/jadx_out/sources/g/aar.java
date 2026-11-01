package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class aar extends brh {
    public boolean h;

    /* renamed from: d, reason: collision with root package name */
    public float f9877d = -1.0f;

    /* renamed from: a, reason: collision with root package name */
    public int f9874a = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f9876c = -1;

    /* renamed from: b, reason: collision with root package name */
    public hac f9875b = this.bx;

    /* renamed from: f, reason: collision with root package name */
    public int f9878f = 0;

    public aar() {
        this.cc.clear();
        this.cc.add(this.f9875b);
        int length = this.ax.length;
        for (int i = 0; i < length; i++) {
            this.ax[i] = this.f9875b;
        }
    }

    @Override // g.brh
    public final boolean e() {
        return this.h;
    }

    @Override // g.brh
    public final void g(bwo bwoVar, boolean z) {
        aep aepVar = (aep) this.bj;
        if (aepVar == null) {
            return;
        }
        Object m = aepVar.m(dih.LEFT);
        Object m2 = aepVar.m(dih.RIGHT);
        brh brhVar = this.bj;
        boolean z2 = brhVar != null && brhVar.ch[0] == fol.WRAP_CONTENT;
        if (this.f9878f == 0) {
            m = aepVar.m(dih.TOP);
            m2 = aepVar.m(dih.BOTTOM);
            brh brhVar2 = this.bj;
            z2 = brhVar2 != null && brhVar2.ch[1] == fol.WRAP_CONTENT;
        }
        if (this.h) {
            hac hacVar = this.f9875b;
            if (hacVar.h) {
                crb t = bwoVar.t(hacVar);
                bwoVar.v(t, this.f9875b.l());
                if (this.f9874a != -1) {
                    if (z2) {
                        bwoVar.z(bwoVar.t(m2), t, 0, 5);
                    }
                } else if (this.f9876c != -1 && z2) {
                    crb t2 = bwoVar.t(m2);
                    bwoVar.z(t, bwoVar.t(m), 0, 5);
                    bwoVar.z(t2, t, 0, 5);
                }
                this.h = false;
                return;
            }
        }
        if (this.f9874a != -1) {
            crb t3 = bwoVar.t(this.f9875b);
            bwoVar.x(t3, bwoVar.t(m), this.f9874a, 8);
            if (z2) {
                bwoVar.z(bwoVar.t(m2), t3, 0, 5);
                return;
            }
            return;
        }
        if (this.f9876c != -1) {
            crb t4 = bwoVar.t(this.f9875b);
            crb t5 = bwoVar.t(m2);
            bwoVar.x(t4, t5, -this.f9876c, 8);
            if (z2) {
                bwoVar.z(t4, bwoVar.t(m), 0, 5);
                bwoVar.z(t5, t4, 0, 5);
                return;
            }
            return;
        }
        if (this.f9877d != -1.0f) {
            crb t6 = bwoVar.t(this.f9875b);
            crb t7 = bwoVar.t(m2);
            float f2 = this.f9877d;
            gz w = bwoVar.w();
            w.f19037a.r(t6, -1.0f);
            w.f19037a.r(t7, f2);
            bwoVar.ai(w);
        }
    }

    @Override // g.brh
    public final boolean i() {
        return this.h;
    }

    @Override // g.brh
    public final boolean j() {
        return true;
    }

    @Override // g.brh
    public final void k(bwo bwoVar, boolean z) {
        if (this.bj == null) {
            return;
        }
        hac hacVar = this.f9875b;
        bwoVar.getClass();
        int r = bwo.r(hacVar);
        if (this.f9878f == 1) {
            this.cv = r;
            this.cb = 0;
            dj(this.bj.di());
            ed(0);
            return;
        }
        this.cv = 0;
        this.cb = r;
        ed(this.bj.eb());
        dj(0);
    }

    public final void l(int i) {
        this.f9875b.m(i);
        this.h = true;
    }

    @Override // g.brh
    public final hac m(dih dihVar) {
        int i = ddv.f14028a[dihVar.ordinal()];
        if (i == 1 || i == 2) {
            if (this.f9878f == 1) {
                return this.f9875b;
            }
            return null;
        }
        if ((i == 3 || i == 4) && this.f9878f == 0) {
            return this.f9875b;
        }
        return null;
    }

    public final void n(int i) {
        if (this.f9878f == i) {
            return;
        }
        this.f9878f = i;
        ArrayList arrayList = this.cc;
        arrayList.clear();
        if (this.f9878f == 1) {
            this.f9875b = this.cw;
        } else {
            this.f9875b = this.bx;
        }
        arrayList.add(this.f9875b);
        hac[] hacVarArr = this.ax;
        int length = hacVarArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            hacVarArr[i2] = this.f9875b;
        }
    }
}

package g;

/* loaded from: classes.dex */
public abstract class mi implements exs {

    /* renamed from: b, reason: collision with root package name */
    public fol f19646b;

    /* renamed from: d, reason: collision with root package name */
    public int f19648d;

    /* renamed from: g, reason: collision with root package name */
    public brh f19651g;
    public fld i;

    /* renamed from: c, reason: collision with root package name */
    public final eeh f19647c = new eeh(this);

    /* renamed from: e, reason: collision with root package name */
    public int f19649e = 0;
    public boolean j = false;

    /* renamed from: a, reason: collision with root package name */
    public final big f19645a = new big(this);

    /* renamed from: f, reason: collision with root package name */
    public final big f19650f = new big(this);
    public dnl h = dnl.NONE;

    public mi(brh brhVar) {
        this.f19651g = brhVar;
    }

    public static big k(hac hacVar) {
        hac hacVar2 = hacVar.f19105e;
        if (hacVar2 == null) {
            return null;
        }
        brh brhVar = hacVar2.f19102b;
        int i = ccz.f12670a[hacVar2.f19103c.ordinal()];
        if (i == 1) {
            return brhVar.be.f19645a;
        }
        if (i == 2) {
            return brhVar.be.f19650f;
        }
        if (i == 3) {
            return brhVar.bi.f19645a;
        }
        if (i == 4) {
            return brhVar.bi.w;
        }
        if (i != 5) {
            return null;
        }
        return brhVar.bi.f19650f;
    }

    public static big l(hac hacVar, int i) {
        hac hacVar2 = hacVar.f19105e;
        if (hacVar2 == null) {
            return null;
        }
        brh brhVar = hacVar2.f19102b;
        mi miVar = i == 0 ? brhVar.be : brhVar.bi;
        int i2 = ccz.f12670a[hacVar2.f19103c.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return null;
                    }
                }
            }
            return miVar.f19650f;
        }
        return miVar.f19645a;
    }

    public static void m(big bigVar, big bigVar2, int i) {
        bigVar.f11644d.add(bigVar2);
        bigVar.f11647g = i;
        bigVar2.f11642b.add(bigVar);
    }

    public abstract boolean n();

    public abstract void o();

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0053, code lost:
    
        if (r10.f19648d == 3) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(hac hacVar, hac hacVar2, int i) {
        big k = k(hacVar);
        big k2 = k(hacVar2);
        if (k.j && k2.j) {
            int n = hacVar.n() + k.l;
            int n2 = k2.l - hacVar2.n();
            int i2 = n2 - n;
            eeh eehVar = this.f19647c;
            if (!eehVar.j) {
                fol folVar = this.f19646b;
                fol folVar2 = fol.MATCH_CONSTRAINT;
                if (folVar == folVar2) {
                    int i3 = this.f19648d;
                    if (i3 == 0) {
                        eehVar.m(u(i2, i));
                    } else if (i3 == 1) {
                        eehVar.m(Math.min(u(eehVar.p, i), i2));
                    } else if (i3 == 2) {
                        brh brhVar = this.f19651g;
                        brh brhVar2 = brhVar.bj;
                        if (brhVar2 != null) {
                            if ((i == 0 ? brhVar2.be : brhVar2.bi).f19647c.j) {
                                eehVar.m(u((int) ((r6.l * (i == 0 ? brhVar.bu : brhVar.am)) + 0.5f), i));
                            }
                        }
                    } else if (i3 == 3) {
                        brh brhVar3 = this.f19651g;
                        mi miVar = brhVar3.be;
                        if (miVar.f19646b == folVar2 && miVar.f19648d == 3) {
                            fju fjuVar = brhVar3.bi;
                            if (fjuVar.f19646b == folVar2) {
                            }
                        }
                        if (i == 0) {
                            miVar = brhVar3.bi;
                        }
                        if (miVar.f19647c.j) {
                            float f2 = brhVar3.bq;
                            eehVar.m(i == 1 ? (int) ((r6.l / f2) + 0.5f) : (int) ((f2 * r6.l) + 0.5f));
                        }
                    }
                }
            }
            if (eehVar.j) {
                int i4 = eehVar.l;
                big bigVar = this.f19650f;
                big bigVar2 = this.f19645a;
                if (i4 == i2) {
                    bigVar2.m(n);
                    bigVar.m(n2);
                    return;
                }
                float f3 = i == 0 ? this.f19651g.cp : this.f19651g.ct;
                if (k == k2) {
                    n = k.l;
                    n2 = k2.l;
                    f3 = 0.5f;
                }
                bigVar2.m((int) ((((n2 - n) - i4) * f3) + n + 0.5f));
                bigVar.m(bigVar2.l + eehVar.l);
            }
        }
    }

    public abstract void q();

    public abstract void r();

    public long s() {
        if (this.f19647c.j) {
            return r0.l;
        }
        return 0L;
    }

    public final void t(big bigVar, big bigVar2, int i, eeh eehVar) {
        bigVar.f11644d.add(bigVar2);
        bigVar.f11644d.add(this.f19647c);
        bigVar.f11641a = i;
        bigVar.h = eehVar;
        bigVar2.f11642b.add(bigVar);
        eehVar.f11642b.add(bigVar);
    }

    public final int u(int i, int i2) {
        if (i2 == 0) {
            brh brhVar = this.f19651g;
            int i3 = brhVar.bs;
            int max = Math.max(brhVar.bl, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max != i) {
                return max;
            }
        } else {
            brh brhVar2 = this.f19651g;
            int i4 = brhVar2.aw;
            int max2 = Math.max(brhVar2.cy, i);
            if (i4 > 0) {
                max2 = Math.min(i4, i);
            }
            if (max2 != i) {
                return max2;
            }
        }
        return i;
    }
}

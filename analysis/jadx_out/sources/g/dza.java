package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class dza extends mi {
    public static final int[] w = new int[2];

    public static void x(int[] iArr, int i, int i2, int i3, int i4, float f2, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f2) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f2) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f2) + 0.5f);
        int i9 = (int) ((i6 / f2) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    @Override // g.mi
    public final boolean n() {
        return this.f19646b != fol.MATCH_CONSTRAINT || this.f19651g.da == 0;
    }

    @Override // g.mi
    public final void o() {
        brh brhVar;
        brh brhVar2;
        fol folVar;
        brh brhVar3;
        brh brhVar4;
        fol folVar2;
        brh brhVar5 = this.f19651g;
        boolean z = brhVar5.bk;
        eeh eehVar = this.f19647c;
        if (z) {
            eehVar.m(brhVar5.eb());
        }
        boolean z2 = eehVar.j;
        big bigVar = this.f19650f;
        big bigVar2 = this.f19645a;
        if (z2) {
            fol folVar3 = this.f19646b;
            fol folVar4 = fol.MATCH_PARENT;
            if (folVar3 == folVar4 && (brhVar2 = (brhVar = this.f19651g).bj) != null && ((folVar = brhVar2.ch[0]) == fol.FIXED || folVar == folVar4)) {
                mi.m(bigVar2, brhVar2.be.f19645a, brhVar.cw.n());
                mi.m(bigVar, brhVar2.be.f19650f, -this.f19651g.br.n());
                return;
            }
        } else {
            brh brhVar6 = this.f19651g;
            fol folVar5 = brhVar6.ch[0];
            this.f19646b = folVar5;
            if (folVar5 != fol.MATCH_CONSTRAINT) {
                fol folVar6 = fol.MATCH_PARENT;
                if (folVar5 == folVar6 && (brhVar4 = brhVar6.bj) != null && ((folVar2 = brhVar4.ch[0]) == fol.FIXED || folVar2 == folVar6)) {
                    int eb = (brhVar4.eb() - this.f19651g.cw.n()) - this.f19651g.br.n();
                    mi.m(bigVar2, brhVar4.be.f19645a, this.f19651g.cw.n());
                    mi.m(bigVar, brhVar4.be.f19650f, -this.f19651g.br.n());
                    eehVar.m(eb);
                    return;
                }
                if (folVar5 == fol.FIXED) {
                    eehVar.m(brhVar6.eb());
                }
            }
        }
        if (eehVar.j) {
            brh brhVar7 = this.f19651g;
            if (brhVar7.bk) {
                hac[] hacVarArr = brhVar7.ax;
                hac hacVar = hacVarArr[0];
                hac hacVar2 = hacVar.f19105e;
                if (hacVar2 != null && hacVarArr[1].f19105e != null) {
                    if (brhVar7.eg()) {
                        bigVar2.f11647g = this.f19651g.ax[0].n();
                        bigVar.f11647g = -this.f19651g.ax[1].n();
                        return;
                    }
                    big k = mi.k(this.f19651g.ax[0]);
                    if (k != null) {
                        mi.m(bigVar2, k, this.f19651g.ax[0].n());
                    }
                    big k2 = mi.k(this.f19651g.ax[1]);
                    if (k2 != null) {
                        mi.m(bigVar, k2, -this.f19651g.ax[1].n());
                    }
                    bigVar2.i = true;
                    bigVar.i = true;
                    return;
                }
                if (hacVar2 != null) {
                    big k3 = mi.k(hacVar);
                    if (k3 != null) {
                        mi.m(bigVar2, k3, this.f19651g.ax[0].n());
                        mi.m(bigVar, bigVar2, eehVar.l);
                        return;
                    }
                    return;
                }
                hac hacVar3 = hacVarArr[1];
                if (hacVar3.f19105e != null) {
                    big k4 = mi.k(hacVar3);
                    if (k4 != null) {
                        mi.m(bigVar, k4, -this.f19651g.ax[1].n());
                        mi.m(bigVar2, bigVar, -eehVar.l);
                        return;
                    }
                    return;
                }
                if ((brhVar7 instanceof gbi) || brhVar7.bj == null || brhVar7.m(dih.CENTER).f19105e != null) {
                    return;
                }
                brh brhVar8 = this.f19651g;
                mi.m(bigVar2, brhVar8.bj.be.f19645a, brhVar8.ei());
                mi.m(bigVar, bigVar2, eehVar.l);
                return;
            }
        }
        if (this.f19646b == fol.MATCH_CONSTRAINT) {
            brh brhVar9 = this.f19651g;
            int i = brhVar9.da;
            if (i == 2) {
                brh brhVar10 = brhVar9.bj;
                if (brhVar10 != null) {
                    eeh eehVar2 = brhVar10.bi.f19647c;
                    eehVar.f11644d.add(eehVar2);
                    eehVar2.f11642b.add(eehVar);
                    eehVar.i = true;
                    eehVar.f11642b.add(bigVar2);
                    eehVar.f11642b.add(bigVar);
                }
            } else if (i == 3) {
                if (brhVar9.by == 3) {
                    bigVar2.f11646f = this;
                    bigVar.f11646f = this;
                    fju fjuVar = brhVar9.bi;
                    fjuVar.f19645a.f11646f = this;
                    fjuVar.f19650f.f11646f = this;
                    eehVar.f11646f = this;
                    if (brhVar9.dk()) {
                        eehVar.f11644d.add(this.f19651g.bi.f19647c);
                        this.f19651g.bi.f19647c.f11642b.add(eehVar);
                        fju fjuVar2 = this.f19651g.bi;
                        fjuVar2.f19647c.f11646f = this;
                        eehVar.f11644d.add(fjuVar2.f19645a);
                        eehVar.f11644d.add(this.f19651g.bi.f19650f);
                        this.f19651g.bi.f19645a.f11642b.add(eehVar);
                        this.f19651g.bi.f19650f.f11642b.add(eehVar);
                    } else if (this.f19651g.eg()) {
                        this.f19651g.bi.f19647c.f11644d.add(eehVar);
                        eehVar.f11642b.add(this.f19651g.bi.f19647c);
                    } else {
                        this.f19651g.bi.f19647c.f11644d.add(eehVar);
                    }
                } else {
                    eeh eehVar3 = brhVar9.bi.f19647c;
                    eehVar.f11644d.add(eehVar3);
                    eehVar3.f11642b.add(eehVar);
                    this.f19651g.bi.f19645a.f11642b.add(eehVar);
                    this.f19651g.bi.f19650f.f11642b.add(eehVar);
                    eehVar.i = true;
                    eehVar.f11642b.add(bigVar2);
                    eehVar.f11642b.add(bigVar);
                    bigVar2.f11644d.add(eehVar);
                    bigVar.f11644d.add(eehVar);
                }
            }
        }
        brh brhVar11 = this.f19651g;
        hac[] hacVarArr2 = brhVar11.ax;
        hac hacVar4 = hacVarArr2[0];
        hac hacVar5 = hacVar4.f19105e;
        if (hacVar5 != null && hacVarArr2[1].f19105e != null) {
            if (brhVar11.eg()) {
                bigVar2.f11647g = this.f19651g.ax[0].n();
                bigVar.f11647g = -this.f19651g.ax[1].n();
                return;
            }
            big k5 = mi.k(this.f19651g.ax[0]);
            big k6 = mi.k(this.f19651g.ax[1]);
            if (k5 != null) {
                k5.n(this);
            }
            if (k6 != null) {
                k6.n(this);
            }
            this.h = dnl.CENTER;
            return;
        }
        if (hacVar5 != null) {
            big k7 = mi.k(hacVar4);
            if (k7 != null) {
                mi.m(bigVar2, k7, this.f19651g.ax[0].n());
                t(bigVar, bigVar2, 1, eehVar);
                return;
            }
            return;
        }
        hac hacVar6 = hacVarArr2[1];
        if (hacVar6.f19105e != null) {
            big k8 = mi.k(hacVar6);
            if (k8 != null) {
                mi.m(bigVar, k8, -this.f19651g.ax[1].n());
                t(bigVar2, bigVar, -1, eehVar);
                return;
            }
            return;
        }
        if ((brhVar11 instanceof gbi) || (brhVar3 = brhVar11.bj) == null) {
            return;
        }
        mi.m(bigVar2, brhVar3.be.f19645a, brhVar11.ei());
        t(bigVar, bigVar2, 1, eehVar);
    }

    @Override // g.mi
    public final void q() {
        big bigVar = this.f19645a;
        if (bigVar.j) {
            this.f19651g.cv = bigVar.l;
        }
    }

    @Override // g.mi
    public final void r() {
        this.i = null;
        this.f19645a.o();
        this.f19650f.o();
        this.f19647c.o();
        this.j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.f19651g.an;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0242, code lost:
    
        if (r15 != 1) goto L124;
     */
    @Override // g.exs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(exs exsVar) {
        float f2;
        float f3;
        float f4;
        int i;
        if (hb.f19153a[this.h.ordinal()] == 3) {
            brh brhVar = this.f19651g;
            p(brhVar.cw, brhVar.br, 0);
            return;
        }
        eeh eehVar = this.f19647c;
        boolean z = eehVar.j;
        big bigVar = this.f19645a;
        big bigVar2 = this.f19650f;
        if (!z && this.f19646b == fol.MATCH_CONSTRAINT) {
            brh brhVar2 = this.f19651g;
            int i2 = brhVar2.da;
            if (i2 == 2) {
                brh brhVar3 = brhVar2.bj;
                if (brhVar3 != null) {
                    if (brhVar3.be.f19647c.j) {
                        eehVar.m((int) ((r3.l * brhVar2.bu) + 0.5f));
                    }
                }
            } else if (i2 == 3) {
                int i3 = brhVar2.by;
                if (i3 == 0 || i3 == 3) {
                    fju fjuVar = brhVar2.bi;
                    big bigVar3 = fjuVar.f19645a;
                    big bigVar4 = fjuVar.f19650f;
                    boolean z2 = brhVar2.cw.f19105e != null;
                    boolean z3 = brhVar2.bx.f19105e != null;
                    boolean z4 = brhVar2.br.f19105e != null;
                    boolean z5 = brhVar2.as.f19105e != null;
                    int i4 = brhVar2.db;
                    if (z2 && z3 && z4 && z5) {
                        float f5 = brhVar2.bq;
                        boolean z6 = bigVar3.j;
                        ArrayList arrayList = bigVar3.f11644d;
                        int[] iArr = w;
                        if (z6 && bigVar4.j) {
                            if (bigVar.k && bigVar2.k) {
                                x(iArr, ((big) bigVar.f11644d.get(0)).l + bigVar.f11647g, ((big) bigVar2.f11644d.get(0)).l - bigVar2.f11647g, bigVar3.l + bigVar3.f11647g, bigVar4.l - bigVar4.f11647g, f5, i4);
                                eehVar.m(iArr[0]);
                                this.f19651g.bi.f19647c.m(iArr[1]);
                                return;
                            }
                            return;
                        }
                        if (bigVar.j && bigVar2.j) {
                            if (!bigVar3.k || !bigVar4.k) {
                                return;
                            }
                            x(iArr, bigVar.l + bigVar.f11647g, bigVar2.l - bigVar2.f11647g, ((big) arrayList.get(0)).l + bigVar3.f11647g, ((big) bigVar4.f11644d.get(0)).l - bigVar4.f11647g, f5, i4);
                            eehVar.m(iArr[0]);
                            this.f19651g.bi.f19647c.m(iArr[1]);
                        }
                        if (!bigVar.k || !bigVar2.k || !bigVar3.k || !bigVar4.k) {
                            return;
                        }
                        x(iArr, ((big) bigVar.f11644d.get(0)).l + bigVar.f11647g, ((big) bigVar2.f11644d.get(0)).l - bigVar2.f11647g, ((big) arrayList.get(0)).l + bigVar3.f11647g, ((big) bigVar4.f11644d.get(0)).l - bigVar4.f11647g, f5, i4);
                        eehVar.m(iArr[0]);
                        this.f19651g.bi.f19647c.m(iArr[1]);
                    } else if (z2 && z4) {
                        if (!bigVar.k || !bigVar2.k) {
                            return;
                        }
                        float f6 = brhVar2.bq;
                        int i5 = ((big) bigVar.f11644d.get(0)).l + bigVar.f11647g;
                        int i6 = ((big) bigVar2.f11644d.get(0)).l - bigVar2.f11647g;
                        if (i4 == -1 || i4 == 0) {
                            int u = u(i6 - i5, 0);
                            int i7 = (int) ((u * f6) + 0.5f);
                            int u2 = u(i7, 1);
                            if (i7 != u2) {
                                u = (int) ((u2 / f6) + 0.5f);
                            }
                            eehVar.m(u);
                            this.f19651g.bi.f19647c.m(u2);
                        } else if (i4 == 1) {
                            int u3 = u(i6 - i5, 0);
                            int i8 = (int) ((u3 / f6) + 0.5f);
                            int u4 = u(i8, 1);
                            if (i8 != u4) {
                                u3 = (int) ((u4 * f6) + 0.5f);
                            }
                            eehVar.m(u3);
                            this.f19651g.bi.f19647c.m(u4);
                        }
                    } else if (z3 && z5) {
                        if (!bigVar3.k || !bigVar4.k) {
                            return;
                        }
                        float f7 = brhVar2.bq;
                        int i9 = ((big) bigVar3.f11644d.get(0)).l + bigVar3.f11647g;
                        int i10 = ((big) bigVar4.f11644d.get(0)).l - bigVar4.f11647g;
                        if (i4 != -1) {
                            if (i4 == 0) {
                                int u5 = u(i10 - i9, 1);
                                int i11 = (int) ((u5 * f7) + 0.5f);
                                int u6 = u(i11, 0);
                                if (i11 != u6) {
                                    u5 = (int) ((u6 / f7) + 0.5f);
                                }
                                eehVar.m(u6);
                                this.f19651g.bi.f19647c.m(u5);
                            }
                        }
                        int u7 = u(i10 - i9, 1);
                        int i12 = (int) ((u7 / f7) + 0.5f);
                        int u8 = u(i12, 0);
                        if (i12 != u8) {
                            u7 = (int) ((u8 * f7) + 0.5f);
                        }
                        eehVar.m(u8);
                        this.f19651g.bi.f19647c.m(u7);
                    }
                } else {
                    int i13 = brhVar2.db;
                    if (i13 == -1) {
                        f2 = brhVar2.bi.f19647c.l;
                        f3 = brhVar2.bq;
                    } else if (i13 == 0) {
                        f4 = brhVar2.bi.f19647c.l / brhVar2.bq;
                        i = (int) (f4 + 0.5f);
                        eehVar.m(i);
                    } else if (i13 != 1) {
                        i = 0;
                        eehVar.m(i);
                    } else {
                        f2 = brhVar2.bi.f19647c.l;
                        f3 = brhVar2.bq;
                    }
                    f4 = f2 * f3;
                    i = (int) (f4 + 0.5f);
                    eehVar.m(i);
                }
            }
        }
        if (bigVar.k && bigVar2.k) {
            if (bigVar.j && bigVar2.j && eehVar.j) {
                return;
            }
            if (!eehVar.j && this.f19646b == fol.MATCH_CONSTRAINT) {
                brh brhVar4 = this.f19651g;
                if (brhVar4.da == 0 && !brhVar4.eg()) {
                    big bigVar5 = (big) bigVar.f11644d.get(0);
                    big bigVar6 = (big) bigVar2.f11644d.get(0);
                    int i14 = bigVar5.l + bigVar.f11647g;
                    int i15 = bigVar6.l + bigVar2.f11647g;
                    bigVar.m(i14);
                    bigVar2.m(i15);
                    eehVar.m(i15 - i14);
                    return;
                }
            }
            if (!eehVar.j && this.f19646b == fol.MATCH_CONSTRAINT && this.f19648d == 1 && bigVar.f11644d.size() > 0 && bigVar2.f11644d.size() > 0) {
                int min = Math.min((((big) bigVar2.f11644d.get(0)).l + bigVar2.f11647g) - (((big) bigVar.f11644d.get(0)).l + bigVar.f11647g), eehVar.p);
                brh brhVar5 = this.f19651g;
                int i16 = brhVar5.bs;
                int max = Math.max(brhVar5.bl, min);
                if (i16 > 0) {
                    max = Math.min(i16, max);
                }
                eehVar.m(max);
            }
            if (eehVar.j) {
                big bigVar7 = (big) bigVar.f11644d.get(0);
                big bigVar8 = (big) bigVar2.f11644d.get(0);
                int i17 = bigVar7.l;
                int i18 = bigVar.f11647g + i17;
                int i19 = bigVar8.l;
                int i20 = bigVar2.f11647g + i19;
                float f8 = this.f19651g.cp;
                if (bigVar7 == bigVar8) {
                    f8 = 0.5f;
                } else {
                    i17 = i18;
                    i19 = i20;
                }
                bigVar.m((int) ((((i19 - i17) - eehVar.l) * f8) + i17 + 0.5f));
                bigVar2.m(bigVar.l + eehVar.l);
            }
        }
    }

    public final void y() {
        this.j = false;
        big bigVar = this.f19645a;
        bigVar.o();
        bigVar.j = false;
        big bigVar2 = this.f19650f;
        bigVar2.o();
        bigVar2.j = false;
        this.f19647c.j = false;
    }
}

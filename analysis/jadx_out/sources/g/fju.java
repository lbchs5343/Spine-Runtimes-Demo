package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class fju extends mi {
    public big w;
    public fgk x;

    @Override // g.mi
    public final boolean n() {
        return this.f19646b != fol.MATCH_CONSTRAINT || this.f19651g.by == 0;
    }

    @Override // g.mi
    public final void o() {
        brh brhVar;
        brh brhVar2;
        brh brhVar3;
        brh brhVar4;
        big bigVar = this.w;
        brh brhVar5 = this.f19651g;
        boolean z = brhVar5.bk;
        eeh eehVar = this.f19647c;
        if (z) {
            eehVar.m(brhVar5.di());
        }
        boolean z2 = eehVar.j;
        big bigVar2 = this.f19650f;
        big bigVar3 = this.f19645a;
        if (!z2) {
            brh brhVar6 = this.f19651g;
            this.f19646b = brhVar6.ch[1];
            if (brhVar6.cx) {
                this.x = new fgk(this);
            }
            fol folVar = this.f19646b;
            if (folVar != fol.MATCH_CONSTRAINT) {
                if (folVar == fol.MATCH_PARENT && (brhVar4 = this.f19651g.bj) != null && brhVar4.ch[1] == fol.FIXED) {
                    int di = (brhVar4.di() - this.f19651g.bx.n()) - this.f19651g.as.n();
                    mi.m(bigVar3, brhVar4.bi.f19645a, this.f19651g.bx.n());
                    mi.m(bigVar2, brhVar4.bi.f19650f, -this.f19651g.as.n());
                    eehVar.m(di);
                    return;
                }
                if (folVar == fol.FIXED) {
                    eehVar.m(this.f19651g.di());
                }
            }
        } else if (this.f19646b == fol.MATCH_PARENT && (brhVar2 = (brhVar = this.f19651g).bj) != null && brhVar2.ch[1] == fol.FIXED) {
            mi.m(bigVar3, brhVar2.bi.f19645a, brhVar.bx.n());
            mi.m(bigVar2, brhVar2.bi.f19650f, -this.f19651g.as.n());
            return;
        }
        boolean z3 = eehVar.j;
        if (z3) {
            brh brhVar7 = this.f19651g;
            if (brhVar7.bk) {
                hac[] hacVarArr = brhVar7.ax;
                hac hacVar = hacVarArr[2];
                hac hacVar2 = hacVar.f19105e;
                if (hacVar2 != null && hacVarArr[3].f19105e != null) {
                    if (brhVar7.dk()) {
                        bigVar3.f11647g = this.f19651g.ax[2].n();
                        bigVar2.f11647g = -this.f19651g.ax[3].n();
                    } else {
                        big k = mi.k(this.f19651g.ax[2]);
                        if (k != null) {
                            mi.m(bigVar3, k, this.f19651g.ax[2].n());
                        }
                        big k2 = mi.k(this.f19651g.ax[3]);
                        if (k2 != null) {
                            mi.m(bigVar2, k2, -this.f19651g.ax[3].n());
                        }
                        bigVar3.i = true;
                        bigVar2.i = true;
                    }
                    brh brhVar8 = this.f19651g;
                    if (brhVar8.cx) {
                        mi.m(bigVar, bigVar3, brhVar8.bn);
                        return;
                    }
                    return;
                }
                if (hacVar2 != null) {
                    big k3 = mi.k(hacVar);
                    if (k3 != null) {
                        mi.m(bigVar3, k3, this.f19651g.ax[2].n());
                        mi.m(bigVar2, bigVar3, eehVar.l);
                        brh brhVar9 = this.f19651g;
                        if (brhVar9.cx) {
                            mi.m(bigVar, bigVar3, brhVar9.bn);
                            return;
                        }
                        return;
                    }
                    return;
                }
                hac hacVar3 = hacVarArr[3];
                if (hacVar3.f19105e != null) {
                    big k4 = mi.k(hacVar3);
                    if (k4 != null) {
                        mi.m(bigVar2, k4, -this.f19651g.ax[3].n());
                        mi.m(bigVar3, bigVar2, -eehVar.l);
                    }
                    brh brhVar10 = this.f19651g;
                    if (brhVar10.cx) {
                        mi.m(bigVar, bigVar3, brhVar10.bn);
                        return;
                    }
                    return;
                }
                hac hacVar4 = hacVarArr[4];
                if (hacVar4.f19105e != null) {
                    big k5 = mi.k(hacVar4);
                    if (k5 != null) {
                        mi.m(bigVar, k5, 0);
                        mi.m(bigVar3, bigVar, -this.f19651g.bn);
                        mi.m(bigVar2, bigVar3, eehVar.l);
                        return;
                    }
                    return;
                }
                if ((brhVar7 instanceof gbi) || brhVar7.bj == null || brhVar7.m(dih.CENTER).f19105e != null) {
                    return;
                }
                brh brhVar11 = this.f19651g;
                mi.m(bigVar3, brhVar11.bj.bi.f19645a, brhVar11.dy());
                mi.m(bigVar2, bigVar3, eehVar.l);
                brh brhVar12 = this.f19651g;
                if (brhVar12.cx) {
                    mi.m(bigVar, bigVar3, brhVar12.bn);
                    return;
                }
                return;
            }
        }
        if (z3 || this.f19646b != fol.MATCH_CONSTRAINT) {
            eehVar.n(this);
        } else {
            brh brhVar13 = this.f19651g;
            int i = brhVar13.by;
            if (i == 2) {
                brh brhVar14 = brhVar13.bj;
                if (brhVar14 != null) {
                    eeh eehVar2 = brhVar14.bi.f19647c;
                    eehVar.f11644d.add(eehVar2);
                    eehVar2.f11642b.add(eehVar);
                    eehVar.i = true;
                    eehVar.f11642b.add(bigVar3);
                    eehVar.f11642b.add(bigVar2);
                }
            } else if (i == 3 && !brhVar13.dk()) {
                brh brhVar15 = this.f19651g;
                if (brhVar15.da != 3) {
                    eeh eehVar3 = brhVar15.be.f19647c;
                    eehVar.f11644d.add(eehVar3);
                    eehVar3.f11642b.add(eehVar);
                    eehVar.i = true;
                    eehVar.f11642b.add(bigVar3);
                    eehVar.f11642b.add(bigVar2);
                }
            }
        }
        brh brhVar16 = this.f19651g;
        hac[] hacVarArr2 = brhVar16.ax;
        hac hacVar5 = hacVarArr2[2];
        hac hacVar6 = hacVar5.f19105e;
        if (hacVar6 != null && hacVarArr2[3].f19105e != null) {
            if (brhVar16.dk()) {
                bigVar3.f11647g = this.f19651g.ax[2].n();
                bigVar2.f11647g = -this.f19651g.ax[3].n();
            } else {
                big k6 = mi.k(this.f19651g.ax[2]);
                big k7 = mi.k(this.f19651g.ax[3]);
                if (k6 != null) {
                    k6.n(this);
                }
                if (k7 != null) {
                    k7.n(this);
                }
                this.h = dnl.CENTER;
            }
            if (this.f19651g.cx) {
                t(bigVar, bigVar3, 1, this.x);
            }
        } else if (hacVar6 != null) {
            big k8 = mi.k(hacVar5);
            if (k8 != null) {
                mi.m(bigVar3, k8, this.f19651g.ax[2].n());
                t(bigVar2, bigVar3, 1, eehVar);
                if (this.f19651g.cx) {
                    t(bigVar, bigVar3, 1, this.x);
                }
                fol folVar2 = this.f19646b;
                fol folVar3 = fol.MATCH_CONSTRAINT;
                if (folVar2 == folVar3) {
                    brh brhVar17 = this.f19651g;
                    if (brhVar17.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                        dza dzaVar = brhVar17.be;
                        if (dzaVar.f19646b == folVar3) {
                            dzaVar.f19647c.f11642b.add(eehVar);
                            eehVar.f11644d.add(this.f19651g.be.f19647c);
                            eehVar.f11646f = this;
                        }
                    }
                }
            }
        } else {
            hac hacVar7 = hacVarArr2[3];
            if (hacVar7.f19105e != null) {
                big k9 = mi.k(hacVar7);
                if (k9 != null) {
                    mi.m(bigVar2, k9, -this.f19651g.ax[3].n());
                    t(bigVar3, bigVar2, -1, eehVar);
                    if (this.f19651g.cx) {
                        t(bigVar, bigVar3, 1, this.x);
                    }
                }
            } else {
                hac hacVar8 = hacVarArr2[4];
                if (hacVar8.f19105e != null) {
                    big k10 = mi.k(hacVar8);
                    if (k10 != null) {
                        mi.m(bigVar, k10, 0);
                        t(bigVar3, bigVar, -1, this.x);
                        t(bigVar2, bigVar3, 1, eehVar);
                    }
                } else if (!(brhVar16 instanceof gbi) && (brhVar3 = brhVar16.bj) != null) {
                    mi.m(bigVar3, brhVar3.bi.f19645a, brhVar16.dy());
                    t(bigVar2, bigVar3, 1, eehVar);
                    if (this.f19651g.cx) {
                        t(bigVar, bigVar3, 1, this.x);
                    }
                    fol folVar4 = this.f19646b;
                    fol folVar5 = fol.MATCH_CONSTRAINT;
                    if (folVar4 == folVar5) {
                        brh brhVar18 = this.f19651g;
                        if (brhVar18.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                            dza dzaVar2 = brhVar18.be;
                            if (dzaVar2.f19646b == folVar5) {
                                dzaVar2.f19647c.f11642b.add(eehVar);
                                eehVar.f11644d.add(this.f19651g.be.f19647c);
                                eehVar.f11646f = this;
                            }
                        }
                    }
                }
            }
        }
        if (eehVar.f11644d.size() == 0) {
            eehVar.k = true;
        }
    }

    @Override // g.mi
    public final void q() {
        big bigVar = this.f19645a;
        if (bigVar.j) {
            this.f19651g.cb = bigVar.l;
        }
    }

    @Override // g.mi
    public final void r() {
        this.i = null;
        this.f19645a.o();
        this.f19650f.o();
        this.w.o();
        this.f19647c.o();
        this.j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.f19651g.an;
    }

    @Override // g.exs
    public final void v(exs exsVar) {
        float f2;
        float f3;
        float f4;
        int i;
        if (drc.f14666a[this.h.ordinal()] == 3) {
            brh brhVar = this.f19651g;
            p(brhVar.bx, brhVar.as, 1);
            return;
        }
        eeh eehVar = this.f19647c;
        if (eehVar.k && !eehVar.j && this.f19646b == fol.MATCH_CONSTRAINT) {
            brh brhVar2 = this.f19651g;
            int i2 = brhVar2.by;
            if (i2 == 2) {
                brh brhVar3 = brhVar2.bj;
                if (brhVar3 != null) {
                    if (brhVar3.bi.f19647c.j) {
                        eehVar.m((int) ((r1.l * brhVar2.am) + 0.5f));
                    }
                }
            } else if (i2 == 3) {
                eeh eehVar2 = brhVar2.be.f19647c;
                if (eehVar2.j) {
                    int i3 = brhVar2.db;
                    if (i3 == -1) {
                        f2 = eehVar2.l;
                        f3 = brhVar2.bq;
                    } else if (i3 == 0) {
                        f4 = eehVar2.l * brhVar2.bq;
                        i = (int) (f4 + 0.5f);
                        eehVar.m(i);
                    } else if (i3 != 1) {
                        i = 0;
                        eehVar.m(i);
                    } else {
                        f2 = eehVar2.l;
                        f3 = brhVar2.bq;
                    }
                    f4 = f2 / f3;
                    i = (int) (f4 + 0.5f);
                    eehVar.m(i);
                }
            }
        }
        big bigVar = this.f19645a;
        if (bigVar.k) {
            big bigVar2 = this.f19650f;
            if (bigVar2.k) {
                if (bigVar.j && bigVar2.j && eehVar.j) {
                    return;
                }
                if (!eehVar.j && this.f19646b == fol.MATCH_CONSTRAINT) {
                    brh brhVar4 = this.f19651g;
                    if (brhVar4.da == 0 && !brhVar4.dk()) {
                        big bigVar3 = (big) bigVar.f11644d.get(0);
                        big bigVar4 = (big) bigVar2.f11644d.get(0);
                        int i4 = bigVar3.l + bigVar.f11647g;
                        int i5 = bigVar4.l + bigVar2.f11647g;
                        bigVar.m(i4);
                        bigVar2.m(i5);
                        eehVar.m(i5 - i4);
                        return;
                    }
                }
                if (!eehVar.j && this.f19646b == fol.MATCH_CONSTRAINT && this.f19648d == 1 && bigVar.f11644d.size() > 0 && bigVar2.f11644d.size() > 0) {
                    big bigVar5 = (big) bigVar.f11644d.get(0);
                    int i6 = (((big) bigVar2.f11644d.get(0)).l + bigVar2.f11647g) - (bigVar5.l + bigVar.f11647g);
                    int i7 = eehVar.p;
                    if (i6 < i7) {
                        eehVar.m(i6);
                    } else {
                        eehVar.m(i7);
                    }
                }
                if (eehVar.j && bigVar.f11644d.size() > 0 && bigVar2.f11644d.size() > 0) {
                    big bigVar6 = (big) bigVar.f11644d.get(0);
                    big bigVar7 = (big) bigVar2.f11644d.get(0);
                    int i8 = bigVar6.l;
                    int i9 = bigVar.f11647g + i8;
                    int i10 = bigVar7.l;
                    int i11 = bigVar2.f11647g + i10;
                    float f5 = this.f19651g.ct;
                    if (bigVar6 == bigVar7) {
                        f5 = 0.5f;
                    } else {
                        i8 = i9;
                        i10 = i11;
                    }
                    bigVar.m((int) ((((i10 - i8) - eehVar.l) * f5) + i8 + 0.5f));
                    bigVar2.m(bigVar.l + eehVar.l);
                }
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
        big bigVar3 = this.w;
        bigVar3.o();
        bigVar3.j = false;
        this.f19647c.j = false;
    }
}

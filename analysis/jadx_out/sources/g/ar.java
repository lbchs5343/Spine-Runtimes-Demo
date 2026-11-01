package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ar {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f10688a;

    /* renamed from: b, reason: collision with root package name */
    public aep f10689b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f10690c;

    /* renamed from: d, reason: collision with root package name */
    public aep f10691d;

    /* renamed from: e, reason: collision with root package name */
    public gri f10692e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f10693f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f10694g;
    public dcu h;

    public final int i(aep aepVar, int i) {
        ArrayList arrayList;
        int i2;
        long max;
        float f2;
        aep aepVar2 = aepVar;
        ArrayList arrayList2 = this.f10688a;
        int size = arrayList2.size();
        long j = 0;
        int i3 = 0;
        long j2 = 0;
        while (i3 < size) {
            mi miVar = ((fld) arrayList2.get(i3)).f16961a;
            if (!(miVar instanceof gnk) ? !(i != 0 ? (miVar instanceof fju) : (miVar instanceof dza)) : ((gnk) miVar).f19649e != i) {
                big bigVar = (i == 0 ? aepVar2.be : aepVar2.bi).f19645a;
                big bigVar2 = (i == 0 ? aepVar2.be : aepVar2.bi).f19650f;
                big bigVar3 = miVar.f19645a;
                big bigVar4 = miVar.f19650f;
                boolean contains = bigVar3.f11644d.contains(bigVar);
                boolean contains2 = bigVar4.f11644d.contains(bigVar2);
                long s = miVar.s();
                if (contains && contains2) {
                    long d2 = fld.d(bigVar3, j);
                    long c2 = fld.c(bigVar4, j);
                    long j3 = d2 - s;
                    int i4 = bigVar4.f11647g;
                    arrayList = arrayList2;
                    i2 = size;
                    if (j3 >= (-i4)) {
                        j3 += i4;
                    }
                    long j4 = bigVar3.f11647g;
                    long j5 = ((-c2) - s) - j4;
                    if (j5 >= j4) {
                        j5 -= j4;
                    }
                    brh brhVar = miVar.f19651g;
                    if (i == 0) {
                        f2 = brhVar.cp;
                    } else if (i == 1) {
                        f2 = brhVar.ct;
                    } else {
                        brhVar.getClass();
                        f2 = -1.0f;
                    }
                    float f3 = f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? (long) ((j3 / (1.0f - f2)) + (j5 / f2)) : 0L;
                    max = (bigVar3.f11647g + ((((long) ((f3 * f2) + 0.5f)) + s) + ((long) awf.g(1.0f, f2, f3, 0.5f)))) - bigVar4.f11647g;
                } else {
                    arrayList = arrayList2;
                    i2 = size;
                    max = contains ? Math.max(fld.d(bigVar3, bigVar3.f11647g), bigVar3.f11647g + s) : contains2 ? Math.max(-fld.c(bigVar4, bigVar4.f11647g), (-bigVar4.f11647g) + s) : (miVar.s() + bigVar3.f11647g) - bigVar4.f11647g;
                }
            } else {
                arrayList = arrayList2;
                i2 = size;
                max = j;
            }
            j2 = Math.max(j2, max);
            i3++;
            aepVar2 = aepVar;
            arrayList2 = arrayList;
            size = i2;
            j = 0;
        }
        return (int) j2;
    }

    public final void j(mi miVar, int i, ArrayList arrayList) {
        big bigVar = miVar.f19645a;
        big bigVar2 = miVar.f19650f;
        Iterator it = bigVar.f11642b.iterator();
        while (it.hasNext()) {
            exs exsVar = (exs) it.next();
            if (exsVar instanceof big) {
                k((big) exsVar, i, arrayList, null);
            } else if (exsVar instanceof mi) {
                k(((mi) exsVar).f19645a, i, arrayList, null);
            }
        }
        Iterator it2 = bigVar2.f11642b.iterator();
        while (it2.hasNext()) {
            exs exsVar2 = (exs) it2.next();
            if (exsVar2 instanceof big) {
                k((big) exsVar2, i, arrayList, null);
            } else if (exsVar2 instanceof mi) {
                k(((mi) exsVar2).f19650f, i, arrayList, null);
            }
        }
        if (i == 1) {
            Iterator it3 = ((fju) miVar).w.f11642b.iterator();
            while (it3.hasNext()) {
                exs exsVar3 = (exs) it3.next();
                if (exsVar3 instanceof big) {
                    k((big) exsVar3, i, arrayList, null);
                }
            }
        }
    }

    public final void k(big bigVar, int i, ArrayList arrayList, fld fldVar) {
        mi miVar = bigVar.f11643c;
        fld fldVar2 = miVar.i;
        big bigVar2 = miVar.f19650f;
        big bigVar3 = miVar.f19645a;
        if (fldVar2 == null) {
            aep aepVar = this.f10691d;
            if (miVar == aepVar.be || miVar == aepVar.bi) {
                return;
            }
            if (fldVar == null) {
                fldVar = new fld();
                fldVar.f16961a = null;
                fldVar.f16962b = new ArrayList();
                fldVar.f16961a = miVar;
                arrayList.add(fldVar);
            }
            miVar.i = fldVar;
            fldVar.f16962b.add(miVar);
            Iterator it = bigVar3.f11642b.iterator();
            while (it.hasNext()) {
                exs exsVar = (exs) it.next();
                if (exsVar instanceof big) {
                    k((big) exsVar, i, arrayList, fldVar);
                }
            }
            Iterator it2 = bigVar2.f11642b.iterator();
            while (it2.hasNext()) {
                exs exsVar2 = (exs) it2.next();
                if (exsVar2 instanceof big) {
                    k((big) exsVar2, i, arrayList, fldVar);
                }
            }
            if (i == 1 && (miVar instanceof fju)) {
                Iterator it3 = ((fju) miVar).w.f11642b.iterator();
                while (it3.hasNext()) {
                    exs exsVar3 = (exs) it3.next();
                    if (exsVar3 instanceof big) {
                        k((big) exsVar3, i, arrayList, fldVar);
                    }
                }
            }
            Iterator it4 = bigVar3.f11644d.iterator();
            while (it4.hasNext()) {
                k((big) it4.next(), i, arrayList, fldVar);
            }
            Iterator it5 = bigVar2.f11644d.iterator();
            while (it5.hasNext()) {
                k((big) it5.next(), i, arrayList, fldVar);
            }
            if (i == 1 && (miVar instanceof fju)) {
                Iterator it6 = ((fju) miVar).w.f11644d.iterator();
                while (it6.hasNext()) {
                    k((big) it6.next(), i, arrayList, fldVar);
                }
            }
        }
    }

    public final void l(brh brhVar, fol folVar, int i, fol folVar2, int i2) {
        dcu dcuVar = this.h;
        dcuVar.f13985d = folVar;
        dcuVar.f13988g = folVar2;
        dcuVar.i = i;
        dcuVar.f13983b = i2;
        this.f10692e.j(brhVar, dcuVar);
        brhVar.ed(dcuVar.f13984c);
        brhVar.dj(dcuVar.f13986e);
        brhVar.cx = dcuVar.f13982a;
        brhVar.ee(dcuVar.j);
    }

    public final void m(aep aepVar) {
        char c2;
        float f2;
        fol folVar;
        int i;
        int i2;
        fol folVar2;
        ar arVar;
        fol folVar3;
        fol folVar4;
        fol folVar5;
        fol folVar6;
        ArrayList arrayList = aepVar.x;
        fol[] folVarArr = aepVar.ch;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            brh brhVar = (brh) it.next();
            fol[] folVarArr2 = brhVar.ch;
            hac[] hacVarArr = brhVar.ax;
            hac hacVar = brhVar.as;
            hac hacVar2 = brhVar.bx;
            hac hacVar3 = brhVar.br;
            hac hacVar4 = brhVar.cw;
            fol folVar7 = folVarArr2[0];
            fol folVar8 = folVarArr2[1];
            if (brhVar.aq == 8) {
                brhVar.bk = true;
            } else {
                float f3 = brhVar.bu;
                if (f3 < 1.0f) {
                    c2 = 0;
                    if (folVar7 == fol.MATCH_CONSTRAINT) {
                        brhVar.da = 2;
                    }
                } else {
                    c2 = 0;
                }
                float f4 = brhVar.am;
                if (f4 < 1.0f) {
                    f2 = 1.0f;
                    if (folVar8 == fol.MATCH_CONSTRAINT) {
                        brhVar.by = 2;
                    }
                } else {
                    f2 = 1.0f;
                }
                if (brhVar.bq > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                    fol folVar9 = fol.MATCH_CONSTRAINT;
                    if (folVar7 == folVar9 && (folVar8 == fol.WRAP_CONTENT || folVar8 == fol.FIXED)) {
                        brhVar.da = 3;
                    } else if (folVar8 == folVar9 && (folVar7 == fol.WRAP_CONTENT || folVar7 == fol.FIXED)) {
                        brhVar.by = 3;
                    } else if (folVar7 == folVar9 && folVar8 == folVar9) {
                        if (brhVar.da == 0) {
                            brhVar.da = 3;
                        }
                        if (brhVar.by == 0) {
                            brhVar.by = 3;
                        }
                    }
                }
                fol folVar10 = fol.MATCH_CONSTRAINT;
                if (folVar7 == folVar10 && brhVar.da == 1 && (hacVar4.f19105e == null || hacVar3.f19105e == null)) {
                    folVar7 = fol.WRAP_CONTENT;
                }
                if (folVar8 == folVar10 && brhVar.by == 1 && (hacVar2.f19105e == null || hacVar.f19105e == null)) {
                    folVar8 = fol.WRAP_CONTENT;
                }
                dza dzaVar = brhVar.be;
                dzaVar.f19646b = folVar7;
                int i3 = brhVar.da;
                dzaVar.f19648d = i3;
                fju fjuVar = brhVar.bi;
                fjuVar.f19646b = folVar8;
                int i4 = brhVar.by;
                fjuVar.f19648d = i4;
                fol folVar11 = fol.MATCH_PARENT;
                Iterator it2 = it;
                if ((folVar7 == folVar11 || folVar7 == fol.FIXED || folVar7 == fol.WRAP_CONTENT) && (folVar8 == folVar11 || folVar8 == fol.FIXED || folVar8 == fol.WRAP_CONTENT)) {
                    fol folVar12 = folVar8;
                    int eb = brhVar.eb();
                    if (folVar7 == folVar11) {
                        eb = (aepVar.eb() - hacVar4.i) - hacVar3.i;
                        folVar7 = fol.FIXED;
                    }
                    int di = brhVar.di();
                    if (folVar12 == folVar11) {
                        int di2 = (aepVar.di() - hacVar2.i) - hacVar.i;
                        folVar = fol.FIXED;
                        arVar = this;
                        i = eb;
                        i2 = di2;
                        folVar2 = folVar7;
                    } else {
                        folVar = folVar12;
                        i = eb;
                        i2 = di;
                        folVar2 = folVar7;
                        arVar = this;
                    }
                    arVar.l(brhVar, folVar2, i, folVar, i2);
                    brhVar.be.f19647c.m(brhVar.eb());
                    brhVar.bi.f19647c.m(brhVar.di());
                    brhVar.bk = true;
                } else {
                    if (folVar7 != folVar10 || (folVar8 != (folVar6 = fol.WRAP_CONTENT) && folVar8 != fol.FIXED)) {
                        folVar3 = folVar8;
                    } else if (i3 == 3) {
                        if (folVar8 == folVar6) {
                            l(brhVar, folVar6, 0, folVar6, 0);
                        }
                        int di3 = brhVar.di();
                        int i5 = (int) ((di3 * brhVar.bq) + 0.5f);
                        fol folVar13 = fol.FIXED;
                        l(brhVar, folVar13, i5, folVar13, di3);
                        brhVar.be.f19647c.m(brhVar.eb());
                        brhVar.bi.f19647c.m(brhVar.di());
                        brhVar.bk = true;
                    } else if (i3 == 1) {
                        l(brhVar, folVar6, 0, folVar8, 0);
                        brhVar.be.f19647c.p = brhVar.eb();
                    } else {
                        folVar3 = folVar8;
                        if (i3 == 2) {
                            fol folVar14 = folVarArr[c2];
                            fol folVar15 = fol.FIXED;
                            if (folVar14 == folVar15 || folVar14 == folVar11) {
                                l(brhVar, folVar15, (int) ((f3 * aepVar.eb()) + 0.5f), folVar3, brhVar.di());
                                brhVar.be.f19647c.m(brhVar.eb());
                                brhVar.bi.f19647c.m(brhVar.di());
                                brhVar.bk = true;
                            }
                        } else if (hacVarArr[c2].f19105e == null || hacVarArr[1].f19105e == null) {
                            l(brhVar, folVar6, 0, folVar3, 0);
                            brhVar.be.f19647c.m(brhVar.eb());
                            brhVar.bi.f19647c.m(brhVar.di());
                            brhVar.bk = true;
                        }
                    }
                    if (folVar3 != folVar10 || (folVar7 != (folVar5 = fol.WRAP_CONTENT) && folVar7 != fol.FIXED)) {
                        folVar4 = folVar3;
                    } else if (i4 == 3) {
                        if (folVar7 == folVar5) {
                            l(brhVar, folVar5, 0, folVar5, 0);
                        }
                        int eb2 = brhVar.eb();
                        float f5 = brhVar.bq;
                        if (brhVar.db == -1) {
                            f5 = f2 / f5;
                        }
                        fol folVar16 = fol.FIXED;
                        l(brhVar, folVar16, eb2, folVar16, (int) ((eb2 * f5) + 0.5f));
                        brhVar.be.f19647c.m(brhVar.eb());
                        brhVar.bi.f19647c.m(brhVar.di());
                        brhVar.bk = true;
                    } else if (i4 == 1) {
                        l(brhVar, folVar7, 0, folVar5, 0);
                        brhVar.bi.f19647c.p = brhVar.di();
                    } else {
                        fol folVar17 = folVar7;
                        if (i4 == 2) {
                            fol folVar18 = folVarArr[1];
                            fol folVar19 = folVar3;
                            fol folVar20 = fol.FIXED;
                            if (folVar18 == folVar20 || folVar18 == folVar11) {
                                l(brhVar, folVar17, brhVar.eb(), folVar20, (int) ((f4 * aepVar.di()) + 0.5f));
                                brhVar.be.f19647c.m(brhVar.eb());
                                brhVar.bi.f19647c.m(brhVar.di());
                                brhVar.bk = true;
                            } else {
                                folVar4 = folVar19;
                                folVar7 = folVar17;
                            }
                        } else {
                            folVar7 = folVar17;
                            fol folVar21 = folVar3;
                            if (hacVarArr[2].f19105e == null || hacVarArr[3].f19105e == null) {
                                l(brhVar, folVar5, 0, folVar21, 0);
                                brhVar.be.f19647c.m(brhVar.eb());
                                brhVar.bi.f19647c.m(brhVar.di());
                                brhVar.bk = true;
                            } else {
                                folVar4 = folVar21;
                            }
                        }
                    }
                    if (folVar7 == folVar10 && folVar4 == folVar10) {
                        if (i3 == 1 || i4 == 1) {
                            fol folVar22 = fol.WRAP_CONTENT;
                            l(brhVar, folVar22, 0, folVar22, 0);
                            brhVar.be.f19647c.p = brhVar.eb();
                            brhVar.bi.f19647c.p = brhVar.di();
                        } else if (i4 == 2 && i3 == 2) {
                            fol folVar23 = folVarArr[c2];
                            fol folVar24 = fol.FIXED;
                            if (folVar23 == folVar24 && folVarArr[1] == folVar24) {
                                l(brhVar, folVar24, (int) ((f3 * aepVar.eb()) + 0.5f), folVar24, (int) ((f4 * aepVar.di()) + 0.5f));
                                brhVar.be.f19647c.m(brhVar.eb());
                                brhVar.bi.f19647c.m(brhVar.di());
                                brhVar.bk = true;
                            }
                        }
                    }
                }
                it = it2;
            }
        }
    }

    public final void n() {
        aep aepVar = this.f10691d;
        ArrayList arrayList = this.f10688a;
        ArrayList arrayList2 = this.f10690c;
        arrayList2.clear();
        aep aepVar2 = this.f10689b;
        aepVar2.be.r();
        aepVar2.bi.r();
        arrayList2.add(aepVar2.be);
        arrayList2.add(aepVar2.bi);
        Iterator it = aepVar2.x.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            brh brhVar = (brh) it.next();
            if (brhVar instanceof aar) {
                cnr cnrVar = new cnr(brhVar);
                brhVar.be.r();
                brhVar.bi.r();
                cnrVar.f19649e = ((aar) brhVar).f9878f;
                arrayList2.add(cnrVar);
            } else {
                if (brhVar.eg()) {
                    if (brhVar.cg == null) {
                        brhVar.cg = new gnk(brhVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(brhVar.cg);
                } else {
                    arrayList2.add(brhVar.be);
                }
                if (brhVar.dk()) {
                    if (brhVar.cr == null) {
                        brhVar.cr = new gnk(brhVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(brhVar.cr);
                } else {
                    arrayList2.add(brhVar.bi);
                }
                if (brhVar instanceof gbi) {
                    arrayList2.add(new or(brhVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList2.addAll(hashSet);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            ((mi) it2.next()).r();
        }
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            mi miVar = (mi) it3.next();
            if (miVar.f19651g != aepVar2) {
                miVar.o();
            }
        }
        arrayList.clear();
        j(aepVar.be, 0, arrayList);
        j(aepVar.bi, 1, arrayList);
        this.f10693f = false;
    }

    public final void o() {
        fgk fgkVar;
        Iterator it = this.f10691d.x.iterator();
        while (it.hasNext()) {
            brh brhVar = (brh) it.next();
            if (!brhVar.bk) {
                fol[] folVarArr = brhVar.ch;
                boolean z = false;
                fol folVar = folVarArr[0];
                fol folVar2 = folVarArr[1];
                int i = brhVar.da;
                int i2 = brhVar.by;
                fol folVar3 = fol.WRAP_CONTENT;
                boolean z2 = folVar == folVar3 || (folVar == fol.MATCH_CONSTRAINT && i == 1);
                if (folVar2 == folVar3 || (folVar2 == fol.MATCH_CONSTRAINT && i2 == 1)) {
                    z = true;
                }
                eeh eehVar = brhVar.be.f19647c;
                boolean z3 = eehVar.j;
                eeh eehVar2 = brhVar.bi.f19647c;
                boolean z4 = eehVar2.j;
                if (z3 && z4) {
                    fol folVar4 = fol.FIXED;
                    l(brhVar, folVar4, eehVar.l, folVar4, eehVar2.l);
                    brhVar.bk = true;
                } else if (z3 && z) {
                    l(brhVar, fol.FIXED, eehVar.l, folVar3, eehVar2.l);
                    if (folVar2 == fol.MATCH_CONSTRAINT) {
                        brhVar.bi.f19647c.p = brhVar.di();
                    } else {
                        brhVar.bi.f19647c.m(brhVar.di());
                        brhVar.bk = true;
                    }
                } else if (z4 && z2) {
                    l(brhVar, folVar3, eehVar.l, fol.FIXED, eehVar2.l);
                    if (folVar == fol.MATCH_CONSTRAINT) {
                        brhVar.be.f19647c.p = brhVar.eb();
                    } else {
                        brhVar.be.f19647c.m(brhVar.eb());
                        brhVar.bk = true;
                    }
                }
                if (brhVar.bk && (fgkVar = brhVar.bi.x) != null) {
                    fgkVar.m(brhVar.bn);
                }
            }
        }
    }
}

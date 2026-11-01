package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class gnk extends mi {
    public final ArrayList w;
    public int x;

    public gnk(brh brhVar, int i) {
        super(brhVar);
        brh brhVar2;
        ArrayList arrayList = new ArrayList();
        this.w = arrayList;
        this.f19649e = i;
        brh brhVar3 = this.f19651g;
        brh dz = brhVar3.dz(i);
        while (true) {
            brhVar2 = brhVar3;
            brhVar3 = dz;
            if (brhVar3 == null) {
                break;
            } else {
                dz = brhVar3.dz(this.f19649e);
            }
        }
        this.f19651g = brhVar2;
        int i2 = this.f19649e;
        arrayList.add(i2 == 0 ? brhVar2.be : i2 == 1 ? brhVar2.bi : null);
        brh dn = brhVar2.dn(this.f19649e);
        while (dn != null) {
            int i3 = this.f19649e;
            arrayList.add(i3 == 0 ? dn.be : i3 == 1 ? dn.bi : null);
            dn = dn.dn(this.f19649e);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            mi miVar = (mi) it.next();
            int i4 = this.f19649e;
            if (i4 == 0) {
                miVar.f19651g.cg = this;
            } else if (i4 == 1) {
                miVar.f19651g.cr = this;
            }
        }
        if (this.f19649e == 0 && ((aep) this.f19651g.bj).f10109ab && arrayList.size() > 1) {
            this.f19651g = ((mi) arrayList.get(arrayList.size() - 1)).f19651g;
        }
        this.x = this.f19649e == 0 ? this.f19651g.cs : this.f19651g.bw;
    }

    @Override // g.mi
    public final boolean n() {
        ArrayList arrayList = this.w;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (!((mi) arrayList.get(i)).n()) {
                return false;
            }
        }
        return true;
    }

    @Override // g.mi
    public final void o() {
        ArrayList arrayList = this.w;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((mi) it.next()).o();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        brh brhVar = ((mi) arrayList.get(0)).f19651g;
        brh brhVar2 = ((mi) arrayList.get(size - 1)).f19651g;
        int i = this.f19649e;
        big bigVar = this.f19650f;
        big bigVar2 = this.f19645a;
        if (i == 0) {
            hac hacVar = brhVar.cw;
            hac hacVar2 = brhVar2.br;
            big l = mi.l(hacVar, 0);
            int n = hacVar.n();
            brh z = z();
            if (z != null) {
                n = z.cw.n();
            }
            if (l != null) {
                mi.m(bigVar2, l, n);
            }
            big l2 = mi.l(hacVar2, 0);
            int n2 = hacVar2.n();
            brh y = y();
            if (y != null) {
                n2 = y.br.n();
            }
            if (l2 != null) {
                mi.m(bigVar, l2, -n2);
            }
        } else {
            hac hacVar3 = brhVar.bx;
            hac hacVar4 = brhVar2.as;
            big l3 = mi.l(hacVar3, 1);
            int n3 = hacVar3.n();
            brh z2 = z();
            if (z2 != null) {
                n3 = z2.bx.n();
            }
            if (l3 != null) {
                mi.m(bigVar2, l3, n3);
            }
            big l4 = mi.l(hacVar4, 1);
            int n4 = hacVar4.n();
            brh y2 = y();
            if (y2 != null) {
                n4 = y2.as.n();
            }
            if (l4 != null) {
                mi.m(bigVar, l4, -n4);
            }
        }
        bigVar2.f11646f = this;
        bigVar.f11646f = this;
    }

    @Override // g.mi
    public final void q() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.w;
            if (i >= arrayList.size()) {
                return;
            }
            ((mi) arrayList.get(i)).q();
            i++;
        }
    }

    @Override // g.mi
    public final void r() {
        this.i = null;
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            ((mi) it.next()).r();
        }
    }

    @Override // g.mi
    public final long s() {
        ArrayList arrayList = this.w;
        int size = arrayList.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            j = r5.f19650f.f11647g + ((mi) arrayList.get(i)).s() + j + r5.f19645a.f11647g;
        }
        return j;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f19649e == 0 ? "horizontal : " : "vertical : ");
        Iterator it = this.w.iterator();
        while (it.hasNext()) {
            mi miVar = (mi) it.next();
            sb.append("<");
            sb.append(miVar);
            sb.append("> ");
        }
        return sb.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:288:0x039e, code lost:
    
        r2 = r2 - r12;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00de  */
    @Override // g.exs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(exs exsVar) {
        int i;
        int i2;
        boolean z;
        float f2;
        int i3;
        int i4;
        int i5;
        float f3;
        int i6;
        int i7;
        float f4;
        int i8;
        int i9;
        int i10;
        boolean z2;
        int i11;
        big bigVar = this.f19645a;
        if (bigVar.j) {
            big bigVar2 = this.f19650f;
            if (bigVar2.j) {
                brh brhVar = this.f19651g.bj;
                boolean z3 = brhVar instanceof aep ? ((aep) brhVar).f10109ab : false;
                int i12 = bigVar2.l - bigVar.l;
                ArrayList arrayList = this.w;
                int size = arrayList.size();
                int i13 = 0;
                while (true) {
                    i = -1;
                    i2 = 8;
                    if (i13 >= size) {
                        i13 = -1;
                        break;
                    } else if (((mi) arrayList.get(i13)).f19651g.aq != 8) {
                        break;
                    } else {
                        i13++;
                    }
                }
                int i14 = size - 1;
                int i15 = i14;
                while (true) {
                    if (i15 < 0) {
                        break;
                    }
                    if (((mi) arrayList.get(i15)).f19651g.aq != 8) {
                        i = i15;
                        break;
                    }
                    i15--;
                }
                int i16 = 0;
                while (i16 < 2) {
                    f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    i4 = 0;
                    int i17 = 0;
                    int i18 = 0;
                    int i19 = 0;
                    f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                    while (i17 < size) {
                        mi miVar = (mi) arrayList.get(i17);
                        brh brhVar2 = miVar.f19651g;
                        boolean z4 = z3;
                        if (brhVar2.aq != i2) {
                            i19++;
                            if (i17 > 0 && i17 >= i13) {
                                i4 += miVar.f19645a.f11647g;
                            }
                            eeh eehVar = miVar.f19647c;
                            int i20 = eehVar.l;
                            int i21 = i4;
                            boolean z5 = miVar.f19646b != fol.MATCH_CONSTRAINT;
                            if (z5) {
                                int i22 = this.f19649e;
                                if (i22 == 0 && !brhVar2.be.f19647c.j) {
                                    return;
                                }
                                if (i22 == 1 && !brhVar2.bi.f19647c.j) {
                                    return;
                                } else {
                                    z2 = z5;
                                }
                            } else {
                                z2 = z5;
                                if (miVar.f19648d == 1 && i16 == 0) {
                                    i11 = eehVar.p;
                                    i18++;
                                } else if (eehVar.j) {
                                    i11 = i20;
                                }
                                z2 = true;
                                if (z2) {
                                    i18++;
                                    float f5 = brhVar2.cu[this.f19649e];
                                    if (f5 >= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                                        f3 += f5;
                                    }
                                    i4 = i21;
                                } else {
                                    i4 = i21 + i11;
                                }
                                if (i17 < i14 && i17 < i) {
                                    i4 += -miVar.f19650f.f11647g;
                                }
                            }
                            i11 = i20;
                            if (z2) {
                            }
                            if (i17 < i14) {
                                i4 += -miVar.f19650f.f11647g;
                            }
                        }
                        i17++;
                        z3 = z4;
                        i2 = 8;
                    }
                    z = z3;
                    if (i4 < i12 || i18 == 0) {
                        i3 = i18;
                        i5 = i19;
                        break;
                    } else {
                        i16++;
                        z3 = z;
                        i2 = 8;
                    }
                }
                z = z3;
                f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                i3 = 0;
                i4 = 0;
                i5 = 0;
                f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                int i23 = bigVar.l;
                if (z) {
                    i23 = bigVar2.l;
                }
                if (i4 > i12) {
                    i23 = z ? i23 + ((int) (((i4 - i12) / 2.0f) + 0.5f)) : i23 - ((int) (((i4 - i12) / 2.0f) + 0.5f));
                }
                if (i3 > 0) {
                    float f6 = i12 - i4;
                    int i24 = (int) ((f6 / i3) + 0.5f);
                    int i25 = 0;
                    int i26 = 0;
                    while (i25 < size) {
                        mi miVar2 = (mi) arrayList.get(i25);
                        int i27 = i23;
                        brh brhVar3 = miVar2.f19651g;
                        int i28 = i3;
                        eeh eehVar2 = miVar2.f19647c;
                        int i29 = i4;
                        float f7 = f6;
                        if (brhVar3.aq == 8 || miVar2.f19646b != fol.MATCH_CONSTRAINT || eehVar2.j) {
                            i10 = i24;
                        } else {
                            int i30 = f3 > f2 ? (int) (((brhVar3.cu[this.f19649e] * f7) / f3) + 0.5f) : i24;
                            if (this.f19649e == 0) {
                                i8 = brhVar3.bs;
                                i9 = brhVar3.bl;
                            } else {
                                i8 = brhVar3.aw;
                                i9 = brhVar3.cy;
                            }
                            i10 = i24;
                            int max = Math.max(i9, miVar2.f19648d == 1 ? Math.min(i30, eehVar2.p) : i30);
                            if (i8 > 0) {
                                max = Math.min(i8, max);
                            }
                            if (max != i30) {
                                i26++;
                                i30 = max;
                            }
                            eehVar2.m(i30);
                        }
                        i25++;
                        i23 = i27;
                        i3 = i28;
                        i4 = i29;
                        f6 = f7;
                        i24 = i10;
                    }
                    i6 = i23;
                    int i31 = i3;
                    int i32 = i4;
                    f4 = 0.5f;
                    if (i26 > 0) {
                        i3 = i31 - i26;
                        i4 = 0;
                        for (int i33 = 0; i33 < size; i33++) {
                            mi miVar3 = (mi) arrayList.get(i33);
                            if (miVar3.f19651g.aq != 8) {
                                if (i33 > 0 && i33 >= i13) {
                                    i4 += miVar3.f19645a.f11647g;
                                }
                                i4 += miVar3.f19647c.l;
                                if (i33 < i14 && i33 < i) {
                                    i4 += -miVar3.f19650f.f11647g;
                                }
                            }
                        }
                    } else {
                        i3 = i31;
                        i4 = i32;
                    }
                    i7 = 2;
                    if (this.x == 2 && i26 == 0) {
                        this.x = 0;
                    }
                } else {
                    i6 = i23;
                    i7 = 2;
                    f4 = 0.5f;
                }
                if (i4 > i12) {
                    this.x = i7;
                }
                if (i5 > 0 && i3 == 0 && i13 == i) {
                    this.x = i7;
                }
                int i34 = this.x;
                if (i34 == 1) {
                    int i35 = i5 > 1 ? (i12 - i4) / (i5 - 1) : i5 == 1 ? (i12 - i4) / 2 : 0;
                    if (i3 > 0) {
                        i35 = 0;
                    }
                    int i36 = i6;
                    for (int i37 = 0; i37 < size; i37++) {
                        mi miVar4 = (mi) arrayList.get(z ? size - (i37 + 1) : i37);
                        brh brhVar4 = miVar4.f19651g;
                        big bigVar3 = miVar4.f19650f;
                        big bigVar4 = miVar4.f19645a;
                        if (brhVar4.aq == 8) {
                            bigVar4.m(i36);
                            bigVar3.m(i36);
                        } else {
                            if (i37 > 0) {
                                i36 = z ? i36 - i35 : i36 + i35;
                            }
                            if (i37 > 0 && i37 >= i13) {
                                i36 = z ? i36 - bigVar4.f11647g : i36 + bigVar4.f11647g;
                            }
                            if (z) {
                                bigVar3.m(i36);
                            } else {
                                bigVar4.m(i36);
                            }
                            eeh eehVar3 = miVar4.f19647c;
                            int i38 = eehVar3.l;
                            if (miVar4.f19646b == fol.MATCH_CONSTRAINT && miVar4.f19648d == 1) {
                                i38 = eehVar3.p;
                            }
                            i36 = z ? i36 - i38 : i36 + i38;
                            if (z) {
                                bigVar4.m(i36);
                            } else {
                                bigVar3.m(i36);
                            }
                            miVar4.j = true;
                            if (i37 < i14 && i37 < i) {
                                i36 = z ? i36 - (-bigVar3.f11647g) : i36 + (-bigVar3.f11647g);
                            }
                        }
                    }
                    return;
                }
                if (i34 == 0) {
                    int i39 = (i12 - i4) / (i5 + 1);
                    if (i3 > 0) {
                        i39 = 0;
                    }
                    int i40 = i6;
                    for (int i41 = 0; i41 < size; i41++) {
                        mi miVar5 = (mi) arrayList.get(z ? size - (i41 + 1) : i41);
                        brh brhVar5 = miVar5.f19651g;
                        big bigVar5 = miVar5.f19650f;
                        big bigVar6 = miVar5.f19645a;
                        if (brhVar5.aq == 8) {
                            bigVar6.m(i40);
                            bigVar5.m(i40);
                        } else {
                            int i42 = z ? i40 - i39 : i40 + i39;
                            if (i41 > 0 && i41 >= i13) {
                                i42 = z ? i42 - bigVar6.f11647g : i42 + bigVar6.f11647g;
                            }
                            if (z) {
                                bigVar5.m(i42);
                            } else {
                                bigVar6.m(i42);
                            }
                            eeh eehVar4 = miVar5.f19647c;
                            int i43 = eehVar4.l;
                            if (miVar5.f19646b == fol.MATCH_CONSTRAINT && miVar5.f19648d == 1) {
                                i43 = Math.min(i43, eehVar4.p);
                            }
                            i40 = z ? i42 - i43 : i42 + i43;
                            if (z) {
                                bigVar6.m(i40);
                            } else {
                                bigVar5.m(i40);
                            }
                            if (i41 < i14 && i41 < i) {
                                i40 = z ? i40 - (-bigVar5.f11647g) : i40 + (-bigVar5.f11647g);
                            }
                        }
                    }
                    return;
                }
                if (i34 == 2) {
                    float f8 = this.f19649e == 0 ? this.f19651g.cp : this.f19651g.ct;
                    if (z) {
                        f8 = 1.0f - f8;
                    }
                    int i44 = (int) (((i12 - i4) * f8) + f4);
                    if (i44 < 0 || i3 > 0) {
                        i44 = 0;
                    }
                    int i45 = z ? i6 - i44 : i6 + i44;
                    for (int i46 = 0; i46 < size; i46++) {
                        mi miVar6 = (mi) arrayList.get(z ? size - (i46 + 1) : i46);
                        brh brhVar6 = miVar6.f19651g;
                        big bigVar7 = miVar6.f19650f;
                        big bigVar8 = miVar6.f19645a;
                        if (brhVar6.aq == 8) {
                            bigVar8.m(i45);
                            bigVar7.m(i45);
                        } else {
                            if (i46 > 0 && i46 >= i13) {
                                i45 = z ? i45 - bigVar8.f11647g : i45 + bigVar8.f11647g;
                            }
                            if (z) {
                                bigVar7.m(i45);
                            } else {
                                bigVar8.m(i45);
                            }
                            eeh eehVar5 = miVar6.f19647c;
                            int i47 = eehVar5.l;
                            if (miVar6.f19646b == fol.MATCH_CONSTRAINT && miVar6.f19648d == 1) {
                                i47 = eehVar5.p;
                            }
                            i45 += i47;
                            if (z) {
                                bigVar8.m(i45);
                            } else {
                                bigVar7.m(i45);
                            }
                            if (i46 < i14 && i46 < i) {
                                i45 = z ? i45 - (-bigVar7.f11647g) : i45 + (-bigVar7.f11647g);
                            }
                        }
                    }
                }
            }
        }
    }

    public final brh y() {
        ArrayList arrayList = this.w;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            brh brhVar = ((mi) arrayList.get(size)).f19651g;
            if (brhVar.aq != 8) {
                return brhVar;
            }
        }
        return null;
    }

    public final brh z() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.w;
            if (i >= arrayList.size()) {
                return null;
            }
            brh brhVar = ((mi) arrayList.get(i)).f19651g;
            if (brhVar.aq != 8) {
                return brhVar;
            }
            i++;
        }
    }
}

package g;

/* loaded from: classes.dex */
public final class afu {

    /* renamed from: a, reason: collision with root package name */
    public int f10154a;

    /* renamed from: b, reason: collision with root package name */
    public int f10155b;

    /* renamed from: e, reason: collision with root package name */
    public hac f10158e;

    /* renamed from: g, reason: collision with root package name */
    public hac f10160g;
    public int h;
    public hac i;
    public int l;
    public int n;
    public int o;
    public hac q;
    public final /* synthetic */ dbr r;
    public brh m = null;
    public int p = 0;

    /* renamed from: f, reason: collision with root package name */
    public int f10159f = 0;
    public int k = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f10157d = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f10156c = 0;
    public int j = 0;

    public afu(dbr dbrVar, int i, hac hacVar, hac hacVar2, hac hacVar3, hac hacVar4, int i2) {
        this.r = dbrVar;
        this.h = i;
        this.f10158e = hacVar;
        this.f10160g = hacVar2;
        this.i = hacVar3;
        this.q = hacVar4;
        this.f10154a = dbrVar.aa;
        this.l = dbrVar.al;
        this.n = dbrVar.eo;
        this.f10155b = dbrVar.n;
        this.o = i2;
    }

    public final int s() {
        return this.h == 0 ? this.f10159f - this.r.f13926ab : this.f10159f;
    }

    public final void t(int i) {
        int i2 = this.j;
        if (i2 == 0) {
            return;
        }
        int i3 = this.f10156c;
        int i4 = i / i2;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = this.f10157d;
            int i7 = i6 + i5;
            dbr dbrVar = this.r;
            if (i7 >= dbrVar.f13930f) {
                break;
            }
            brh brhVar = dbrVar.ej[i6 + i5];
            if (this.h == 0) {
                if (brhVar != null) {
                    fol[] folVarArr = brhVar.ch;
                    if (folVarArr[0] == fol.MATCH_CONSTRAINT && brhVar.da == 0) {
                        dbrVar.er(brhVar, fol.FIXED, i4, folVarArr[1], brhVar.di());
                    }
                }
            } else if (brhVar != null) {
                fol[] folVarArr2 = brhVar.ch;
                if (folVarArr2[1] == fol.MATCH_CONSTRAINT && brhVar.by == 0) {
                    int i8 = i4;
                    dbrVar.er(brhVar, folVarArr2[0], brhVar.eb(), fol.FIXED, i8);
                    i4 = i8;
                }
            }
        }
        this.f10159f = 0;
        this.k = 0;
        this.m = null;
        this.p = 0;
        int i9 = this.f10156c;
        for (int i10 = 0; i10 < i9; i10++) {
            int i11 = this.f10157d + i10;
            dbr dbrVar2 = this.r;
            if (i11 >= dbrVar2.f13930f) {
                return;
            }
            brh brhVar2 = dbrVar2.ej[i11];
            if (this.h == 0) {
                int eb = brhVar2.eb();
                int i12 = dbrVar2.f13926ab;
                if (brhVar2.aq == 8) {
                    i12 = 0;
                }
                this.f10159f = eb + i12 + this.f10159f;
                int et = dbrVar2.et(brhVar2, this.o);
                if (this.m == null || this.p < et) {
                    this.m = brhVar2;
                    this.p = et;
                    this.k = et;
                }
            } else {
                int es = dbrVar2.es(brhVar2, this.o);
                int et2 = dbrVar2.et(brhVar2, this.o);
                int i13 = dbrVar2.w;
                if (brhVar2.aq == 8) {
                    i13 = 0;
                }
                this.k = et2 + i13 + this.k;
                if (this.m == null || this.p < es) {
                    this.m = brhVar2;
                    this.p = es;
                    this.f10159f = es;
                }
            }
        }
    }

    public final void u(brh brhVar) {
        int i = this.h;
        dbr dbrVar = this.r;
        if (i == 0) {
            int es = dbrVar.es(brhVar, this.o);
            if (brhVar.ch[0] == fol.MATCH_CONSTRAINT) {
                this.j++;
                es = 0;
            }
            this.f10159f = es + (brhVar.aq != 8 ? dbrVar.f13926ab : 0) + this.f10159f;
            int et = dbrVar.et(brhVar, this.o);
            if (this.m == null || this.p < et) {
                this.m = brhVar;
                this.p = et;
                this.k = et;
            }
        } else {
            int es2 = dbrVar.es(brhVar, this.o);
            int et2 = dbrVar.et(brhVar, this.o);
            if (brhVar.ch[1] == fol.MATCH_CONSTRAINT) {
                this.j++;
                et2 = 0;
            }
            this.k = et2 + (brhVar.aq != 8 ? dbrVar.w : 0) + this.k;
            if (this.m == null || this.p < es2) {
                this.m = brhVar;
                this.p = es2;
                this.f10159f = es2;
            }
        }
        this.f10156c++;
    }

    public final void v(int i, hac hacVar, hac hacVar2, hac hacVar3, hac hacVar4, int i2, int i3, int i4, int i5, int i6) {
        this.h = i;
        this.f10158e = hacVar;
        this.f10160g = hacVar2;
        this.i = hacVar3;
        this.q = hacVar4;
        this.f10154a = i2;
        this.l = i3;
        this.n = i4;
        this.f10155b = i5;
        this.o = i6;
    }

    public final void w(boolean z, int i, boolean z2) {
        dbr dbrVar;
        int i2;
        int i3;
        int i4;
        brh brhVar;
        boolean z3;
        int i5;
        int i6;
        float f2;
        float f3;
        float f4;
        int i7;
        float f5;
        float f6;
        int i8;
        int i9 = this.f10156c;
        int i10 = 0;
        while (true) {
            dbrVar = this.r;
            if (i10 >= i9 || (i8 = this.f10157d + i10) >= dbrVar.f13930f) {
                break;
            }
            brh brhVar2 = dbrVar.ej[i8];
            if (brhVar2 != null) {
                brhVar2.dr();
            }
            i10++;
        }
        if (i9 == 0 || this.m == null) {
            return;
        }
        boolean z4 = z2 && i == 0;
        int i11 = -1;
        int i12 = -1;
        for (int i13 = 0; i13 < i9; i13++) {
            int i14 = this.f10157d + (z ? (i9 - 1) - i13 : i13);
            if (i14 >= dbrVar.f13930f) {
                break;
            }
            brh brhVar3 = dbrVar.ej[i14];
            if (brhVar3 != null && brhVar3.aq == 0) {
                if (i11 == -1) {
                    i11 = i13;
                }
                i12 = i13;
            }
        }
        if (this.h == 0) {
            brh brhVar4 = this.m;
            brhVar4.bw = dbrVar.q;
            hac hacVar = brhVar4.as;
            hac hacVar2 = brhVar4.bx;
            int i15 = this.l;
            if (i > 0) {
                i15 += dbrVar.w;
            }
            hacVar2.o(this.f10160g, i15);
            if (z2) {
                hacVar.o(this.q, this.f10155b);
            }
            if (i > 0) {
                this.f10160g.f19102b.as.o(hacVar2, 0);
            }
            if (dbrVar.l == 3 && !brhVar4.cx) {
                for (int i16 = 0; i16 < i9; i16++) {
                    int i17 = this.f10157d + (z ? (i9 - 1) - i16 : i16);
                    if (i17 >= dbrVar.f13930f) {
                        break;
                    }
                    brhVar = dbrVar.ej[i17];
                    if (brhVar.cx) {
                        break;
                    }
                }
            }
            brhVar = brhVar4;
            brh brhVar5 = null;
            int i18 = 0;
            while (i18 < i9) {
                int i19 = z ? (i9 - 1) - i18 : i18;
                int i20 = this.f10157d + i19;
                if (i20 >= dbrVar.f13930f) {
                    return;
                }
                brh brhVar6 = dbrVar.ej[i20];
                if (brhVar6 == null) {
                    i6 = i9;
                    z3 = z4;
                    i5 = i12;
                } else {
                    hac hacVar3 = brhVar6.as;
                    hac hacVar4 = brhVar6.bx;
                    hac hacVar5 = brhVar6.cw;
                    z3 = z4;
                    if (i18 == 0) {
                        i5 = i12;
                        brhVar6.dw(hacVar5, this.f10158e, this.f10154a);
                    } else {
                        i5 = i12;
                    }
                    if (i19 == 0) {
                        int i21 = dbrVar.ek;
                        if (z) {
                            f2 = 1.0f;
                            f3 = 1.0f - dbrVar.p;
                        } else {
                            f2 = 1.0f;
                            f3 = dbrVar.p;
                        }
                        if (this.f10157d == 0) {
                            i7 = dbrVar.z;
                            f4 = f3;
                            if (i7 != -1) {
                                if (z) {
                                    f6 = dbrVar.f13929d;
                                    f5 = f2 - f6;
                                    brhVar6.cs = i7;
                                    brhVar6.cp = f5;
                                } else {
                                    f5 = dbrVar.f13929d;
                                    brhVar6.cs = i7;
                                    brhVar6.cp = f5;
                                }
                            }
                        } else {
                            f4 = f3;
                        }
                        if (!z2 || (i7 = dbrVar.y) == -1) {
                            i7 = i21;
                            f5 = f4;
                        } else if (z) {
                            f6 = dbrVar.f13927b;
                            f5 = f2 - f6;
                        } else {
                            f5 = dbrVar.f13927b;
                        }
                        brhVar6.cs = i7;
                        brhVar6.cp = f5;
                    }
                    if (i18 == i9 - 1) {
                        i6 = i9;
                        brhVar6.dw(brhVar6.br, this.i, this.n);
                    } else {
                        i6 = i9;
                    }
                    if (brhVar5 != null) {
                        hac hacVar6 = brhVar5.br;
                        hacVar5.o(hacVar6, dbrVar.f13926ab);
                        if (i18 == i11) {
                            int i22 = this.f10154a;
                            if (hacVar5.j()) {
                                hacVar5.f19101a = i22;
                            }
                        }
                        hacVar6.o(hacVar5, 0);
                        if (i18 == i5 + 1) {
                            int i23 = this.n;
                            if (hacVar6.j()) {
                                hacVar6.f19101a = i23;
                            }
                        }
                    }
                    if (brhVar6 != brhVar4) {
                        int i24 = dbrVar.l;
                        if (i24 == 3 && brhVar.cx && brhVar6 != brhVar && brhVar6.cx) {
                            brhVar6.bp.o(brhVar.bp, 0);
                        } else if (i24 == 0) {
                            hacVar4.o(hacVar2, 0);
                        } else if (i24 == 1) {
                            hacVar3.o(hacVar, 0);
                        } else if (z3) {
                            hacVar4.o(this.f10160g, this.l);
                            hacVar3.o(this.q, this.f10155b);
                        } else {
                            hacVar4.o(hacVar2, 0);
                            hacVar3.o(hacVar, 0);
                        }
                    }
                    brhVar5 = brhVar6;
                }
                i18++;
                z4 = z3;
                i12 = i5;
                i9 = i6;
            }
            return;
        }
        int i25 = i9;
        boolean z5 = z4;
        int i26 = i12;
        brh brhVar7 = this.m;
        brhVar7.cs = dbrVar.ek;
        hac hacVar7 = brhVar7.cw;
        hac hacVar8 = brhVar7.br;
        int i27 = this.f10154a;
        if (i > 0) {
            i27 += dbrVar.f13926ab;
        }
        if (z) {
            hacVar8.o(this.i, i27);
            if (z2) {
                hacVar7.o(this.f10158e, this.n);
            }
            if (i > 0) {
                this.i.f19102b.cw.o(hacVar8, 0);
            }
        } else {
            hacVar7.o(this.f10158e, i27);
            if (z2) {
                hacVar8.o(this.i, this.n);
            }
            if (i > 0) {
                this.f10158e.f19102b.br.o(hacVar7, 0);
            }
        }
        int i28 = 0;
        brh brhVar8 = null;
        while (true) {
            int i29 = i25;
            if (i28 >= i29 || (i2 = this.f10157d + i28) >= dbrVar.f13930f) {
                return;
            }
            brh brhVar9 = dbrVar.ej[i2];
            if (brhVar9 == null) {
                i25 = i29;
            } else {
                hac hacVar9 = brhVar9.bx;
                hac hacVar10 = brhVar9.br;
                hac hacVar11 = brhVar9.cw;
                if (i28 == 0) {
                    brhVar9.dw(hacVar9, this.f10160g, this.l);
                    int i30 = dbrVar.q;
                    float f7 = dbrVar.f13925a;
                    if (this.f10157d == 0) {
                        i4 = dbrVar.ah;
                        i25 = i29;
                        i3 = -1;
                        if (i4 != -1) {
                            f7 = dbrVar.v;
                            i30 = i4;
                            brhVar9.bw = i30;
                            brhVar9.ct = f7;
                        }
                    } else {
                        i25 = i29;
                        i3 = -1;
                    }
                    if (z2 && (i4 = dbrVar.ep) != i3) {
                        f7 = dbrVar.f13928c;
                        i30 = i4;
                    }
                    brhVar9.bw = i30;
                    brhVar9.ct = f7;
                } else {
                    i25 = i29;
                }
                if (i28 == i25 - 1) {
                    brhVar9.dw(brhVar9.as, this.q, this.f10155b);
                }
                if (brhVar8 != null) {
                    hac hacVar12 = brhVar8.as;
                    hacVar9.o(hacVar12, dbrVar.w);
                    if (i28 == i11) {
                        int i31 = this.l;
                        if (hacVar9.j()) {
                            hacVar9.f19101a = i31;
                        }
                    }
                    hacVar12.o(hacVar9, 0);
                    if (i28 == i26 + 1) {
                        int i32 = this.f10155b;
                        if (hacVar12.j()) {
                            hacVar12.f19101a = i32;
                        }
                    }
                }
                if (brhVar9 != brhVar7) {
                    if (z) {
                        int i33 = dbrVar.ac;
                        if (i33 == 0) {
                            hacVar10.o(hacVar8, 0);
                        } else if (i33 == 1) {
                            hacVar11.o(hacVar7, 0);
                        } else if (i33 == 2) {
                            hacVar11.o(hacVar7, 0);
                            hacVar10.o(hacVar8, 0);
                        }
                    } else {
                        int i34 = dbrVar.ac;
                        if (i34 == 0) {
                            hacVar11.o(hacVar7, 0);
                        } else if (i34 == 1) {
                            hacVar10.o(hacVar8, 0);
                        } else if (i34 == 2) {
                            if (z5) {
                                hacVar11.o(this.f10158e, this.f10154a);
                                hacVar10.o(this.i, this.n);
                            } else {
                                hacVar11.o(hacVar7, 0);
                                hacVar10.o(hacVar8, 0);
                            }
                        }
                        brhVar8 = brhVar9;
                    }
                }
                brhVar8 = brhVar9;
            }
            i28++;
        }
    }

    public final int x() {
        return this.h == 1 ? this.k - this.r.w : this.k;
    }
}

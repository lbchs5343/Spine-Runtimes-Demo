package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class dbr extends gbi {

    /* renamed from: a, reason: collision with root package name */
    public float f13925a;
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public int f13926ab;
    public int ac;
    public brh[] ae;
    public int ag;
    public int ah;
    public int aj;
    public int al;

    /* renamed from: b, reason: collision with root package name */
    public float f13927b;

    /* renamed from: c, reason: collision with root package name */
    public float f13928c;

    /* renamed from: d, reason: collision with root package name */
    public float f13929d;
    public brh[] ej;
    public int ek;
    public brh[] el;
    public int em;
    public int en;
    public int eo;
    public int ep;
    public int eq;

    /* renamed from: f, reason: collision with root package name */
    public int f13930f;
    public dcu h;
    public int l;
    public int n;
    public int o;
    public float p;
    public int q;
    public ArrayList r;
    public int[] s;
    public int t;
    public boolean u;
    public float v;
    public int w;
    public gri x;
    public int y;
    public int z;

    public final void er(brh brhVar, fol folVar, int i, fol folVar2, int i2) {
        gri griVar;
        brh brhVar2;
        dcu dcuVar = this.h;
        while (true) {
            griVar = this.x;
            if (griVar != null || (brhVar2 = this.bj) == null) {
                break;
            } else {
                this.x = ((aep) brhVar2).y;
            }
        }
        dcuVar.f13985d = folVar;
        dcuVar.f13988g = folVar2;
        dcuVar.i = i;
        dcuVar.f13983b = i2;
        griVar.j(brhVar, dcuVar);
        brhVar.ed(dcuVar.f13984c);
        brhVar.dj(dcuVar.f13986e);
        brhVar.cx = dcuVar.f13982a;
        brhVar.ee(dcuVar.j);
    }

    public final int es(brh brhVar, int i) {
        brh brhVar2;
        if (brhVar == null) {
            return 0;
        }
        fol[] folVarArr = brhVar.ch;
        if (folVarArr[0] == fol.MATCH_CONSTRAINT) {
            int i2 = brhVar.da;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (brhVar.bu * i);
                if (i3 != brhVar.eb()) {
                    brhVar.cz = true;
                    er(brhVar, fol.FIXED, i3, folVarArr[1], brhVar.di());
                }
                return i3;
            }
            brhVar2 = brhVar;
            if (i2 == 1) {
                return brhVar2.eb();
            }
            if (i2 == 3) {
                return (int) ((brhVar2.di() * brhVar2.bq) + 0.5f);
            }
        } else {
            brhVar2 = brhVar;
        }
        return brhVar2.eb();
    }

    public final int et(brh brhVar, int i) {
        brh brhVar2;
        if (brhVar == null) {
            return 0;
        }
        fol[] folVarArr = brhVar.ch;
        if (folVarArr[1] == fol.MATCH_CONSTRAINT) {
            int i2 = brhVar.by;
            if (i2 == 0) {
                return 0;
            }
            if (i2 == 2) {
                int i3 = (int) (brhVar.am * i);
                if (i3 != brhVar.di()) {
                    brhVar.cz = true;
                    er(brhVar, folVarArr[0], brhVar.eb(), fol.FIXED, i3);
                }
                return i3;
            }
            brhVar2 = brhVar;
            if (i2 == 1) {
                return brhVar2.di();
            }
            if (i2 == 3) {
                return (int) ((brhVar2.eb() * brhVar2.bq) + 0.5f);
            }
        } else {
            brhVar2 = brhVar;
        }
        return brhVar2.di();
    }

    @Override // g.gbi
    public final void eu() {
        for (int i = 0; i < this.ev; i++) {
            brh brhVar = this.ew[i];
            if (brhVar != null) {
                brhVar.f12070cn = true;
            }
        }
    }

    @Override // g.brh
    public final void g(bwo bwoVar, boolean z) {
        brh brhVar;
        float f2;
        int i;
        ArrayList arrayList = this.r;
        super.g(bwoVar, z);
        brh brhVar2 = this.bj;
        boolean z2 = brhVar2 != null && ((aep) brhVar2).f10109ab;
        int i2 = this.em;
        if (i2 != 0) {
            if (i2 == 1) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    ((afu) arrayList.get(i3)).w(z2, i3, i3 == size + (-1));
                    i3++;
                }
            } else if (i2 != 2) {
                if (i2 == 3) {
                    int size2 = arrayList.size();
                    int i4 = 0;
                    while (i4 < size2) {
                        ((afu) arrayList.get(i4)).w(z2, i4, i4 == size2 + (-1));
                        i4++;
                    }
                }
            } else if (this.s != null && this.el != null && this.ae != null) {
                for (int i5 = 0; i5 < this.f13930f; i5++) {
                    this.ej[i5].dr();
                }
                int[] iArr = this.s;
                int i6 = iArr[0];
                int i7 = iArr[1];
                float f3 = this.p;
                brh brhVar3 = null;
                int i8 = 0;
                while (i8 < i6) {
                    if (z2) {
                        i = (i6 - i8) - 1;
                        f2 = 1.0f - this.p;
                    } else {
                        f2 = f3;
                        i = i8;
                    }
                    brh brhVar4 = this.el[i];
                    if (brhVar4 != null) {
                        hac hacVar = brhVar4.cw;
                        if (brhVar4.aq != 8) {
                            if (i8 == 0) {
                                brhVar4.dw(hacVar, this.cw, this.aa);
                                brhVar4.cs = this.ek;
                                brhVar4.cp = f2;
                            }
                            if (i8 == i6 - 1) {
                                brhVar4.dw(brhVar4.br, this.br, this.eo);
                            }
                            if (i8 > 0 && brhVar3 != null) {
                                hac hacVar2 = brhVar3.br;
                                brhVar4.dw(hacVar, hacVar2, this.f13926ab);
                                brhVar3.dw(hacVar2, hacVar, 0);
                            }
                            brhVar3 = brhVar4;
                        }
                    }
                    i8++;
                    f3 = f2;
                }
                for (int i9 = 0; i9 < i7; i9++) {
                    brh brhVar5 = this.ae[i9];
                    if (brhVar5 != null) {
                        hac hacVar3 = brhVar5.bx;
                        if (brhVar5.aq != 8) {
                            if (i9 == 0) {
                                brhVar5.dw(hacVar3, this.bx, this.al);
                                brhVar5.bw = this.q;
                                brhVar5.ct = this.f13925a;
                            }
                            if (i9 == i7 - 1) {
                                brhVar5.dw(brhVar5.as, this.as, this.n);
                            }
                            if (i9 > 0 && brhVar3 != null) {
                                hac hacVar4 = brhVar3.as;
                                brhVar5.dw(hacVar3, hacVar4, this.w);
                                brhVar3.dw(hacVar4, hacVar3, 0);
                            }
                            brhVar3 = brhVar5;
                        }
                    }
                }
                for (int i10 = 0; i10 < i6; i10++) {
                    for (int i11 = 0; i11 < i7; i11++) {
                        int i12 = (i11 * i6) + i10;
                        if (this.ag == 1) {
                            i12 = (i10 * i7) + i11;
                        }
                        brh[] brhVarArr = this.ej;
                        if (i12 < brhVarArr.length && (brhVar = brhVarArr[i12]) != null && brhVar.aq != 8) {
                            brh brhVar6 = this.el[i10];
                            brh brhVar7 = this.ae[i11];
                            if (brhVar != brhVar6) {
                                brhVar.dw(brhVar.cw, brhVar6.cw, 0);
                                brhVar.dw(brhVar.br, brhVar6.br, 0);
                            }
                            if (brhVar != brhVar7) {
                                brhVar.dw(brhVar.bx, brhVar7.bx, 0);
                                brhVar.dw(brhVar.as, brhVar7.as, 0);
                            }
                        }
                    }
                }
            }
        } else if (arrayList.size() > 0) {
            ((afu) arrayList.get(0)).w(z2, 0, true);
        }
        this.u = false;
    }
}

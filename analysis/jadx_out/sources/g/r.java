package g;

/* loaded from: classes.dex */
public final class r extends gbi {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19885a;

    /* renamed from: b, reason: collision with root package name */
    public int f19886b;

    /* renamed from: c, reason: collision with root package name */
    public int f19887c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f19888d;

    @Override // g.brh
    public final boolean e() {
        return this.f19888d;
    }

    public final int f() {
        int i = this.f19886b;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    @Override // g.brh
    public final void g(bwo bwoVar, boolean z) {
        boolean z2;
        int i;
        int i2;
        hac[] hacVarArr = this.ax;
        hac hacVar = this.cw;
        hacVarArr[0] = hacVar;
        int i3 = 2;
        hac hacVar2 = this.bx;
        hacVarArr[2] = hacVar2;
        hac hacVar3 = this.br;
        hacVarArr[1] = hacVar3;
        hac hacVar4 = this.as;
        hacVarArr[3] = hacVar4;
        for (hac hacVar5 : hacVarArr) {
            hacVar5.f19106f = bwoVar.t(hacVar5);
        }
        int i4 = this.f19886b;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        hac hacVar6 = hacVarArr[i4];
        if (!this.f19888d) {
            h();
        }
        if (this.f19888d) {
            this.f19888d = false;
            int i5 = this.f19886b;
            if (i5 == 0 || i5 == 1) {
                bwoVar.v(hacVar.f19106f, this.cv);
                bwoVar.v(hacVar3.f19106f, this.cv);
                return;
            } else {
                if (i5 == 2 || i5 == 3) {
                    bwoVar.v(hacVar2.f19106f, this.cb);
                    bwoVar.v(hacVar4.f19106f, this.cb);
                    return;
                }
                return;
            }
        }
        for (int i6 = 0; i6 < this.ev; i6++) {
            brh brhVar = this.ew[i6];
            if ((this.f19885a || brhVar.j()) && ((((i2 = this.f19886b) == 0 || i2 == 1) && brhVar.ch[0] == fol.MATCH_CONSTRAINT && brhVar.cw.f19105e != null && brhVar.br.f19105e != null) || ((i2 == 2 || i2 == 3) && brhVar.ch[1] == fol.MATCH_CONSTRAINT && brhVar.bx.f19105e != null && brhVar.as.f19105e != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = hacVar.u() || hacVar3.u();
        boolean z4 = hacVar2.u() || hacVar4.u();
        int i7 = !(!z2 && (((i = this.f19886b) == 0 && z3) || ((i == 2 && z4) || ((i == 1 && z3) || (i == 3 && z4))))) ? 4 : 5;
        int i8 = 0;
        while (i8 < this.ev) {
            brh brhVar2 = this.ew[i8];
            if (this.f19885a || brhVar2.j()) {
                crb t = bwoVar.t(brhVar2.ax[this.f19886b]);
                hac[] hacVarArr2 = brhVar2.ax;
                int i9 = this.f19886b;
                hac hacVar7 = hacVarArr2[i9];
                hacVar7.f19106f = t;
                hac hacVar8 = hacVar7.f19105e;
                int i10 = (hacVar8 == null || hacVar8.f19102b != this) ? 0 : hacVar7.i;
                if (i9 == 0 || i9 == i3) {
                    crb crbVar = hacVar6.f19106f;
                    int i11 = this.f19887c - i10;
                    gz w = bwoVar.w();
                    crb ac = bwoVar.ac();
                    ac.f13366g = 0;
                    w.m(crbVar, t, ac, i11);
                    bwoVar.ai(w);
                } else {
                    crb crbVar2 = hacVar6.f19106f;
                    int i12 = this.f19887c + i10;
                    gz w2 = bwoVar.w();
                    crb ac2 = bwoVar.ac();
                    ac2.f13366g = 0;
                    w2.l(crbVar2, t, ac2, i12);
                    bwoVar.ai(w2);
                }
                bwoVar.x(hacVar6.f19106f, t, this.f19887c + i10, i7);
            }
            i8++;
            i3 = 2;
        }
        int i13 = this.f19886b;
        if (i13 == 0) {
            bwoVar.x(hacVar3.f19106f, hacVar.f19106f, 0, 8);
            bwoVar.x(hacVar.f19106f, this.bj.br.f19106f, 0, 4);
            bwoVar.x(hacVar.f19106f, this.bj.cw.f19106f, 0, 0);
            return;
        }
        if (i13 == 1) {
            bwoVar.x(hacVar.f19106f, hacVar3.f19106f, 0, 8);
            bwoVar.x(hacVar.f19106f, this.bj.cw.f19106f, 0, 4);
            bwoVar.x(hacVar.f19106f, this.bj.br.f19106f, 0, 0);
        } else if (i13 == 2) {
            bwoVar.x(hacVar4.f19106f, hacVar2.f19106f, 0, 8);
            bwoVar.x(hacVar2.f19106f, this.bj.as.f19106f, 0, 4);
            bwoVar.x(hacVar2.f19106f, this.bj.bx.f19106f, 0, 0);
        } else if (i13 == 3) {
            bwoVar.x(hacVar2.f19106f, hacVar4.f19106f, 0, 8);
            bwoVar.x(hacVar2.f19106f, this.bj.bx.f19106f, 0, 4);
            bwoVar.x(hacVar2.f19106f, this.bj.as.f19106f, 0, 0);
        }
    }

    public final boolean h() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        boolean z = true;
        while (true) {
            i = this.ev;
            if (i4 >= i) {
                break;
            }
            brh brhVar = this.ew[i4];
            if ((this.f19885a || brhVar.j()) && ((((i2 = this.f19886b) == 0 || i2 == 1) && !brhVar.i()) || (((i3 = this.f19886b) == 2 || i3 == 3) && !brhVar.e()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int i5 = 0;
        boolean z2 = false;
        for (int i6 = 0; i6 < this.ev; i6++) {
            brh brhVar2 = this.ew[i6];
            if (this.f19885a || brhVar2.j()) {
                if (!z2) {
                    int i7 = this.f19886b;
                    if (i7 == 0) {
                        i5 = brhVar2.m(dih.LEFT).l();
                    } else if (i7 == 1) {
                        i5 = brhVar2.m(dih.RIGHT).l();
                    } else if (i7 == 2) {
                        i5 = brhVar2.m(dih.TOP).l();
                    } else if (i7 == 3) {
                        i5 = brhVar2.m(dih.BOTTOM).l();
                    }
                    z2 = true;
                }
                int i8 = this.f19886b;
                if (i8 == 0) {
                    i5 = Math.min(i5, brhVar2.m(dih.LEFT).l());
                } else if (i8 == 1) {
                    i5 = Math.max(i5, brhVar2.m(dih.RIGHT).l());
                } else if (i8 == 2) {
                    i5 = Math.min(i5, brhVar2.m(dih.TOP).l());
                } else if (i8 == 3) {
                    i5 = Math.max(i5, brhVar2.m(dih.BOTTOM).l());
                }
            }
        }
        int i9 = i5 + this.f19887c;
        int i10 = this.f19886b;
        if (i10 == 0 || i10 == 1) {
            dx(i9, i9);
        } else {
            dt(i9, i9);
        }
        this.f19888d = true;
        return true;
    }

    @Override // g.brh
    public final boolean i() {
        return this.f19888d;
    }

    @Override // g.brh
    public final boolean j() {
        return true;
    }

    @Override // g.brh
    public final String toString() {
        String ad = awf.ad(new StringBuilder("[Barrier] "), this.an, " {");
        for (int i = 0; i < this.ev; i++) {
            brh brhVar = this.ew[i];
            if (i > 0) {
                ad = awf.c(ad, ", ");
            }
            StringBuilder o = awf.o(ad);
            o.append(brhVar.an);
            ad = o.toString();
        }
        return awf.c(ad, "}");
    }
}

package g;

/* loaded from: classes.dex */
public final class cnr extends mi {
    @Override // g.mi
    public final boolean n() {
        return false;
    }

    @Override // g.mi
    public final void o() {
        brh brhVar = this.f19651g;
        aar aarVar = (aar) brhVar;
        int i = aarVar.f9874a;
        int i2 = aarVar.f9876c;
        int i3 = aarVar.f9878f;
        big bigVar = this.f19645a;
        if (i3 == 1) {
            if (i != -1) {
                bigVar.f11644d.add(brhVar.bj.be.f19645a);
                this.f19651g.bj.be.f19645a.f11642b.add(bigVar);
                bigVar.f11647g = i;
            } else if (i2 != -1) {
                bigVar.f11644d.add(brhVar.bj.be.f19650f);
                this.f19651g.bj.be.f19650f.f11642b.add(bigVar);
                bigVar.f11647g = -i2;
            } else {
                bigVar.i = true;
                bigVar.f11644d.add(brhVar.bj.be.f19650f);
                this.f19651g.bj.be.f19650f.f11642b.add(bigVar);
            }
            w(this.f19651g.be.f19645a);
            w(this.f19651g.be.f19650f);
            return;
        }
        if (i != -1) {
            bigVar.f11644d.add(brhVar.bj.bi.f19645a);
            this.f19651g.bj.bi.f19645a.f11642b.add(bigVar);
            bigVar.f11647g = i;
        } else if (i2 != -1) {
            bigVar.f11644d.add(brhVar.bj.bi.f19650f);
            this.f19651g.bj.bi.f19650f.f11642b.add(bigVar);
            bigVar.f11647g = -i2;
        } else {
            bigVar.i = true;
            bigVar.f11644d.add(brhVar.bj.bi.f19650f);
            this.f19651g.bj.bi.f19650f.f11642b.add(bigVar);
        }
        w(this.f19651g.bi.f19645a);
        w(this.f19651g.bi.f19650f);
    }

    @Override // g.mi
    public final void q() {
        brh brhVar = this.f19651g;
        int i = ((aar) brhVar).f9878f;
        big bigVar = this.f19645a;
        if (i == 1) {
            brhVar.cv = bigVar.l;
        } else {
            brhVar.cb = bigVar.l;
        }
    }

    @Override // g.mi
    public final void r() {
        this.f19645a.o();
    }

    @Override // g.exs
    public final void v(exs exsVar) {
        big bigVar = this.f19645a;
        if (bigVar.k && !bigVar.j) {
            bigVar.m((int) ((((big) bigVar.f11644d.get(0)).l * ((aar) this.f19651g).f9877d) + 0.5f));
        }
    }

    public final void w(big bigVar) {
        big bigVar2 = this.f19645a;
        bigVar2.f11642b.add(bigVar);
        bigVar.f11644d.add(bigVar2);
    }
}

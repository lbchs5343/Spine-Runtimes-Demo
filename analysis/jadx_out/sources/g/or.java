package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class or extends mi {
    @Override // g.mi
    public final boolean n() {
        return false;
    }

    @Override // g.mi
    public final void o() {
        brh brhVar = this.f19651g;
        if (brhVar instanceof r) {
            big bigVar = this.f19645a;
            bigVar.i = true;
            r rVar = (r) brhVar;
            int i = rVar.f19886b;
            boolean z = rVar.f19885a;
            int i2 = 0;
            if (i == 0) {
                bigVar.f11645e = gfv.LEFT;
                while (i2 < rVar.ev) {
                    brh brhVar2 = rVar.ew[i2];
                    if (z || brhVar2.aq != 8) {
                        big bigVar2 = brhVar2.be.f19645a;
                        bigVar2.f11642b.add(bigVar);
                        bigVar.f11644d.add(bigVar2);
                    }
                    i2++;
                }
                w(this.f19651g.be.f19645a);
                w(this.f19651g.be.f19650f);
                return;
            }
            if (i == 1) {
                bigVar.f11645e = gfv.RIGHT;
                while (i2 < rVar.ev) {
                    brh brhVar3 = rVar.ew[i2];
                    if (z || brhVar3.aq != 8) {
                        big bigVar3 = brhVar3.be.f19650f;
                        bigVar3.f11642b.add(bigVar);
                        bigVar.f11644d.add(bigVar3);
                    }
                    i2++;
                }
                w(this.f19651g.be.f19645a);
                w(this.f19651g.be.f19650f);
                return;
            }
            if (i == 2) {
                bigVar.f11645e = gfv.TOP;
                while (i2 < rVar.ev) {
                    brh brhVar4 = rVar.ew[i2];
                    if (z || brhVar4.aq != 8) {
                        big bigVar4 = brhVar4.bi.f19645a;
                        bigVar4.f11642b.add(bigVar);
                        bigVar.f11644d.add(bigVar4);
                    }
                    i2++;
                }
                w(this.f19651g.bi.f19645a);
                w(this.f19651g.bi.f19650f);
                return;
            }
            if (i != 3) {
                return;
            }
            bigVar.f11645e = gfv.BOTTOM;
            while (i2 < rVar.ev) {
                brh brhVar5 = rVar.ew[i2];
                if (z || brhVar5.aq != 8) {
                    big bigVar5 = brhVar5.bi.f19650f;
                    bigVar5.f11642b.add(bigVar);
                    bigVar.f11644d.add(bigVar5);
                }
                i2++;
            }
            w(this.f19651g.bi.f19645a);
            w(this.f19651g.bi.f19650f);
        }
    }

    @Override // g.mi
    public final void q() {
        brh brhVar = this.f19651g;
        if (brhVar instanceof r) {
            int i = ((r) brhVar).f19886b;
            big bigVar = this.f19645a;
            if (i == 0 || i == 1) {
                brhVar.cv = bigVar.l;
            } else {
                brhVar.cb = bigVar.l;
            }
        }
    }

    @Override // g.mi
    public final void r() {
        this.i = null;
        this.f19645a.o();
    }

    @Override // g.exs
    public final void v(exs exsVar) {
        r rVar = (r) this.f19651g;
        int i = rVar.f19886b;
        big bigVar = this.f19645a;
        Iterator it = bigVar.f11644d.iterator();
        int i2 = 0;
        int i3 = -1;
        while (it.hasNext()) {
            int i4 = ((big) it.next()).l;
            if (i3 == -1 || i4 < i3) {
                i3 = i4;
            }
            if (i2 < i4) {
                i2 = i4;
            }
        }
        if (i == 0 || i == 2) {
            bigVar.m(i3 + rVar.f19887c);
        } else {
            bigVar.m(i2 + rVar.f19887c);
        }
    }

    public final void w(big bigVar) {
        big bigVar2 = this.f19645a;
        bigVar2.f11642b.add(bigVar);
        bigVar.f11644d.add(bigVar2);
    }
}

package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public class eeh extends big {
    public int p;

    public eeh(mi miVar) {
        super(miVar);
        if (miVar instanceof dza) {
            this.f11645e = gfv.HORIZONTAL_DIMENSION;
        } else {
            this.f11645e = gfv.VERTICAL_DIMENSION;
        }
    }

    @Override // g.big
    public final void m(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.l = i;
        Iterator it = this.f11642b.iterator();
        while (it.hasNext()) {
            exs exsVar = (exs) it.next();
            exsVar.v(exsVar);
        }
    }
}

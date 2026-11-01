package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class etx extends bfm {
    @Override // g.bfm
    public final boolean c(eie eieVar) {
        eek eekVar = this.f11452a;
        cwx p = eieVar.p(eekVar.ai);
        Iterator it = eekVar.aj.iterator();
        while (it.hasNext()) {
            if (!eieVar.p((gsh) it.next()).equals(p)) {
                return false;
            }
        }
        return true;
    }
}

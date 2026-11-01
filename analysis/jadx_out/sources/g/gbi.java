package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class gbi extends brh {
    public brh[] ew = new brh[4];
    public int ev = 0;

    public void eu() {
    }

    public final void ex(int i, ArrayList arrayList, ic icVar) {
        for (int i2 = 0; i2 < this.ev; i2++) {
            brh brhVar = this.ew[i2];
            ArrayList arrayList2 = icVar.f19415d;
            if (!arrayList2.contains(brhVar)) {
                arrayList2.add(brhVar);
            }
        }
        for (int i3 = 0; i3 < this.ev; i3++) {
            dzm.ab(this.ew[i3], i, arrayList, icVar);
        }
    }
}

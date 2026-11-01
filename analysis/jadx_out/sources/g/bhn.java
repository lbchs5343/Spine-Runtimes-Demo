package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class bhn extends js {
    public final /* synthetic */ tl h;
    public final /* synthetic */ cwi i;

    public bhn(cwi cwiVar, tl tlVar) {
        this.i = cwiVar;
        this.h = tlVar;
    }

    @Override // g.to
    public final void g(fqk fqkVar) {
        ((ArrayList) this.h.get(this.i.f13629b)).remove(fqkVar);
        fqkVar.k(this);
    }
}

package g;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ekv extends js {
    public final /* synthetic */ ArrayList h;
    public final /* synthetic */ fii i;
    public final /* synthetic */ Object j;
    public final /* synthetic */ ArrayList k;
    public final /* synthetic */ Object l;

    public ekv(fii fiiVar, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2) {
        this.i = fiiVar;
        this.j = obj;
        this.k = arrayList;
        this.l = obj2;
        this.h = arrayList2;
    }

    @Override // g.js, g.to
    public final void f(fqk fqkVar) {
        fii fiiVar = this.i;
        Object obj = this.j;
        if (obj != null) {
            fiiVar.a(obj, this.k, null);
        }
        Object obj2 = this.l;
        if (obj2 != null) {
            fiiVar.a(obj2, this.h, null);
        }
    }

    @Override // g.to
    public final void g(fqk fqkVar) {
        fqkVar.k(this);
    }
}

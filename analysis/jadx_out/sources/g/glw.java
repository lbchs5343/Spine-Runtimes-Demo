package g;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class glw extends bjk {

    /* renamed from: g, reason: collision with root package name */
    public final eys f18375g;
    public final eek h;
    public final ArrayList i;

    public glw(eys eysVar, eek eekVar) {
        super(eysVar);
        this.i = new ArrayList();
        this.h = eekVar;
        this.f18375g = new eys(this);
    }

    @Override // g.amj
    public final String a() {
        return Integer.toHexString(this.h.ag);
    }

    @Override // g.amj
    public final void b(fsw fswVar, eos eosVar) {
        grs grsVar = (grs) eosVar;
        grsVar.ae("synchronized (");
        eek eekVar = this.h;
        fswVar.aa(grsVar, eekVar.j(0), true);
        grsVar.d(") {");
        ahw.c(grsVar, eekVar);
        bzu.d(grsVar, fswVar.m, eekVar);
        fswVar.c(grsVar, this.f18375g);
        grsVar.ad('}');
    }

    public final String toString() {
        return "Synchronized:" + this.f18375g;
    }

    @Override // g.cfm
    public final List x() {
        return this.f18375g.f16387g;
    }
}

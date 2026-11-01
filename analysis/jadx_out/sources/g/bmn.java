package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class bmn extends bjk implements foe {

    /* renamed from: g, reason: collision with root package name */
    public guv f11834g;
    public amj h;
    public final eys i;
    public Map j;

    public bmn(cfm cfmVar, eys eysVar) {
        super(cfmVar);
        this.j = Collections.EMPTY_MAP;
        this.i = eysVar;
    }

    @Override // g.amj
    public final String a() {
        return this.i.a();
    }

    @Override // g.amj
    public final void b(fsw fswVar, eos eosVar) {
        hed hedVar = fswVar.m;
        grs grsVar = (grs) eosVar;
        grsVar.ae("try {");
        List list = this.f11834g.f18788b;
        String str = evh.f16225a;
        aea aeaVar = null;
        eek bq = ffb.bq((cih) (list.isEmpty() ? null : list.get(0)));
        ahw.c(grsVar, bq);
        bzu.d(grsVar, hedVar, bq);
        fswVar.c(grsVar, this.i);
        Iterator it = this.j.entrySet().iterator();
        while (it.hasNext()) {
            aea aeaVar2 = (aea) ((Map.Entry) it.next()).getKey();
            if (aeaVar2.m()) {
                if (aeaVar != null) {
                    fsw.f17353a.p(hedVar, "Several 'all' handlers in try/catch block in {}");
                }
                aeaVar = aeaVar2;
            } else {
                fswVar.e(grsVar, aeaVar2);
            }
        }
        if (aeaVar != null) {
            fswVar.e(grsVar, aeaVar);
        }
        amj amjVar = this.h;
        if (amjVar != null) {
            grsVar.ae("} finally {");
            fswVar.c(grsVar, amjVar);
        }
        grsVar.ad('}');
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Try: ");
        sb.append(this.i);
        if (!this.j.isEmpty()) {
            sb.append(" catches: ");
            sb.append(evh.h(", ", this.j.values()));
        }
        if (this.h != null) {
            sb.append(" finally: ");
            sb.append(this.h);
        }
        return sb.toString();
    }

    @Override // g.cfm
    public final List x() {
        ArrayList arrayList = new ArrayList(this.j.size() + 2);
        arrayList.add(this.i);
        arrayList.addAll(this.j.values());
        amj amjVar = this.h;
        if (amjVar != null) {
            arrayList.add(amjVar);
        }
        return Collections.unmodifiableList(arrayList);
    }
}

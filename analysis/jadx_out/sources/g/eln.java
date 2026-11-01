package g;

import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class eln extends bjk implements foe {

    /* renamed from: g, reason: collision with root package name */
    public static final cuf f15770g = new cuf(11);
    public final fza h;
    public final ArrayList i;

    public eln(cfm cfmVar, fza fzaVar) {
        super(cfmVar);
        this.h = fzaVar;
        this.i = new ArrayList();
    }

    @Override // g.amj
    public final String a() {
        return "SW:" + Integer.toString(this.h.h);
    }

    @Override // g.amj
    public final void b(fsw fswVar, eos eosVar) {
        bzm bzmVar = (bzm) ffb.s(this.h);
        Objects.requireNonNull(bzmVar, "Switch insn not found in header");
        gsh j = bzmVar.j(0);
        grs grsVar = (grs) eosVar;
        grsVar.ae("switch (");
        fswVar.aa(grsVar, j, false);
        grsVar.d(") {");
        ahw.c(grsVar, bzmVar);
        hed hedVar = fswVar.m;
        bzu.d(grsVar, hedVar, bzmVar);
        grsVar.aa();
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            adk adkVar = (adk) it.next();
            List list = adkVar.f10047a;
            amj amjVar = adkVar.f10048b;
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                if (next == f15770g) {
                    grsVar.ae("default:");
                } else {
                    grsVar.ae("case ");
                    if (next instanceof hcd) {
                        hcd hcdVar = (hcd) next;
                        fswVar.d(grsVar, hcdVar.f19217g, hcdVar);
                    } else {
                        if (next instanceof dsj) {
                            fswVar.d(grsVar, (dsj) next, null);
                        } else if (next instanceof Integer) {
                            long intValue = ((Integer) next).intValue();
                            cwx j2 = j.j();
                            boolean z = fswVar.k;
                            dba dbaVar = pp.f19822a;
                            grsVar.d(pp.b(intValue, j2, hedVar.a().t, z, false));
                        } else {
                            if (!(next instanceof String)) {
                                StringBuilder sb = new StringBuilder("Unexpected key in switch: ");
                                sb.append(next != null ? next.getClass() : null);
                                throw new gck(sb.toString());
                            }
                            grsVar.a('\"').d((String) next).a('\"');
                        }
                    }
                    grsVar.a(':');
                }
            }
            fswVar.c(grsVar, amjVar);
        }
        grsVar.ab();
        grsVar.ad('}');
    }

    @Override // g.bjk, g.foe
    public final List e() {
        return Collections.unmodifiableList(evh.g(this.i, new coq(5)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Switch: ");
        sb.append(Integer.toString(this.h.h));
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            adk adkVar = (adk) it.next();
            List g2 = evh.g(adkVar.f10047a, new coq(6));
            sb.append("\n case ");
            sb.append(evh.h(", ", g2));
            sb.append(" -> ");
            sb.append(adkVar.f10048b);
        }
        return sb.toString();
    }

    @Override // g.cfm
    public final List x() {
        ArrayList arrayList = this.i;
        ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
        arrayList2.add(this.h);
        arrayList2.addAll(evh.g(arrayList, new coq(5)));
        return Collections.unmodifiableList(arrayList2);
    }
}

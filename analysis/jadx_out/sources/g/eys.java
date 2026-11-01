package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class eys extends bjk {

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f16387g;

    public eys(cfm cfmVar) {
        super(cfmVar);
        this.f16387g = new ArrayList(1);
    }

    @Override // g.amj
    public final String a() {
        StringBuilder sb = new StringBuilder();
        ArrayList arrayList = this.f16387g;
        int size = arrayList.size();
        sb.append('(');
        sb.append(size);
        if (size > 0) {
            sb.append(':');
            evh.l(sb, arrayList, "|", new gpn(21));
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // g.amj
    public final void b(fsw fswVar, eos eosVar) {
        Iterator it = this.f16387g.iterator();
        while (it.hasNext()) {
            fswVar.b(eosVar, (amj) it.next());
        }
    }

    @Override // g.bjk, g.cfm
    public final boolean f(amj amjVar, amj amjVar2) {
        ArrayList arrayList = this.f16387g;
        int indexOf = arrayList.indexOf(amjVar);
        if (indexOf == -1) {
            return false;
        }
        arrayList.set(indexOf, amjVar2);
        if (!(amjVar2 instanceof cfm)) {
            return true;
        }
        ((bjk) ((cfm) amjVar2)).f11698d = this;
        return true;
    }

    public final void h(amj amjVar) {
        if (amjVar instanceof cfm) {
            ((bjk) ((cfm) amjVar)).f11698d = this;
        }
        this.f16387g.add(amjVar);
    }

    public final String toString() {
        return "R" + a();
    }

    @Override // g.cfm
    public final List x() {
        return this.f16387g;
    }
}

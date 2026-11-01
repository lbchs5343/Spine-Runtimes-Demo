package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class goe extends eiy implements foe {

    /* renamed from: g, reason: collision with root package name */
    public amj f18486g;
    public amj h;

    @Override // g.amj
    public final String a() {
        StringBuilder sb = new StringBuilder();
        amj amjVar = this.h;
        if (amjVar != null) {
            sb.append(amjVar.a());
        }
        amj amjVar2 = this.f18486g;
        if (amjVar2 != null) {
            sb.append(amjVar2.a());
        }
        return sb.toString();
    }

    @Override // g.amj
    public final void b(fsw fswVar, eos eosVar) {
        fswVar.f(this, eosVar, true);
    }

    @Override // g.bjk, g.foe
    public final List e() {
        ArrayList arrayList = new ArrayList(2);
        arrayList.add(this.h);
        arrayList.add(this.f18486g);
        return Collections.unmodifiableList(arrayList);
    }

    @Override // g.bjk, g.cfm
    public final boolean f(amj amjVar, amj amjVar2) {
        if (amjVar == this.h) {
            this.h = amjVar2;
            if (amjVar2 instanceof cfm) {
                ((bjk) ((cfm) amjVar2)).f11698d = this;
                return true;
            }
        } else {
            if (amjVar != this.f18486g) {
                return false;
            }
            this.f18486g = amjVar2;
            if (amjVar2 instanceof cfm) {
                ((bjk) ((cfm) amjVar2)).f11698d = this;
            }
        }
        return true;
    }

    public final String toString() {
        return "IF " + this.f15618ab + " THEN: " + this.h + " ELSE: " + this.f18486g;
    }

    @Override // g.cfm
    public final List x() {
        List list = this.f15618ab;
        ArrayList arrayList = new ArrayList(list.size() + 2);
        arrayList.addAll(list);
        amj amjVar = this.h;
        if (amjVar != null) {
            arrayList.add(amjVar);
        }
        amj amjVar2 = this.f18486g;
        if (amjVar2 != null) {
            arrayList.add(amjVar2);
        }
        return Collections.unmodifiableList(arrayList);
    }
}

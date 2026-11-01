package g;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class gqu extends lh implements cih {

    /* renamed from: d, reason: collision with root package name */
    public final List f18598d;

    public gqu(eek eekVar) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(eekVar);
        this.f18598d = arrayList;
    }

    public gqu(List list) {
        this.f18598d = list;
    }

    @Override // g.amj
    public final String a() {
        return "IC";
    }

    @Override // g.amj
    public final /* synthetic */ void b(fsw fswVar, eos eosVar) {
        awf.k(this, fswVar, eosVar);
    }

    @Override // g.cih
    public final List c() {
        return this.f18598d;
    }

    public final String toString() {
        return "InsnContainer";
    }
}

package g;

import java.util.BitSet;

/* loaded from: classes.dex */
public final class cse extends fox {

    /* renamed from: a, reason: collision with root package name */
    public final BitSet f13423a;

    public cse(hed hedVar) {
        this.f13423a = new BitSet(hedVar.al.f11075c.size());
    }

    public static void b(hed hedVar, int i) {
        cse cseVar = (cse) hedVar.l.k(acq.f9982ab);
        if (cseVar == null) {
            cseVar = new cse(hedVar);
            hedVar.m(cseVar);
        }
        cseVar.f13423a.set(i);
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.f9982ab;
    }

    public final String toString() {
        return "SKIP_MTH_ARGS: " + this.f13423a;
    }
}

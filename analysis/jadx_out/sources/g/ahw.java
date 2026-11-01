package g;

/* loaded from: classes.dex */
public final class ahw implements cdv {

    /* renamed from: a, reason: collision with root package name */
    public final int f10243a;

    public ahw(int i) {
        this.f10243a = i;
    }

    public static void c(eos eosVar, eek eekVar) {
        if (eekVar == null) {
            return;
        }
        grs grsVar = (grs) eosVar;
        grsVar.getClass();
        if (grsVar instanceof flc) {
            int i = eekVar.ag;
            ahw ahwVar = i < 0 ? null : new ahw(i);
            if (ahwVar != null) {
                eosVar.f(ahwVar);
            }
        }
    }

    @Override // g.cdv
    public final pk b() {
        return pk.OFFSET;
    }

    public final String toString() {
        return "offset=" + this.f10243a;
    }
}

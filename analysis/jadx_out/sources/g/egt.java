package g;

/* loaded from: classes3.dex */
public final class egt extends dgb {
    @Override // g.dgb
    public final void c(long j, Object obj) {
        ((gzj) ((cwe) diy.f14260f.p(j, obj))).f19052f = false;
    }

    @Override // g.dgb
    public final void d(long j, Object obj, Object obj2) {
        frx frxVar = diy.f14260f;
        cwe cweVar = (cwe) frxVar.p(j, obj);
        cwe cweVar2 = (cwe) frxVar.p(j, obj2);
        int size = cweVar.size();
        int size2 = cweVar2.size();
        if (size > 0 && size2 > 0) {
            if (!((gzj) cweVar).f19052f) {
                cweVar = cweVar.zzd(size2 + size);
            }
            cweVar.addAll(cweVar2);
        }
        if (size > 0) {
            cweVar2 = cweVar;
        }
        diy.h(j, obj, cweVar2);
    }
}

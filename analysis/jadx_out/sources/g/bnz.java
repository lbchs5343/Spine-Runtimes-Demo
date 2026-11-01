package g;

import j$.util.Map;
import java.util.EnumMap;
import java.util.Set;

/* loaded from: classes.dex */
public final class bnz implements eue {

    /* renamed from: a, reason: collision with root package name */
    public final EnumMap f11900a = new EnumMap(afa.class);

    public static void b(ebh ebhVar, afa afaVar, String str) {
        bnz bnzVar = (bnz) ebhVar.l.k(acq.bk);
        if (bnzVar == null) {
            bnzVar = new bnz();
            ebhVar.m(bnzVar);
        }
        ((Set) Map.b.computeIfAbsent(bnzVar.f11900a, afaVar, new gpn(3))).add(str);
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final fky d() {
        return acq.bk;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final String toString() {
        return "JadxCommentsAttr{\n " + evh.d(this.f11900a.entrySet(), "\n ", new gpn(2)) + '}';
    }
}

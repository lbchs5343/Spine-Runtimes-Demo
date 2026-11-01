package g;

import java.util.EnumSet;

/* loaded from: classes.dex */
public final class ddx implements eue {

    /* renamed from: a, reason: collision with root package name */
    public final EnumSet f14029a = EnumSet.noneOf(fuu.class);

    public static boolean b(hed hedVar, fuu fuuVar) {
        ddx ddxVar = (ddx) hedVar.l.k(acq.ay);
        if (ddxVar == null) {
            return false;
        }
        return ddxVar.f14029a.contains(fuuVar);
    }

    @Override // g.eue
    public final String c() {
        return "CodeFeatures{" + this.f14029a + '}';
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.ay;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }
}

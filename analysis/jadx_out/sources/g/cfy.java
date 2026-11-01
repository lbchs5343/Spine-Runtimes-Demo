package g;

import java.util.ArrayList;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class cfy implements azo {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f12806a;

    public cfy(ArrayList arrayList) {
        this.f12806a = arrayList;
    }

    public static ks b(geg gegVar) {
        cfy cfyVar = (cfy) gegVar.c(zz.l);
        cfy cfyVar2 = (cfy) gegVar.c(zz.f20422d);
        if (cfyVar == null && cfyVar2 == null) {
            return null;
        }
        if (cfyVar2 == null) {
            return ks.b(cfyVar.f12806a);
        }
        ArrayList arrayList = cfyVar2.f12806a;
        return cfyVar == null ? ks.b(arrayList) : ks.b(acr.bi(cfyVar.f12806a, arrayList));
    }

    public static fpa c(any anyVar, cmv cmvVar, gqc gqcVar) {
        gkr gkrVar = cmvVar.f13144g;
        String r = gkrVar.r(gqcVar.ai());
        int ai = gqcVar.ai();
        LinkedHashMap linkedHashMap = new LinkedHashMap(ai);
        for (int i = 0; i < ai; i++) {
            linkedHashMap.put(gkrVar.r(gqcVar.ai()), ckd.ak(cmvVar, gqcVar));
        }
        return new fpa(anyVar, r, linkedHashMap);
    }
}

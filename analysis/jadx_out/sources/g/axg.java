package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class axg extends pj {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f11020a = dsr.k(axg.class);

    @Override // g.pj
    public final void j(hed hedVar) {
        cwx cwxVar;
        cci ae;
        if (hedVar.ar) {
            return;
        }
        Iterator it = hedVar.ak.iterator();
        while (it.hasNext()) {
            Iterator it2 = ((fza) it.next()).ac.iterator();
            while (it2.hasNext()) {
                eek eekVar = (eek) it2.next();
                if (eekVar.ah == hay.CONSTRUCTOR) {
                    eew eewVar = (eew) eekVar;
                    try {
                        gks gksVar = eewVar.ai;
                        if (gksVar != null && (cwxVar = gksVar.f18326a.u().f15632e) != null && cwxVar.c() != null && ((ae = hedVar.am.f12631ab.ae(eewVar.f15409a.f11076d)) == null || !ae.y.isEmpty())) {
                            eewVar.m(new apw(cwxVar.c()));
                        }
                    } catch (Exception e2) {
                        f11020a.l("Failed to attach constructor generic info", e2);
                    }
                }
            }
        }
    }
}

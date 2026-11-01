package g;

import j$.util.Map;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class cmf extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f13108a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f13109b;

    public cmf() {
        super(2);
        this.f13108a = new ArrayList();
        this.f13109b = new LinkedHashMap();
    }

    @Override // g.bgf
    public final void ad(hed hedVar, cih cihVar, cfm cfmVar) {
        gjz gjzVar = new gjz(cfmVar, cihVar);
        if (cfmVar instanceof cab) {
            buj bujVar = ((cab) cfmVar).j;
            if (bujVar instanceof k) {
                k kVar = (k) bujVar;
                c(kVar._l, gjzVar);
                c(kVar._m, gjzVar);
            }
        }
        int size = cihVar.c().size();
        for (int i = 0; i < size; i++) {
            c((eek) cihVar.c().get(i), gjzVar);
        }
    }

    public final void c(eek eekVar, gjz gjzVar) {
        if (eekVar == null) {
            return;
        }
        gks gksVar = eekVar.ai;
        LinkedHashMap linkedHashMap = this.f13109b;
        if (gksVar != null) {
            if (!gksVar.l.g(csv.DONT_GENERATE)) {
                ((bjo) Map.b.computeIfAbsent(linkedHashMap, gksVar.f18326a, new fov(13))).f11709b.add(gjzVar);
            }
        }
        ArrayList arrayList = this.f13108a;
        arrayList.clear();
        eekVar.h(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            gks gksVar2 = (gks) it.next();
            if (!gksVar2.l.g(csv.DONT_GENERATE)) {
                ((bjo) Map.b.computeIfAbsent(linkedHashMap, gksVar2.f18326a, new fov(13))).f11710c.add(gjzVar);
            }
        }
    }
}

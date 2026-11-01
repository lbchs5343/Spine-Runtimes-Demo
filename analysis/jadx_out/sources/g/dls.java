package g;

import java.util.Iterator;

/* loaded from: classes3.dex */
public abstract class dls extends bke {

    /* renamed from: f, reason: collision with root package name */
    public final st f14384f;

    public dls(st stVar) {
        this.f14384f = stVar;
    }

    @Override // g.bke
    public final void a(fwg fwgVar, Object obj) {
        if (obj == null) {
            fwgVar.af();
            return;
        }
        fwgVar.p();
        try {
            Iterator it = this.f14384f.f20009b.iterator();
            while (it.hasNext()) {
                ((amt) it.next()).f(fwgVar, obj);
            }
            fwgVar.ag();
        } catch (IllegalAccessException e2) {
            eyt eytVar = cpe.f13267a;
            throw new RuntimeException("Unexpected IllegalAccessException occurred (Gson 2.11.0). Certain ReflectionAccessFilter features require Java >= 9 to work correctly. If you are not using ReflectionAccessFilter, report this to the Gson maintainers.", e2);
        }
    }
}

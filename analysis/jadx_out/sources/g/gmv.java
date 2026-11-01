package g;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class gmv implements dts {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18423a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f18424b;

    public /* synthetic */ gmv(int i, Object obj) {
        this.f18423a = i;
        this.f18424b = obj;
    }

    @Override // g.dts
    public final void accept(Object obj) {
        switch (this.f18423a) {
            case 0:
                cgr cgrVar = (cgr) obj;
                if (cgrVar == null) {
                    cgrVar = new cgr(-3);
                }
                ((gtb) this.f18424b).y(cgrVar);
                return;
            case 1:
                cgr cgrVar2 = (cgr) obj;
                synchronized (anc.f10513d) {
                    try {
                        bcp bcpVar = anc.f10510a;
                        ArrayList arrayList = (ArrayList) bcpVar.get((String) this.f18424b);
                        if (arrayList == null) {
                            return;
                        }
                        bcpVar.remove((String) this.f18424b);
                        for (int i = 0; i < arrayList.size(); i++) {
                            ((dts) arrayList.get(i)).accept(cgrVar2);
                        }
                        return;
                    } finally {
                    }
                }
            case 2:
                ejd ejdVar = (ejd) obj;
                ArrayList arrayList2 = new ArrayList();
                new ArrayList();
                gkr gkrVar = (gkr) ((emr) this.f18424b).n;
                if (ejdVar == null || ejdVar.f15636a != 0) {
                    gkrVar.o(ejdVar == null ? 1322 : cdy.j(ejdVar.f15636a));
                    return;
                }
                if (!acw.u(arrayList2)) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        x xVar = (x) it.next();
                        if ("a".equals(xVar.h)) {
                            gkrVar.i(xVar);
                            return;
                        }
                    }
                }
                gkrVar.o(1992);
                return;
            default:
                ((dzt) this.f18424b).q((ejd) obj);
                return;
        }
    }
}

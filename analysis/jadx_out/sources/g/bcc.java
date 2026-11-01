package g;

import j$.lang.Iterable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class bcc extends pj {

    /* renamed from: a, reason: collision with root package name */
    public Map f11255a;

    static {
        dsr.k(bcc.class);
    }

    @Override // g.pj
    public final void h(dwg dwgVar) {
        dwgVar.i.getClass();
        this.f11255a = Collections.EMPTY_MAP;
        dwgVar.q.add(new bfb(1));
    }

    @Override // g.pj
    public final boolean k(cci cciVar) {
        List list;
        Map map = this.f11255a;
        if (map == null) {
            list = Collections.EMPTY_LIST;
        } else {
            list = (List) map.get(cciVar.ak.f20149d.l());
            if (list == null) {
                list = Collections.EMPTY_LIST;
            }
        }
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                throw tn.c(it);
            }
        }
        Iterable.b.forEach(cciVar.i, new agx(8, this));
        return false;
    }
}

package g;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class ks extends fox {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f19565a;

    public ks(HashMap hashMap) {
        this.f19565a = hashMap;
    }

    public static ks b(List list) {
        if (list.isEmpty()) {
            return null;
        }
        HashMap hashMap = new HashMap(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            fpa fpaVar = (fpa) it.next();
            if (fpaVar.f17179a != any.SYSTEM) {
                hashMap.put(fpaVar.f17180b, fpaVar);
            }
        }
        if (hashMap.isEmpty()) {
            return null;
        }
        return new ks(hashMap);
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return ao.q;
    }

    public final String toString() {
        return this.f19565a.toString();
    }
}

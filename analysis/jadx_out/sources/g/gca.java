package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class gca extends fox {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f17880a;

    public gca(ArrayList arrayList) {
        this.f17880a = arrayList;
    }

    public static gca b(List list) {
        if (list.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(ks.b((List) it.next()));
        }
        return new gca(arrayList);
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return ao.i;
    }

    public final String toString() {
        return this.f17880a.toString();
    }
}

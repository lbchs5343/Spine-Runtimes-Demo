package g;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class eqm implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f15996a = dsr.k(eqm.class);

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f15997b;

    /* renamed from: c, reason: collision with root package name */
    public final blx f15998c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f15999d;

    public eqm(blx blxVar, ArrayList arrayList) {
        this.f15998c = blxVar;
        this.f15999d = arrayList;
        HashMap hashMap = new HashMap(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ffs ffsVar = (ffs) it.next();
            String name = ffsVar.getName();
            if (((ffs) hashMap.put(name, ffsVar)) != null) {
                f15996a.t(name, "Found duplicate entry: {} in {}", blxVar);
            }
        }
        this.f15997b = hashMap;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f15998c.close();
    }
}

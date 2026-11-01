package g;

import java.io.Closeable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public final class wg {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f20209a = new LinkedHashMap();

    public final void b() {
        for (blj bljVar : this.f20209a.values()) {
            bljVar.n = true;
            HashMap hashMap = bljVar.l;
            if (hashMap != null) {
                synchronized (hashMap) {
                    try {
                        Iterator it = bljVar.l.values().iterator();
                        while (it.hasNext()) {
                            blj.o(it.next());
                        }
                    } finally {
                    }
                }
            }
            LinkedHashSet linkedHashSet = bljVar.m;
            if (linkedHashSet != null) {
                synchronized (linkedHashSet) {
                    try {
                        Iterator it2 = bljVar.m.iterator();
                        while (it2.hasNext()) {
                            blj.o((Closeable) it2.next());
                        }
                    } finally {
                    }
                }
            }
            bljVar.j();
        }
        this.f20209a.clear();
    }
}

package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class doo {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f14537a = awf.ab();

    public static void b(fsr fsrVar) {
        ArrayList arrayList = new ArrayList();
        Map map = f14537a;
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getValue() == fsrVar) {
                arrayList.add((String) entry.getKey());
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            map.remove((String) it.next());
        }
    }
}

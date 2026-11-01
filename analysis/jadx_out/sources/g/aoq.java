package g;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class aoq {
    public static final void a(Object obj, Object obj2) {
        dhf dhfVar = (dhf) obj;
        if (obj2 != null) {
            throw new ClassCastException();
        }
        if (dhfVar.isEmpty()) {
            return;
        }
        Iterator it = dhfVar.entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            entry.getKey();
            entry.getValue();
            throw null;
        }
    }

    public static final dhf b(Object obj, Object obj2) {
        dhf dhfVar = (dhf) obj;
        dhf dhfVar2 = (dhf) obj2;
        if (!dhfVar2.isEmpty()) {
            if (!dhfVar.c()) {
                dhfVar = dhfVar.d();
            }
            dhfVar.e();
            if (!dhfVar2.isEmpty()) {
                dhfVar.putAll(dhfVar2);
            }
        }
        return dhfVar;
    }
}

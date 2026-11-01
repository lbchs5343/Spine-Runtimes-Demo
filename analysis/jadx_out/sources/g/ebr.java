package g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ebr extends afg {
    public static List bp(gkt gktVar) {
        Iterator it = gktVar.iterator();
        if (!it.hasNext()) {
            return fai.f16469a;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return cro.r(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }
}

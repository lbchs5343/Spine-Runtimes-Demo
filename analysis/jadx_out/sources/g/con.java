package g;

import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class con implements Iterable {
    public static int a(List list, eek eekVar) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (list.get(i) == eekVar) {
                return i;
            }
        }
        return -1;
    }

    public static void b(fza fzaVar, eek eekVar) {
        Iterator it = fzaVar.ac.iterator();
        while (it.hasNext()) {
            if (((eek) it.next()) == eekVar) {
                it.remove();
                return;
            }
        }
    }
}

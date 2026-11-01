package g;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class eiy extends bjk implements aoo {
    public eii aa;

    /* renamed from: ab, reason: collision with root package name */
    public List f15618ab;

    public eiy(eys eysVar) {
        super(eysVar);
        this.f15618ab = Collections.EMPTY_LIST;
    }

    public final int ac() {
        int i;
        Iterator it = this.f15618ab.iterator();
        while (it.hasNext()) {
            eek s = ffb.s((fza) it.next());
            if (s != null && (i = s.bp) != 0) {
                return i;
            }
        }
        return 0;
    }
}

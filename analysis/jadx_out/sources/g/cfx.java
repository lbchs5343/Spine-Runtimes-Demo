package g;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class cfx implements Iterable {

    /* renamed from: d, reason: collision with root package name */
    public final WeakHashMap f12802d = new WeakHashMap();

    /* renamed from: e, reason: collision with root package name */
    public int f12803e = 0;

    /* renamed from: f, reason: collision with root package name */
    public frv f12804f;

    /* renamed from: g, reason: collision with root package name */
    public frv f12805g;

    public frv b(Object obj) {
        frv frvVar = this.f12804f;
        while (frvVar != null && !frvVar.f17314c.equals(obj)) {
            frvVar = frvVar.f17312a;
        }
        return frvVar;
    }

    public Object c(Object obj) {
        frv b2 = b(obj);
        if (b2 == null) {
            return null;
        }
        this.f12803e--;
        WeakHashMap weakHashMap = this.f12802d;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((euj) it.next()).d(b2);
            }
        }
        frv frvVar = b2.f17313b;
        if (frvVar != null) {
            frvVar.f17312a = b2.f17312a;
        } else {
            this.f12804f = b2.f17312a;
        }
        frv frvVar2 = b2.f17312a;
        if (frvVar2 != null) {
            frvVar2.f17313b = frvVar;
        } else {
            this.f12805g = frvVar;
        }
        b2.f17312a = null;
        b2.f17313b = null;
        return b2.f17315d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        if (r3.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        if (((g.cwl) r7).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0052, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0053, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cfx)) {
            return false;
        }
        cfx cfxVar = (cfx) obj;
        if (this.f12803e != cfxVar.f12803e) {
            return false;
        }
        Iterator it = iterator();
        Iterator it2 = cfxVar.iterator();
        while (true) {
            cwl cwlVar = (cwl) it;
            if (!cwlVar.hasNext()) {
                break;
            }
            cwl cwlVar2 = (cwl) it2;
            if (!cwlVar2.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) cwlVar.next();
            Object next = cwlVar2.next();
            if ((entry != null || next == null) && (entry == null || entry.equals(next))) {
            }
        }
        return false;
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (true) {
            cwl cwlVar = (cwl) it;
            if (!cwlVar.hasNext()) {
                return i;
            }
            i += ((Map.Entry) cwlVar.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        cwl cwlVar = new cwl(this.f12804f, this.f12805g, 0);
        this.f12802d.put(cwlVar, Boolean.FALSE);
        return cwlVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            cwl cwlVar = (cwl) it;
            if (!cwlVar.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) cwlVar.next()).toString());
            if (cwlVar.hasNext()) {
                sb.append(", ");
            }
        }
    }
}

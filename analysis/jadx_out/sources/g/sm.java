package g;

import j$.util.List;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class sm {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f19982a;

    /* renamed from: b, reason: collision with root package name */
    public final EnumSet f19983b = EnumSet.noneOf(csv.class);

    /* renamed from: c, reason: collision with root package name */
    public Map f19984c = f19982a;

    static {
        int length = csv.values().length;
        if (length >= 64) {
            throw new gck(awf.ac(length, "Try to reduce flags count to 64 for use one long in EnumSet, now "));
        }
        f19982a = Collections.EMPTY_MAP;
    }

    public void d(fky fkyVar) {
        if (this.f19984c.isEmpty()) {
            return;
        }
        i(new agx(1, fkyVar));
    }

    public List e(acq acqVar) {
        frs frsVar = (frs) k(acqVar);
        return frsVar == null ? Collections.EMPTY_LIST : Collections.unmodifiableList(frsVar.f17307b);
    }

    public List f() {
        EnumSet enumSet = this.f19983b;
        int size = this.f19984c.size() + enumSet.size();
        if (size == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(size);
        Iterator it = enumSet.iterator();
        while (it.hasNext()) {
            arrayList.add(((csv) it.next()).toString());
        }
        Iterator it2 = this.f19984c.values().iterator();
        while (it2.hasNext()) {
            arrayList.add(((eue) it2.next()).c());
        }
        return arrayList;
    }

    public boolean g(csv csvVar) {
        return this.f19983b.contains(csvVar);
    }

    public boolean h() {
        return this.f19983b.isEmpty() && this.f19984c.isEmpty();
    }

    public final void i(Consumer consumer) {
        synchronized (this) {
            try {
                Map map = this.f19984c;
                Map map2 = f19982a;
                if (map == map2) {
                    this.f19984c = new IdentityHashMap(2);
                }
                consumer.n(this.f19984c);
                if (this.f19984c.isEmpty()) {
                    this.f19984c = map2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean j(fky fkyVar) {
        return this.f19984c.containsKey(fkyVar);
    }

    public eue k(fky fkyVar) {
        return (eue) this.f19984c.get(fkyVar);
    }

    public void l(csv csvVar) {
        this.f19983b.remove(csvVar);
    }

    public String toString() {
        List f2 = f();
        if (f2.isEmpty()) {
            return "";
        }
        List.b.sort(f2, new fdq(0));
        return "A[" + evh.h(", ", f2) + ']';
    }
}

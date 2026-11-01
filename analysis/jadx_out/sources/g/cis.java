package g;

import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

/* loaded from: classes3.dex */
public final class cis {

    /* renamed from: a, reason: collision with root package name */
    public Object f12947a;

    /* renamed from: b, reason: collision with root package name */
    public Object f12948b;

    public void c(dpa dpaVar, dzh dzhVar) {
        TreeMap treeMap = (TreeMap) this.f12948b;
        cpt cptVar = new cpt(dzhVar);
        TreeMap treeMap2 = (TreeMap) this.f12947a;
        for (Integer num : treeMap2.keySet()) {
            guq clone = ((guq) dzhVar.f15121f).clone();
            gey e2 = ((dxk) treeMap2.get(num)).e(dpaVar, Collections.singletonList(cptVar));
            int az = e2 instanceof hbz ? byh.az(((hbz) e2).f19206a.doubleValue()) : -1;
            if (az == 2 || az == -1) {
                dzhVar.f15121f = clone;
            }
        }
        Iterator it = treeMap.keySet().iterator();
        while (it.hasNext()) {
            gey e3 = ((dxk) treeMap.get((Integer) it.next())).e(dpaVar, Collections.singletonList(cptVar));
            if (e3 instanceof hbz) {
                byh.az(((hbz) e3).f19206a.doubleValue());
            }
        }
    }
}

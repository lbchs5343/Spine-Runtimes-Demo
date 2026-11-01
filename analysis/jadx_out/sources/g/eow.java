package g;

import android.util.SparseArray;
import java.util.HashMap;

/* loaded from: classes3.dex */
public abstract class eow {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray f15922a = new SparseArray();

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f15923b;

    static {
        HashMap hashMap = new HashMap();
        f15923b = hashMap;
        hashMap.put(cq.DEFAULT, 0);
        hashMap.put(cq.VERY_LOW, 1);
        hashMap.put(cq.HIGHEST, 2);
        for (cq cqVar : hashMap.keySet()) {
            f15922a.append(((Integer) f15923b.get(cqVar)).intValue(), cqVar);
        }
    }

    public static int c(cq cqVar) {
        Integer num = (Integer) f15923b.get(cqVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + cqVar);
    }

    public static cq d(int i) {
        cq cqVar = (cq) f15922a.get(i);
        if (cqVar != null) {
            return cqVar;
        }
        throw new IllegalArgumentException(awf.ac(i, "Unknown Priority for value "));
    }
}

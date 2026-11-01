package g;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public final class bdf {

    /* renamed from: a, reason: collision with root package name */
    public final int f11310a;

    /* renamed from: b, reason: collision with root package name */
    public final avn f11311b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f11312c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f11313d;

    /* renamed from: e, reason: collision with root package name */
    public final Set f11314e;

    /* renamed from: f, reason: collision with root package name */
    public final int f11315f;

    public bdf(Set set, Set set2, int i, int i2, avn avnVar, Set set3) {
        this.f11312c = Collections.unmodifiableSet(set);
        this.f11314e = Collections.unmodifiableSet(set2);
        this.f11315f = i;
        this.f11310a = i2;
        this.f11311b = avnVar;
        this.f11313d = Collections.unmodifiableSet(set3);
    }

    public static bdf g(Object obj, Class cls, Class... clsArr) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(cls);
        for (Class cls2 : clsArr) {
            bff.aj(cls2, "Null interface");
        }
        Collections.addAll(hashSet, clsArr);
        return new bdf(new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new aoi(8, obj), hashSet3);
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f11312c.toArray()) + ">{" + this.f11315f + ", type=" + this.f11310a + ", deps=" + Arrays.toString(this.f11314e.toArray()) + "}";
    }
}

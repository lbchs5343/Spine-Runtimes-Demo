package g;

import java.util.Collection;
import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class gyp {

    /* renamed from: a, reason: collision with root package name */
    public final Set f19013a;

    /* renamed from: b, reason: collision with root package name */
    public final aol f19014b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f19015c;

    /* renamed from: d, reason: collision with root package name */
    public final String[] f19016d;

    public gyp(aol aolVar, int[] iArr, String[] strArr) {
        Set singleton;
        bff.p(aolVar, "observer");
        this.f19014b = aolVar;
        this.f19015c = iArr;
        this.f19016d = strArr;
        if (strArr.length == 0) {
            singleton = gpk.f18539a;
        } else {
            singleton = Collections.singleton(strArr[0]);
            bff.e(singleton, "singleton(...)");
        }
        this.f19013a = singleton;
        if (iArr.length != strArr.length) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final void e(Set set) {
        bff.p(set, "invalidatedTablesIds");
        int[] iArr = this.f19015c;
        int length = iArr.length;
        Collection collection = gpk.f18539a;
        if (length != 0) {
            int i = 0;
            if (length != 1) {
                dra draVar = new dra();
                int length2 = iArr.length;
                int i2 = 0;
                while (i < length2) {
                    int i3 = i2 + 1;
                    if (set.contains(Integer.valueOf(iArr[i]))) {
                        draVar.add(this.f19016d[i2]);
                    }
                    i++;
                    i2 = i3;
                }
                collection = draVar.c();
            } else if (set.contains(Integer.valueOf(iArr[0]))) {
                collection = this.f19013a;
            }
        }
        if (collection.isEmpty()) {
            return;
        }
        this.f19014b.f10576b.e(dgi.f14134a);
    }
}

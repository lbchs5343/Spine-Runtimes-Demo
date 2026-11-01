package g;

import java.util.HashSet;

/* loaded from: classes.dex */
public abstract class hbp {

    /* renamed from: a, reason: collision with root package name */
    public static final ckf f19183a = new ckf();

    public static void b(String str) {
        f19183a.getClass();
        HashSet hashSet = ckf.f13027a;
        if (hashSet.contains(str)) {
            return;
        }
        hashSet.add(str);
    }

    public static void c(String str, Throwable th) {
        f19183a.getClass();
        HashSet hashSet = ckf.f13027a;
        if (hashSet.contains(str)) {
            return;
        }
        hashSet.add(str);
    }
}

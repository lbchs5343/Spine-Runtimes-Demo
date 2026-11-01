package g;

import android.content.Context;

/* loaded from: classes.dex */
public abstract class eca {

    /* renamed from: a, reason: collision with root package name */
    public static final fzn f15276a = new fzn(9);

    /* renamed from: b, reason: collision with root package name */
    public static fc f15277b = null;

    /* renamed from: c, reason: collision with root package name */
    public static Context f15278c;

    /* renamed from: d, reason: collision with root package name */
    public static long f15279d;

    /* renamed from: e, reason: collision with root package name */
    public static dzh f15280e;

    public static fc f() {
        if (f15277b == null) {
            synchronized (eca.class) {
                Context context = f15278c;
                fc fcVar = new fc(22, false);
                fcVar.f16548e = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, "npth", 0);
                f15277b = fcVar;
            }
        }
        return f15277b;
    }
}

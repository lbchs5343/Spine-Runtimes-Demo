package g;

import android.os.Build;
import android.os.UserManager;

/* loaded from: classes3.dex */
public abstract class ddd {

    /* renamed from: a, reason: collision with root package name */
    public static UserManager f14008a;

    /* renamed from: b, reason: collision with root package name */
    public static volatile boolean f14009b;

    static {
        f14009b = !(Build.VERSION.SDK_INT >= 24);
    }
}

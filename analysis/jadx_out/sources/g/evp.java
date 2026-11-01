package g;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public abstract class evp {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f16243b = 0;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f16245d;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f16246e;

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicBoolean f16244c = new AtomicBoolean();

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f16242a = new AtomicBoolean();

    public static boolean f(Context context) {
        if (!f16246e) {
            try {
                PackageInfo c2 = chk.c(context).c(64, "com.google.android.gms");
                awm.e(context);
                if (c2 == null || awm.d(c2, false) || !awm.d(c2, true)) {
                    f16245d = false;
                } else {
                    f16245d = true;
                }
                f16246e = true;
            } catch (PackageManager.NameNotFoundException unused) {
                f16246e = true;
            } catch (Throwable th) {
                f16246e = true;
                throw th;
            }
        }
        return f16245d || !"user".equals(Build.TYPE);
    }
}

package g;

import android.os.Build;
import android.os.StrictMode;
import android.os.UserManager;
import java.util.Iterator;

/* loaded from: classes3.dex */
public abstract class bkb {

    /* renamed from: a, reason: collision with root package name */
    public static final tl f11724a = new tl(0);

    public static void b() {
        UserManager userManager = ddd.f14008a;
        if (Build.VERSION.SDK_INT >= 24) {
            throw null;
        }
        synchronized (bkb.class) {
            try {
                if (f11724a.get(null) != null) {
                    throw new ClassCastException();
                }
                StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                try {
                    throw null;
                } catch (Throwable th) {
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static synchronized void c() {
        synchronized (bkb.class) {
            tl tlVar = f11724a;
            Iterator it = ((bow) tlVar.values()).iterator();
            if (it.hasNext()) {
                if (it.next() != null) {
                    throw new ClassCastException();
                }
                throw null;
            }
            tlVar.clear();
        }
    }
}

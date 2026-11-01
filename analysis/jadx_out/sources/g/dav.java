package g;

import android.os.Looper;

/* loaded from: classes.dex */
public final class dav extends dyd {

    /* renamed from: a, reason: collision with root package name */
    public static volatile dav f13879a;

    /* renamed from: b, reason: collision with root package name */
    public static final xh f13880b = new xh(0);

    /* renamed from: c, reason: collision with root package name */
    public final fja f13881c = new fja();

    public static dav d() {
        if (f13879a != null) {
            return f13879a;
        }
        synchronized (dav.class) {
            try {
                if (f13879a == null) {
                    f13879a = new dav();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f13879a;
    }

    public final void e(Runnable runnable) {
        fja fjaVar = this.f13881c;
        if (fjaVar.f16878c == null) {
            synchronized (fjaVar.f16876a) {
                try {
                    if (fjaVar.f16878c == null) {
                        fjaVar.f16878c = fja.d(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        fjaVar.f16878c.post(runnable);
    }
}

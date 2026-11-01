package g;

import android.os.SystemClock;

/* loaded from: classes3.dex */
public abstract class cim {

    /* renamed from: a, reason: collision with root package name */
    public static final dyd f12939a;

    static {
        fcb fcbVar;
        try {
            SystemClock.elapsedRealtimeNanos();
            fcbVar = new fcb(0);
        } catch (Throwable unused) {
            SystemClock.elapsedRealtime();
            fcbVar = new fcb(1);
        }
        f12939a = fcbVar;
    }
}

package g;

import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class fga {

    /* renamed from: a, reason: collision with root package name */
    public static final cyl f16730a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f16731b;

    /* renamed from: c, reason: collision with root package name */
    public static final long f16732c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f16733d;

    /* renamed from: e, reason: collision with root package name */
    public static final acq f16734e;

    /* renamed from: f, reason: collision with root package name */
    public static final long f16735f;

    /* renamed from: g, reason: collision with root package name */
    public static final int f16736g;
    public static final cyl h;

    static {
        String str;
        int i = fst.f17352a;
        try {
            str = System.getProperty("kotlinx.coroutines.scheduler.default.name");
        } catch (SecurityException unused) {
            str = null;
        }
        if (str == null) {
            str = "DefaultDispatcher";
        }
        f16733d = str;
        f16735f = dzm.aj("kotlinx.coroutines.scheduler.resolution.ns", 100000L, 1L, Long.MAX_VALUE);
        int i2 = fst.f17352a;
        if (i2 < 2) {
            i2 = 2;
        }
        f16736g = dzm.ai(i2, 8, "kotlinx.coroutines.scheduler.core.pool.size");
        f16731b = dzm.ai(2097150, 4, "kotlinx.coroutines.scheduler.max.pool.size");
        f16732c = TimeUnit.SECONDS.toNanos(dzm.aj("kotlinx.coroutines.scheduler.keep.alive.sec", 60L, 1L, Long.MAX_VALUE));
        f16734e = acq.bd;
        h = new cyl(0);
        f16730a = new cyl(1);
    }
}

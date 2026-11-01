package g;

import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public abstract class dlb {

    /* renamed from: a, reason: collision with root package name */
    public static final SimpleDateFormat f14354a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /* renamed from: b, reason: collision with root package name */
    public static final SimpleDateFormat f14355b;

    static {
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        f14355b = new SimpleDateFormat("yyyy-MM-dd");
        new SimpleDateFormat("HH:mm:ss");
    }

    public static String c() {
        return d(System.currentTimeMillis(), f14354a);
    }

    public static String d(long j, SimpleDateFormat simpleDateFormat) {
        return simpleDateFormat.format(new Date(j));
    }
}

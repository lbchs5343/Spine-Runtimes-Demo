package g;

import j$.util.DesugarTimeZone;
import java.util.Calendar;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public abstract class fau {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReference f16492a = new AtomicReference();

    public static Calendar b(Calendar calendar) {
        Calendar d2 = d(calendar);
        Calendar d3 = d(null);
        d3.set(d2.get(1), d2.get(2), d2.get(5));
        return d3;
    }

    public static Calendar c() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        calendar.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        return calendar;
    }

    public static Calendar d(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(DesugarTimeZone.getTimeZone("UTC"));
        if (calendar == null) {
            calendar2.clear();
            return calendar2;
        }
        calendar2.setTimeInMillis(calendar.getTimeInMillis());
        return calendar2;
    }
}

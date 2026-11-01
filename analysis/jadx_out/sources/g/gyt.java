package g;

import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class gyt {

    /* renamed from: a, reason: collision with root package name */
    public long f19021a;

    /* renamed from: b, reason: collision with root package name */
    public final dyd f19022b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f19023c;

    /* renamed from: d, reason: collision with root package name */
    public long f19024d;

    public gyt(dyd dydVar) {
        if (dydVar == null) {
            throw new NullPointerException("ticker");
        }
        this.f19022b = dydVar;
    }

    public final void e() {
        if (this.f19023c) {
            throw new IllegalStateException("This stopwatch is already running.");
        }
        this.f19023c = true;
        this.f19021a = this.f19022b.bt();
    }

    public final String toString() {
        String str;
        long bt = this.f19023c ? (this.f19022b.bt() - this.f19021a) + this.f19024d : this.f19024d;
        TimeUnit timeUnit = TimeUnit.DAYS;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (timeUnit.convert(bt, timeUnit2) <= 0) {
            timeUnit = TimeUnit.HOURS;
            if (timeUnit.convert(bt, timeUnit2) <= 0) {
                timeUnit = TimeUnit.MINUTES;
                if (timeUnit.convert(bt, timeUnit2) <= 0) {
                    timeUnit = TimeUnit.SECONDS;
                    if (timeUnit.convert(bt, timeUnit2) <= 0) {
                        timeUnit = TimeUnit.MILLISECONDS;
                        if (timeUnit.convert(bt, timeUnit2) <= 0) {
                            timeUnit = TimeUnit.MICROSECONDS;
                            if (timeUnit.convert(bt, timeUnit2) <= 0) {
                                timeUnit = timeUnit2;
                            }
                        }
                    }
                }
            }
        }
        String format = String.format(Locale.ROOT, "%.4g", Double.valueOf(bt / timeUnit2.convert(1L, timeUnit)));
        switch (fcq.f16576a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = "ms";
                break;
            case 4:
                str = "s";
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = "h";
                break;
            case 7:
                str = ada.COLUMN_DOMAIN;
                break;
            default:
                throw new AssertionError();
        }
        return awf.i(format, " ", str);
    }
}

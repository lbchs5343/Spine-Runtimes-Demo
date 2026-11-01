package j$.util;

import java.util.function.DoubleConsumer;

/* renamed from: j$.util.h, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0278h implements DoubleConsumer {

    /* renamed from: a, reason: collision with root package name */
    public double f20813a;

    /* renamed from: b, reason: collision with root package name */
    public double f20814b;
    private long count;
    private double sum;
    private double min = Double.POSITIVE_INFINITY;
    private double max = Double.NEGATIVE_INFINITY;

    public final void a(C0278h c0278h) {
        this.count += c0278h.count;
        this.f20814b += c0278h.f20814b;
        b(c0278h.sum);
        b(c0278h.f20813a);
        this.min = Math.min(this.min, c0278h.min);
        this.max = Math.max(this.max, c0278h.max);
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d2) {
        this.count++;
        this.f20814b += d2;
        b(d2);
        this.min = Math.min(this.min, d2);
        this.max = Math.max(this.max, d2);
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    public final void b(double d2) {
        double d3 = d2 - this.f20813a;
        double d4 = this.sum;
        double d5 = d4 + d3;
        this.f20813a = (d5 - d4) - d3;
        this.sum = d5;
    }

    public final String toString() {
        double d2;
        String simpleName = C0278h.class.getSimpleName();
        Long valueOf = Long.valueOf(this.count);
        double d3 = this.sum + this.f20813a;
        if (Double.isNaN(d3) && Double.isInfinite(this.f20814b)) {
            d3 = this.f20814b;
        }
        Double valueOf2 = Double.valueOf(d3);
        Double valueOf3 = Double.valueOf(this.min);
        if (this.count > 0) {
            double d4 = this.sum + this.f20813a;
            if (Double.isNaN(d4) && Double.isInfinite(this.f20814b)) {
                d4 = this.f20814b;
            }
            d2 = d4 / this.count;
        } else {
            d2 = 0.0d;
        }
        return String.format("%s{count=%d, sum=%f, min=%f, average=%f, max=%f}", simpleName, valueOf, valueOf2, valueOf3, Double.valueOf(d2), Double.valueOf(this.max));
    }
}

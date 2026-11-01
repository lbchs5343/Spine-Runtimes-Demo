package j$.util;

import g.he;
import java.util.function.IntConsumer;

/* renamed from: j$.util.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0279i implements IntConsumer {
    private long count;
    private long sum;
    private int min = he.UNDEFINED_ITEM_ID;
    private int max = Integer.MIN_VALUE;

    public final void a(C0279i c0279i) {
        this.count += c0279i.count;
        this.sum += c0279i.sum;
        this.min = Math.min(this.min, c0279i.min);
        this.max = Math.max(this.max, c0279i.max);
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        this.count++;
        this.sum += i;
        this.min = Math.min(this.min, i);
        this.max = Math.max(this.max, i);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    public final String toString() {
        String simpleName = C0279i.class.getSimpleName();
        Long valueOf = Long.valueOf(this.count);
        Long valueOf2 = Long.valueOf(this.sum);
        Integer valueOf3 = Integer.valueOf(this.min);
        long j = this.count;
        return String.format("%s{count=%d, sum=%d, min=%d, average=%f, max=%d}", simpleName, valueOf, valueOf2, valueOf3, Double.valueOf(j > 0 ? this.sum / j : 0.0d), Integer.valueOf(this.max));
    }
}

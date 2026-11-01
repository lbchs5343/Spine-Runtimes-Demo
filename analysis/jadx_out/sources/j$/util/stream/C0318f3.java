package j$.util.stream;

import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.f3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0318f3 extends AbstractC0323g3 implements LongConsumer {

    /* renamed from: c, reason: collision with root package name */
    public final long[] f21032c;

    public C0318f3(int i) {
        this.f21032c = new long[i];
    }

    @Override // j$.util.stream.AbstractC0323g3
    public final void a(Object obj, long j) {
        LongConsumer longConsumer = (LongConsumer) obj;
        for (int i = 0; i < j; i++) {
            longConsumer.accept(this.f21032c[i]);
        }
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        int i = this.f21036b;
        this.f21036b = i + 1;
        this.f21032c[i] = j;
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }
}

package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.LongConsumer;

/* renamed from: j$.util.stream.r1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0375r1 extends AbstractC0385t1 implements InterfaceC0357n2 {
    public final long[] h;

    public C0375r1(Spliterator spliterator, AbstractC0405x1 abstractC0405x1, long[] jArr) {
        super(spliterator, abstractC0405x1, jArr.length);
        this.h = jArr;
    }

    public C0375r1(C0375r1 c0375r1, Spliterator spliterator, long j, long j2) {
        super(c0375r1, spliterator, j, j2, c0375r1.h.length);
        this.h = c0375r1.h;
    }

    @Override // j$.util.stream.AbstractC0385t1
    public final AbstractC0385t1 a(Spliterator spliterator, long j, long j2) {
        return new C0375r1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC0385t1, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        int i = this.f21103f;
        if (i >= this.f21104g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f21103f));
        }
        long[] jArr = this.h;
        this.f21103f = i + 1;
        jArr[i] = j;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        l((Long) obj);
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }

    @Override // j$.util.stream.InterfaceC0357n2
    public final /* synthetic */ void l(Long l) {
        AbstractC0405x1.H(this, l);
    }
}

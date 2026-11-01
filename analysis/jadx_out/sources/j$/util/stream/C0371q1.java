package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.q1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0371q1 extends AbstractC0385t1 implements InterfaceC0352m2 {
    public final int[] h;

    public C0371q1(Spliterator spliterator, AbstractC0405x1 abstractC0405x1, int[] iArr) {
        super(spliterator, abstractC0405x1, iArr.length);
        this.h = iArr;
    }

    public C0371q1(C0371q1 c0371q1, Spliterator spliterator, long j, long j2) {
        super(c0371q1, spliterator, j, j2, c0371q1.h.length);
        this.h = c0371q1.h;
    }

    @Override // j$.util.stream.AbstractC0385t1
    public final AbstractC0385t1 a(Spliterator spliterator, long j, long j2) {
        return new C0371q1(this, spliterator, j, j2);
    }

    @Override // j$.util.stream.AbstractC0385t1, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        int i2 = this.f21103f;
        if (i2 >= this.f21104g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f21103f));
        }
        int[] iArr = this.h;
        this.f21103f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final /* bridge */ /* synthetic */ void n(Object obj) {
        d((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC0352m2
    public final /* synthetic */ void d(Integer num) {
        AbstractC0405x1.F(this, num);
    }
}

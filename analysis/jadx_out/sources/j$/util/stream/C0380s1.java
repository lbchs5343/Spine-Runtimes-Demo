package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.s1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0380s1 extends AbstractC0385t1 {
    public final Object[] h;

    public C0380s1(Spliterator spliterator, AbstractC0405x1 abstractC0405x1, Object[] objArr) {
        super(spliterator, abstractC0405x1, objArr.length);
        this.h = objArr;
    }

    public C0380s1(C0380s1 c0380s1, Spliterator spliterator, long j, long j2) {
        super(c0380s1, spliterator, j, j2, c0380s1.h.length);
        this.h = c0380s1.h;
    }

    @Override // j$.util.stream.AbstractC0385t1
    public final AbstractC0385t1 a(Spliterator spliterator, long j, long j2) {
        return new C0380s1(this, spliterator, j, j2);
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        int i = this.f21103f;
        if (i >= this.f21104g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f21103f));
        }
        Object[] objArr = this.h;
        this.f21103f = i + 1;
        objArr[i] = obj;
    }
}

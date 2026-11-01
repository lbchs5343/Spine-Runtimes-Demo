package j$.util.stream;

import j$.util.Spliterator;

/* renamed from: j$.util.stream.k0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0340k0 extends AbstractC0350m0 {
    @Override // j$.util.stream.AbstractC0289a
    public final boolean O0() {
        return true;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream, j$.util.stream.E
    public final LongStream parallel() {
        this.h.r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream, j$.util.stream.E
    public final LongStream sequential() {
        this.h.r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC0293a3.ORDERED.l(this.m) ? this : new C0393v(this, EnumC0293a3.r, 4);
    }
}

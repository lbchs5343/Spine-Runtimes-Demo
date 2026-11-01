package j$.util.stream;

import j$.util.Spliterator;

/* loaded from: classes2.dex */
public abstract class A extends B {
    @Override // j$.util.stream.AbstractC0289a
    public final boolean O0() {
        return false;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream, j$.util.stream.E
    public final E parallel() {
        this.h.r = true;
        return this;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream, j$.util.stream.E
    public final E sequential() {
        this.h.r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC0289a, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC0293a3.ORDERED.l(this.m) ? this : new C0383t(this, EnumC0293a3.r, 1);
    }
}

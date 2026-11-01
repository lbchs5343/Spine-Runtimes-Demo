package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Supplier;

/* renamed from: j$.util.stream.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0289a extends AbstractC0405x1 implements BaseStream {
    public final AbstractC0289a h;
    public final AbstractC0289a i;
    public final int j;
    public final AbstractC0289a k;
    public int l;
    public int m;
    public Spliterator n;
    public boolean o;
    public final boolean p;
    public Runnable q;
    public boolean r;

    public AbstractC0289a(Spliterator spliterator, int i, boolean z) {
        this.i = null;
        this.n = spliterator;
        this.h = this;
        int i2 = EnumC0293a3.f20984g & i;
        this.j = i2;
        this.m = (~(i2 << 1)) & EnumC0293a3.l;
        this.l = 0;
        this.r = z;
    }

    public AbstractC0289a(AbstractC0289a abstractC0289a, int i) {
        if (abstractC0289a.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC0289a.o = true;
        abstractC0289a.k = this;
        this.i = abstractC0289a;
        this.j = EnumC0293a3.h & i;
        this.m = EnumC0293a3.i(i, abstractC0289a.m);
        AbstractC0289a abstractC0289a2 = abstractC0289a.h;
        this.h = abstractC0289a2;
        if (O0()) {
            abstractC0289a2.p = true;
        }
        this.l = abstractC0289a.l + 1;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final InterfaceC0362o2 E0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2) {
        f0(spliterator, F0((InterfaceC0362o2) Objects.requireNonNull(interfaceC0362o2)));
        return interfaceC0362o2;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final InterfaceC0362o2 F0(InterfaceC0362o2 interfaceC0362o2) {
        Objects.requireNonNull(interfaceC0362o2);
        for (AbstractC0289a abstractC0289a = this; abstractC0289a.l > 0; abstractC0289a = abstractC0289a.i) {
            interfaceC0362o2 = abstractC0289a.P0(abstractC0289a.i.m, interfaceC0362o2);
        }
        return interfaceC0362o2;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final Spliterator G0(Spliterator spliterator) {
        return this.l == 0 ? spliterator : S0(this, new j$.util.function.g(spliterator, 2), this.h.r);
    }

    public final Object H0(G3 g3) {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        return this.h.r ? g3.i(this, Q0(g3.v())) : g3.f(this, Q0(g3.v()));
    }

    public final I0 I0(IntFunction intFunction) {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        if (!this.h.r || this.i == null || !O0()) {
            return j0(Q0(0), true, intFunction);
        }
        this.l = 0;
        AbstractC0289a abstractC0289a = this.i;
        return M0(abstractC0289a, abstractC0289a.Q0(0), intFunction);
    }

    public abstract I0 J0(AbstractC0289a abstractC0289a, Spliterator spliterator, boolean z, IntFunction intFunction);

    public abstract boolean K0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2);

    public abstract EnumC0298b3 L0();

    public I0 M0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    public Spliterator N0(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        return M0(abstractC0289a, spliterator, new j$.time.format.a(8)).spliterator();
    }

    public abstract boolean O0();

    public abstract InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2);

    public final Spliterator Q0(int i) {
        int i2;
        int i3;
        AbstractC0289a abstractC0289a = this.h;
        Spliterator spliterator = abstractC0289a.n;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC0289a.n = null;
        if (abstractC0289a.r && abstractC0289a.p) {
            AbstractC0289a abstractC0289a2 = abstractC0289a.k;
            int i4 = 1;
            while (abstractC0289a != this) {
                int i5 = abstractC0289a2.j;
                if (abstractC0289a2.O0()) {
                    if (EnumC0293a3.SHORT_CIRCUIT.l(i5)) {
                        i5 &= ~EnumC0293a3.u;
                    }
                    spliterator = abstractC0289a2.N0(abstractC0289a, spliterator);
                    if (spliterator.hasCharacteristics(64)) {
                        i2 = (~EnumC0293a3.t) & i5;
                        i3 = EnumC0293a3.s;
                    } else {
                        i2 = (~EnumC0293a3.s) & i5;
                        i3 = EnumC0293a3.t;
                    }
                    i5 = i2 | i3;
                    i4 = 0;
                }
                int i6 = i4 + 1;
                abstractC0289a2.l = i4;
                abstractC0289a2.m = EnumC0293a3.i(i5, abstractC0289a.m);
                AbstractC0289a abstractC0289a3 = abstractC0289a2;
                abstractC0289a2 = abstractC0289a2.k;
                abstractC0289a = abstractC0289a3;
                i4 = i6;
            }
        }
        if (i != 0) {
            this.m = EnumC0293a3.i(i, this.m);
        }
        return spliterator;
    }

    public final Spliterator R0() {
        AbstractC0289a abstractC0289a = this.h;
        if (this != abstractC0289a) {
            throw new IllegalStateException();
        }
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        Spliterator spliterator = abstractC0289a.n;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC0289a.n = null;
        return spliterator;
    }

    public abstract Spliterator S0(AbstractC0289a abstractC0289a, Supplier supplier, boolean z);

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final void close() {
        this.o = true;
        this.n = null;
        AbstractC0289a abstractC0289a = this.h;
        Runnable runnable = abstractC0289a.q;
        if (runnable != null) {
            abstractC0289a.q = null;
            runnable.run();
        }
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final void f0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2) {
        Objects.requireNonNull(interfaceC0362o2);
        if (EnumC0293a3.SHORT_CIRCUIT.l(this.m)) {
            g0(spliterator, interfaceC0362o2);
            return;
        }
        interfaceC0362o2.c(spliterator.getExactSizeIfKnown());
        spliterator.forEachRemaining(interfaceC0362o2);
        interfaceC0362o2.end();
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final boolean g0(Spliterator spliterator, InterfaceC0362o2 interfaceC0362o2) {
        AbstractC0289a abstractC0289a = this;
        while (abstractC0289a.l > 0) {
            abstractC0289a = abstractC0289a.i;
        }
        interfaceC0362o2.c(spliterator.getExactSizeIfKnown());
        boolean K0 = abstractC0289a.K0(spliterator, interfaceC0362o2);
        interfaceC0362o2.end();
        return K0;
    }

    @Override // j$.util.stream.BaseStream
    public final boolean isParallel() {
        return this.h.r;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final I0 j0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.h.r) {
            return J0(this, spliterator, z, intFunction);
        }
        A0 A0 = A0(k0(spliterator), intFunction);
        E0(spliterator, A0);
        return A0.build();
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final long k0(Spliterator spliterator) {
        if (EnumC0293a3.SIZED.l(this.m)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream onClose(Runnable runnable) {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        Objects.requireNonNull(runnable);
        AbstractC0289a abstractC0289a = this.h;
        Runnable runnable2 = abstractC0289a.q;
        if (runnable2 != null) {
            runnable = new F3(runnable2, runnable);
        }
        abstractC0289a.q = runnable;
        return this;
    }

    public final BaseStream parallel() {
        this.h.r = true;
        return this;
    }

    public final BaseStream sequential() {
        this.h.r = false;
        return this;
    }

    public Spliterator spliterator() {
        if (this.o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.o = true;
        AbstractC0289a abstractC0289a = this.h;
        if (this != abstractC0289a) {
            return S0(this, new j$.util.function.g(this, 1), abstractC0289a.r);
        }
        Spliterator spliterator = abstractC0289a.n;
        if (spliterator == null) {
            throw new IllegalStateException("source already consumed or closed");
        }
        abstractC0289a.n = null;
        return spliterator;
    }
}

package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class Z3 extends AbstractC0294b {
    public final AbstractC0289a j;
    public final IntFunction k;
    public final boolean l;
    public long m;
    public boolean n;
    public volatile boolean o;

    public Z3(Z3 z3, Spliterator spliterator) {
        super(z3, spliterator);
        this.j = z3.j;
        this.k = z3.k;
        this.l = z3.l;
    }

    public Z3(AbstractC0289a abstractC0289a, AbstractC0405x1 abstractC0405x1, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC0405x1, spliterator);
        this.j = abstractC0289a;
        this.k = intFunction;
        this.l = EnumC0293a3.ORDERED.l(((AbstractC0289a) abstractC0405x1).m);
    }

    @Override // j$.util.stream.AbstractC0304d
    public final Object a() {
        A0 A0 = this.f21009a.A0(-1L, this.k);
        InterfaceC0362o2 P0 = this.j.P0(((AbstractC0289a) this.f21009a).m, A0);
        AbstractC0405x1 abstractC0405x1 = this.f21009a;
        boolean g0 = abstractC0405x1.g0(this.f21010b, abstractC0405x1.F0(P0));
        this.n = g0;
        if (g0) {
            g();
        }
        I0 build = A0.build();
        this.m = build.count();
        return build;
    }

    @Override // j$.util.stream.AbstractC0304d
    public final AbstractC0304d c(Spliterator spliterator) {
        return new Z3(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0294b
    public final void f() {
        this.i = true;
        if (this.l && this.o) {
            d(AbstractC0405x1.i0(this.j.L0()));
        }
    }

    @Override // j$.util.stream.AbstractC0294b
    public final Object h() {
        return AbstractC0405x1.i0(this.j.L0());
    }

    @Override // j$.util.stream.AbstractC0304d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object e0;
        AbstractC0304d abstractC0304d = this.f21012d;
        if (abstractC0304d != null) {
            this.n = ((Z3) abstractC0304d).n | ((Z3) this.f21013e).n;
            if (this.l && this.i) {
                this.m = 0L;
                e0 = AbstractC0405x1.i0(this.j.L0());
            } else {
                if (this.l) {
                    Z3 z3 = (Z3) this.f21012d;
                    if (z3.n) {
                        this.m = z3.m;
                        e0 = (I0) z3.i();
                    }
                }
                Z3 z32 = (Z3) this.f21012d;
                long j = z32.m;
                Z3 z33 = (Z3) this.f21013e;
                this.m = j + z33.m;
                e0 = z32.m == 0 ? (I0) z33.i() : z33.m == 0 ? (I0) z32.i() : AbstractC0405x1.e0(this.j.L0(), (I0) ((Z3) this.f21012d).i(), (I0) ((Z3) this.f21013e).i());
            }
            d(e0);
        }
        this.o = true;
        super.onCompletion(countedCompleter);
    }
}

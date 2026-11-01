package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.y2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0411y2 extends AbstractC0294b {
    public final AbstractC0289a j;
    public final IntFunction k;
    public final long l;
    public final long m;
    public long n;
    public volatile boolean o;

    public C0411y2(AbstractC0289a abstractC0289a, AbstractC0405x1 abstractC0405x1, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC0405x1, spliterator);
        this.j = abstractC0289a;
        this.k = intFunction;
        this.l = j;
        this.m = j2;
    }

    public C0411y2(C0411y2 c0411y2, Spliterator spliterator) {
        super(c0411y2, spliterator);
        this.j = c0411y2.j;
        this.k = c0411y2.k;
        this.l = c0411y2.l;
        this.m = c0411y2.m;
    }

    @Override // j$.util.stream.AbstractC0304d
    public final Object a() {
        if (b()) {
            EnumC0293a3 enumC0293a3 = EnumC0293a3.SIZED;
            AbstractC0289a abstractC0289a = this.j;
            int i = abstractC0289a.j;
            int i2 = enumC0293a3.f20989e;
            A0 A0 = this.j.A0((i & i2) == i2 ? abstractC0289a.k0(this.f21010b) : -1L, this.k);
            InterfaceC0362o2 P0 = this.j.P0(((AbstractC0289a) this.f21009a).m, A0);
            AbstractC0405x1 abstractC0405x1 = this.f21009a;
            abstractC0405x1.g0(this.f21010b, abstractC0405x1.F0(P0));
            return A0.build();
        }
        A0 A02 = this.j.A0(-1L, this.k);
        if (this.l == 0) {
            InterfaceC0362o2 P02 = this.j.P0(((AbstractC0289a) this.f21009a).m, A02);
            AbstractC0405x1 abstractC0405x12 = this.f21009a;
            abstractC0405x12.g0(this.f21010b, abstractC0405x12.F0(P02));
        } else {
            this.f21009a.E0(this.f21010b, A02);
        }
        I0 build = A02.build();
        this.n = build.count();
        this.o = true;
        this.f21010b = null;
        return build;
    }

    @Override // j$.util.stream.AbstractC0304d
    public final AbstractC0304d c(Spliterator spliterator) {
        return new C0411y2(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0294b
    public final void f() {
        this.i = true;
        if (this.o) {
            d(AbstractC0405x1.i0(this.j.L0()));
        }
    }

    @Override // j$.util.stream.AbstractC0294b
    public final Object h() {
        return AbstractC0405x1.i0(this.j.L0());
    }

    public final long j(long j) {
        if (this.o) {
            return this.n;
        }
        C0411y2 c0411y2 = (C0411y2) this.f21012d;
        C0411y2 c0411y22 = (C0411y2) this.f21013e;
        if (c0411y2 == null || c0411y22 == null) {
            return this.n;
        }
        long j2 = c0411y2.j(j);
        return j2 >= j ? j2 : c0411y22.j(j) + j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x00e7, code lost:
    
        if (r2 >= r0) goto L49;
     */
    @Override // j$.util.stream.AbstractC0304d, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCompletion(CountedCompleter countedCompleter) {
        C0411y2 c0411y2;
        I0 i0;
        AbstractC0304d abstractC0304d = this.f21012d;
        if (abstractC0304d != null) {
            this.n = ((C0411y2) abstractC0304d).n + ((C0411y2) this.f21013e).n;
            if (this.i) {
                this.n = 0L;
                i0 = AbstractC0405x1.i0(this.j.L0());
            } else {
                i0 = this.n == 0 ? AbstractC0405x1.i0(this.j.L0()) : ((C0411y2) this.f21012d).n == 0 ? (I0) ((C0411y2) this.f21013e).i() : AbstractC0405x1.e0(this.j.L0(), (I0) ((C0411y2) this.f21012d).i(), (I0) ((C0411y2) this.f21013e).i());
            }
            I0 i02 = i0;
            if (b()) {
                i02 = i02.i(this.l, this.m >= 0 ? Math.min(i02.count(), this.l + this.m) : this.n, this.k);
            }
            d(i02);
            this.o = true;
        }
        if (this.m >= 0 && !b()) {
            long j = this.l + this.m;
            long j2 = this.o ? this.n : j(j);
            if (j2 < j) {
                C0411y2 c0411y22 = (C0411y2) ((AbstractC0304d) getCompleter());
                C0411y2 c0411y23 = this;
                while (true) {
                    if (c0411y22 != null) {
                        if (c0411y23 == c0411y22.f21013e && (c0411y2 = (C0411y2) c0411y22.f21012d) != null) {
                            long j3 = c0411y2.j(j) + j2;
                            if (j3 >= j) {
                                break;
                            } else {
                                j2 = j3;
                            }
                        }
                        c0411y23 = c0411y22;
                        c0411y22 = (C0411y2) ((AbstractC0304d) c0411y22.getCompleter());
                    }
                }
            }
            g();
        }
        super.onCompletion(countedCompleter);
    }
}

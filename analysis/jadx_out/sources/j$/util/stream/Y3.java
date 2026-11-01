package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class Y3 extends AbstractC0304d {
    public final AbstractC0289a h;
    public final IntFunction i;
    public final boolean j;
    public long k;
    public long l;

    public Y3(Y3 y3, Spliterator spliterator) {
        super(y3, spliterator);
        this.h = y3.h;
        this.i = y3.i;
        this.j = y3.j;
    }

    public Y3(AbstractC0289a abstractC0289a, AbstractC0405x1 abstractC0405x1, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC0405x1, spliterator);
        this.h = abstractC0289a;
        this.i = intFunction;
        this.j = EnumC0293a3.ORDERED.l(((AbstractC0289a) abstractC0405x1).m);
    }

    @Override // j$.util.stream.AbstractC0304d
    public final Object a() {
        long j;
        boolean b2 = b();
        if (!b2 && this.j) {
            EnumC0293a3 enumC0293a3 = EnumC0293a3.SIZED;
            AbstractC0289a abstractC0289a = this.h;
            int i = abstractC0289a.j;
            int i2 = enumC0293a3.f20989e;
            if ((i & i2) == i2) {
                j = abstractC0289a.k0(this.f21010b);
                A0 A0 = this.f21009a.A0(j, this.i);
                X3 h = ((W3) this.h).h(A0, (this.j || b2) ? false : true);
                this.f21009a.E0(this.f21010b, h);
                I0 build = A0.build();
                this.k = build.count();
                this.l = h.h();
                return build;
            }
        }
        j = -1;
        A0 A02 = this.f21009a.A0(j, this.i);
        X3 h2 = ((W3) this.h).h(A02, (this.j || b2) ? false : true);
        this.f21009a.E0(this.f21010b, h2);
        I0 build2 = A02.build();
        this.k = build2.count();
        this.l = h2.h();
        return build2;
    }

    @Override // j$.util.stream.AbstractC0304d
    public final AbstractC0304d c(Spliterator spliterator) {
        return new Y3(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0304d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC0304d abstractC0304d = this.f21012d;
        if (abstractC0304d != null) {
            if (this.j) {
                Y3 y3 = (Y3) abstractC0304d;
                long j = y3.l;
                this.l = j;
                if (j == y3.k) {
                    this.l = j + ((Y3) this.f21013e).l;
                }
            }
            Y3 y32 = (Y3) abstractC0304d;
            long j2 = y32.k;
            Y3 y33 = (Y3) this.f21013e;
            this.k = j2 + y33.k;
            I0 e0 = y32.k == 0 ? (I0) y33.f21014f : y33.k == 0 ? (I0) y32.f21014f : AbstractC0405x1.e0(this.h.L0(), (I0) ((Y3) this.f21012d).f21014f, (I0) ((Y3) this.f21013e).f21014f);
            if (b() && this.j) {
                e0 = e0.i(this.l, e0.count(), this.i);
            }
            this.f21014f = e0;
        }
        super.onCompletion(countedCompleter);
    }
}

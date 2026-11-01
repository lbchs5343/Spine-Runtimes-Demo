package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;

/* loaded from: classes2.dex */
public final class Z1 extends AbstractC0304d {
    public final AbstractC0405x1 h;

    public Z1(Z1 z1, Spliterator spliterator) {
        super(z1, spliterator);
        this.h = z1.h;
    }

    public Z1(AbstractC0405x1 abstractC0405x1, AbstractC0405x1 abstractC0405x12, Spliterator spliterator) {
        super(abstractC0405x12, spliterator);
        this.h = abstractC0405x1;
    }

    @Override // j$.util.stream.AbstractC0304d
    public final Object a() {
        AbstractC0405x1 abstractC0405x1 = this.f21009a;
        S1 D0 = this.h.D0();
        abstractC0405x1.E0(this.f21010b, D0);
        return D0;
    }

    @Override // j$.util.stream.AbstractC0304d
    public final AbstractC0304d c(Spliterator spliterator) {
        return new Z1(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0304d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC0304d abstractC0304d = this.f21012d;
        if (abstractC0304d != null) {
            S1 s1 = (S1) ((Z1) abstractC0304d).f21014f;
            s1.j((S1) ((Z1) this.f21013e).f21014f);
            this.f21014f = s1;
        }
        super.onCompletion(countedCompleter);
    }
}

package j$.util.stream;

import j$.util.Spliterator;
import java.util.concurrent.CountedCompleter;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
public class O0 extends AbstractC0304d {
    public final AbstractC0405x1 h;
    public final LongFunction i;
    public final BinaryOperator j;

    public O0(O0 o0, Spliterator spliterator) {
        super(o0, spliterator);
        this.h = o0.h;
        this.i = o0.i;
        this.j = o0.j;
    }

    public O0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator) {
        super(abstractC0405x1, spliterator);
        this.h = abstractC0405x1;
        this.i = longFunction;
        this.j = binaryOperator;
    }

    @Override // j$.util.stream.AbstractC0304d
    public AbstractC0304d c(Spliterator spliterator) {
        return new O0(this, spliterator);
    }

    @Override // j$.util.stream.AbstractC0304d
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public final I0 a() {
        A0 a0 = (A0) this.i.apply(this.h.k0(this.f21010b));
        this.h.E0(this.f21010b, a0);
        return a0.build();
    }

    @Override // j$.util.stream.AbstractC0304d, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC0304d abstractC0304d = this.f21012d;
        if (abstractC0304d != null) {
            this.f21014f = (I0) this.j.apply((I0) ((O0) abstractC0304d).f21014f, (I0) ((O0) this.f21013e).f21014f);
        }
        super.onCompletion(countedCompleter);
    }
}

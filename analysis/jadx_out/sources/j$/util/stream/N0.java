package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* loaded from: classes2.dex */
public final class N0 extends O0 {
    public final /* synthetic */ int k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ N0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator, int i) {
        super(abstractC0405x1, spliterator, longFunction, binaryOperator);
        this.k = i;
    }

    @Override // j$.util.stream.O0, j$.util.stream.AbstractC0304d
    public final /* bridge */ /* synthetic */ Object a() {
        switch (this.k) {
        }
        return a();
    }

    @Override // j$.util.stream.O0, j$.util.stream.AbstractC0304d
    public final AbstractC0304d c(Spliterator spliterator) {
        switch (this.k) {
        }
        return new O0(this, spliterator);
    }
}

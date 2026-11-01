package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import java.util.Arrays;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class G2 extends AbstractC0413z {
    public final /* synthetic */ int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ G2(AbstractC0289a abstractC0289a, int i, int i2) {
        super(abstractC0289a, i);
        this.s = i2;
    }

    @Override // j$.util.stream.AbstractC0289a
    public final I0 M0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, IntFunction intFunction) {
        switch (this.s) {
            case 0:
                if (EnumC0293a3.SORTED.l(((AbstractC0289a) abstractC0405x1).m)) {
                    return abstractC0405x1.j0(spliterator, false, intFunction);
                }
                double[] dArr = (double[]) ((C0) abstractC0405x1.j0(spliterator, true, intFunction)).b();
                Arrays.sort(dArr);
                return new U0(dArr);
            default:
                return (I0) new Z3(this, abstractC0405x1, spliterator, intFunction).invoke();
        }
    }

    @Override // j$.util.stream.AbstractC0289a
    public Spliterator N0(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        switch (this.s) {
            case 1:
                return EnumC0293a3.ORDERED.l(abstractC0289a.m) ? M0(abstractC0289a, spliterator, new S3(0)).spliterator() : new a4((j$.util.D) abstractC0289a.G0(spliterator), 1);
            default:
                return super.N0(abstractC0289a, spliterator);
        }
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        switch (this.s) {
            case 0:
                Objects.requireNonNull(interfaceC0362o2);
                if (EnumC0293a3.SORTED.l(i)) {
                    return interfaceC0362o2;
                }
                return EnumC0293a3.SIZED.l(i) ? new L2(interfaceC0362o2) : new D2(interfaceC0362o2);
            default:
                return new T3(this, interfaceC0362o2);
        }
    }
}

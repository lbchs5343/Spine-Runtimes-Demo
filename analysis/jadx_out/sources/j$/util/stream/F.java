package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.Predicate;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public final class F implements G3 {

    /* renamed from: a, reason: collision with root package name */
    public final int f20856a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f20857b;

    /* renamed from: c, reason: collision with root package name */
    public final Predicate f20858c;

    /* renamed from: d, reason: collision with root package name */
    public final Supplier f20859d;

    public F(boolean z, EnumC0298b3 enumC0298b3, Object obj, Predicate predicate, Supplier supplier) {
        this.f20856a = (z ? 0 : EnumC0293a3.r) | EnumC0293a3.u;
        this.f20857b = obj;
        this.f20858c = predicate;
        this.f20859d = supplier;
    }

    @Override // j$.util.stream.G3
    public final Object f(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        H3 h3 = (H3) this.f20859d.get();
        abstractC0289a.E0(spliterator, h3);
        Object obj = h3.get();
        return obj != null ? obj : this.f20857b;
    }

    @Override // j$.util.stream.G3
    public final Object i(AbstractC0405x1 abstractC0405x1, Spliterator spliterator) {
        AbstractC0289a abstractC0289a = (AbstractC0289a) abstractC0405x1;
        return new L(this, EnumC0293a3.ORDERED.l(abstractC0289a.m), abstractC0289a, spliterator).invoke();
    }

    @Override // j$.util.stream.G3
    public final int v() {
        return this.f20856a;
    }
}

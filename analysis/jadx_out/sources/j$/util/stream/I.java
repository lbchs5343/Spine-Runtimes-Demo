package j$.util.stream;

import j$.util.C0283m;
import java.util.function.LongConsumer;

/* loaded from: classes2.dex */
public final class I extends K implements InterfaceC0357n2 {

    /* renamed from: c, reason: collision with root package name */
    public static final F f20874c;

    /* renamed from: d, reason: collision with root package name */
    public static final F f20875d;

    static {
        EnumC0298b3 enumC0298b3 = EnumC0298b3.LONG_VALUE;
        C0364p c0364p = new C0364p(14);
        C0364p c0364p2 = new C0364p(15);
        C0283m c0283m = C0283m.f20818c;
        f20874c = new F(true, enumC0298b3, c0283m, c0364p, c0364p2);
        f20875d = new F(false, enumC0298b3, c0283m, new C0364p(14), new C0364p(15));
    }

    @Override // j$.util.stream.K, j$.util.stream.InterfaceC0362o2
    public final void accept(long j) {
        n(Long.valueOf(j));
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f20884a) {
            return new C0283m(((Long) this.f20885b).longValue());
        }
        return null;
    }
}

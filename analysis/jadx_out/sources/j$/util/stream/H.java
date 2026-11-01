package j$.util.stream;

import j$.util.OptionalInt;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final class H extends K implements InterfaceC0352m2 {

    /* renamed from: c, reason: collision with root package name */
    public static final F f20869c;

    /* renamed from: d, reason: collision with root package name */
    public static final F f20870d;

    static {
        EnumC0298b3 enumC0298b3 = EnumC0298b3.INT_VALUE;
        C0364p c0364p = new C0364p(12);
        C0364p c0364p2 = new C0364p(13);
        OptionalInt optionalInt = OptionalInt.f20682c;
        f20869c = new F(true, enumC0298b3, optionalInt, c0364p, c0364p2);
        f20870d = new F(false, enumC0298b3, optionalInt, new C0364p(12), new C0364p(13));
    }

    @Override // j$.util.stream.K, j$.util.stream.InterfaceC0362o2
    public final void accept(int i) {
        n(Integer.valueOf(i));
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f20884a) {
            return new OptionalInt(((Integer) this.f20885b).intValue());
        }
        return null;
    }
}

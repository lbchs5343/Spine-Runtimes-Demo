package j$.util.stream;

import j$.util.Optional;

/* loaded from: classes2.dex */
public final class J extends K {

    /* renamed from: c, reason: collision with root package name */
    public static final F f20881c;

    /* renamed from: d, reason: collision with root package name */
    public static final F f20882d;

    static {
        EnumC0298b3 enumC0298b3 = EnumC0298b3.REFERENCE;
        f20881c = new F(true, enumC0298b3, Optional.empty(), new C0364p(16), new C0364p(17));
        f20882d = new F(false, enumC0298b3, Optional.empty(), new C0364p(16), new C0364p(17));
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f20884a) {
            return Optional.of(this.f20885b);
        }
        return null;
    }
}

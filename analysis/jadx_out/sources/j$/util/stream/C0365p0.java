package j$.util.stream;

import java.util.function.Supplier;

/* renamed from: j$.util.stream.p0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0365p0 implements Supplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21084a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ EnumC0394v0 f21085b;

    public /* synthetic */ C0365p0(EnumC0394v0 enumC0394v0, int i) {
        this.f21084a = i;
        this.f21085b = enumC0394v0;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        switch (this.f21084a) {
            case 0:
                return new C0379s0(this.f21085b);
            case 1:
                return new C0374r0(this.f21085b);
            default:
                return new C0384t0(this.f21085b);
        }
    }
}

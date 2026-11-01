package j$.util.stream;

import java.util.Comparator;

/* loaded from: classes2.dex */
public abstract class C2 extends AbstractC0342k2 {

    /* renamed from: b, reason: collision with root package name */
    public final Comparator f20837b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20838c;

    public C2(InterfaceC0362o2 interfaceC0362o2, Comparator comparator) {
        super(interfaceC0362o2);
        this.f20837b = comparator;
    }

    @Override // j$.util.stream.AbstractC0342k2, j$.util.stream.InterfaceC0362o2
    public final boolean e() {
        this.f20838c = true;
        return false;
    }
}

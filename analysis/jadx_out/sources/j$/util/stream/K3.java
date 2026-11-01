package j$.util.stream;

/* loaded from: classes2.dex */
public final class K3 extends AbstractC0342k2 implements X3 {

    /* renamed from: b, reason: collision with root package name */
    public long f20893b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f20894c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f20895d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ L3 f20896e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public K3(L3 l3, InterfaceC0362o2 interfaceC0362o2, boolean z) {
        super(interfaceC0362o2);
        this.f20896e = l3;
        this.f20895d = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z;
        boolean z2;
        if (!this.f20894c) {
            boolean test = this.f20896e.s.test(obj);
            this.f20894c = !test;
            if (test) {
                z = false;
                z2 = this.f20895d;
                if (z2 && !z) {
                    this.f20893b++;
                }
                if (!z2 || z) {
                    this.f21057a.accept((InterfaceC0362o2) obj);
                }
                return;
            }
        }
        z = true;
        z2 = this.f20895d;
        if (z2) {
            this.f20893b++;
        }
        if (z2) {
        }
        this.f21057a.accept((InterfaceC0362o2) obj);
    }

    @Override // j$.util.stream.X3
    public final long h() {
        return this.f20893b;
    }
}

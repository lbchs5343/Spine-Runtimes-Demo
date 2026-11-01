package j$.util.stream;

/* loaded from: classes2.dex */
public abstract class K0 implements I0 {

    /* renamed from: a, reason: collision with root package name */
    public final I0 f20886a;

    /* renamed from: b, reason: collision with root package name */
    public final I0 f20887b;

    /* renamed from: c, reason: collision with root package name */
    public final long f20888c;

    public K0(I0 i0, I0 i02) {
        this.f20886a = i0;
        this.f20887b = i02;
        this.f20888c = i02.count() + i0.count();
    }

    @Override // j$.util.stream.I0
    public /* bridge */ /* synthetic */ H0 a(int i) {
        return (H0) a(i);
    }

    @Override // j$.util.stream.I0
    public final I0 a(int i) {
        if (i == 0) {
            return this.f20886a;
        }
        if (i == 1) {
            return this.f20887b;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.I0
    public final long count() {
        return this.f20888c;
    }

    @Override // j$.util.stream.I0
    public final int o() {
        return 2;
    }
}

package j$.util.stream;

/* loaded from: classes2.dex */
public final class X1 extends Y1 {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f20975b++;
    }

    @Override // j$.util.stream.T1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f20975b);
    }

    @Override // j$.util.stream.S1
    public final void j(S1 s1) {
        this.f20975b += ((Y1) s1).f20975b;
    }
}

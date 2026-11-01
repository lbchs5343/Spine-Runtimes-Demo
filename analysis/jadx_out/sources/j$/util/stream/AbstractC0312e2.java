package j$.util.stream;

/* renamed from: j$.util.stream.e2, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0312e2 extends AbstractC0322g2 {
    @Override // j$.util.stream.AbstractC0289a
    public final boolean O0() {
        return true;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC0293a3.ORDERED.l(this.m) ? this : new C0297b2(this, EnumC0293a3.r);
    }
}

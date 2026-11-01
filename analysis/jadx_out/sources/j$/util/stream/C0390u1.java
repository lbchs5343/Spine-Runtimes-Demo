package j$.util.stream;

import java.util.function.IntFunction;

/* renamed from: j$.util.stream.u1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0390u1 extends Y2 implements I0, A0 {
    @Override // j$.util.stream.I0
    public final I0 a(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final /* synthetic */ void accept(double d2) {
        AbstractC0405x1.C();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(int i) {
        AbstractC0405x1.J();
        throw null;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ void accept(long j) {
        AbstractC0405x1.K();
        throw null;
    }

    @Override // j$.util.stream.A0
    public final I0 build() {
        return this;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void c(long j) {
        clear();
        p(j);
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final /* synthetic */ boolean e() {
        return false;
    }

    @Override // j$.util.stream.InterfaceC0362o2
    public final void end() {
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ I0 i(long j, long j2, IntFunction intFunction) {
        return AbstractC0405x1.V(this, j, j2, intFunction);
    }

    @Override // j$.util.stream.I0
    public final void k(Object[] objArr, int i) {
        long j = i;
        long count = count() + j;
        if (count > objArr.length || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f20997c == 0) {
            System.arraycopy(this.f20976e, 0, objArr, i, this.f20996b);
            return;
        }
        for (int i2 = 0; i2 < this.f20997c; i2++) {
            Object[] objArr2 = this.f20977f[i2];
            System.arraycopy(objArr2, 0, objArr, i, objArr2.length);
            i += this.f20977f[i2].length;
        }
        int i3 = this.f20996b;
        if (i3 > 0) {
            System.arraycopy(this.f20976e, 0, objArr, i, i3);
        }
    }

    @Override // j$.util.stream.I0
    public final Object[] m(IntFunction intFunction) {
        long count = count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object[] objArr = (Object[]) intFunction.apply((int) count);
        k(objArr, 0);
        return objArr;
    }

    @Override // j$.util.stream.I0
    public final /* synthetic */ int o() {
        return 0;
    }
}

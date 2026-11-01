package j$.util.stream;

import java.util.function.IntConsumer;

/* renamed from: j$.util.stream.e3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0313e3 extends AbstractC0323g3 implements IntConsumer {

    /* renamed from: c, reason: collision with root package name */
    public final int[] f21024c;

    public C0313e3(int i) {
        this.f21024c = new int[i];
    }

    @Override // j$.util.stream.AbstractC0323g3
    public final void a(Object obj, long j) {
        IntConsumer intConsumer = (IntConsumer) obj;
        for (int i = 0; i < j; i++) {
            intConsumer.accept(this.f21024c[i]);
        }
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        int i2 = this.f21036b;
        this.f21036b = i2 + 1;
        this.f21024c[i2] = i;
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }
}

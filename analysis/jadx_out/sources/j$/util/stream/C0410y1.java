package j$.util.stream;

import java.util.function.LongBinaryOperator;

/* renamed from: j$.util.stream.y1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0410y1 extends AbstractC0405x1 {
    public final /* synthetic */ LongBinaryOperator h;
    public final /* synthetic */ long i;

    public C0410y1(EnumC0298b3 enumC0298b3, LongBinaryOperator longBinaryOperator, long j) {
        this.h = longBinaryOperator;
        this.i = j;
    }

    @Override // j$.util.stream.AbstractC0405x1
    public final S1 D0() {
        return new Q1(this.i, this.h);
    }
}

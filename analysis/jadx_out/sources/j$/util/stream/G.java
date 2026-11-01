package j$.util.stream;

import j$.util.C0282l;
import java.util.function.DoubleConsumer;

/* loaded from: classes2.dex */
public final class G extends K implements InterfaceC0347l2 {

    /* renamed from: c, reason: collision with root package name */
    public static final F f20867c;

    /* renamed from: d, reason: collision with root package name */
    public static final F f20868d;

    static {
        EnumC0298b3 enumC0298b3 = EnumC0298b3.DOUBLE_VALUE;
        C0364p c0364p = new C0364p(10);
        C0364p c0364p2 = new C0364p(11);
        C0282l c0282l = C0282l.f20815c;
        f20867c = new F(true, enumC0298b3, c0282l, c0364p, c0364p2);
        f20868d = new F(false, enumC0298b3, c0282l, new C0364p(10), new C0364p(11));
    }

    @Override // j$.util.stream.K, j$.util.stream.InterfaceC0362o2, j$.util.stream.InterfaceC0347l2, java.util.function.DoubleConsumer
    public final void accept(double d2) {
        n(Double.valueOf(d2));
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (this.f20884a) {
            return new C0282l(((Double) this.f20885b).doubleValue());
        }
        return null;
    }
}

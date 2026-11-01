package j$.util;

import j$.util.stream.InterfaceC0362o2;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* renamed from: j$.util.n, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0284n implements DoubleConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20821a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Consumer f20822b;

    public /* synthetic */ C0284n(Consumer consumer, int i) {
        this.f20821a = i;
        this.f20822b = consumer;
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d2) {
        switch (this.f20821a) {
            case 0:
                this.f20822b.accept(Double.valueOf(d2));
                break;
            default:
                ((InterfaceC0362o2) this.f20822b).accept(d2);
                break;
        }
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f20821a) {
        }
        return j$.com.android.tools.r8.a.b(this, doubleConsumer);
    }
}

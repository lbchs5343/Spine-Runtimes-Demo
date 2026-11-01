package j$.util;

import j$.util.stream.InterfaceC0362o2;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* loaded from: classes2.dex */
public final /* synthetic */ class r implements IntConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20825a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Consumer f20826b;

    public /* synthetic */ r(Consumer consumer, int i) {
        this.f20825a = i;
        this.f20826b = consumer;
    }

    @Override // java.util.function.IntConsumer
    public final void accept(int i) {
        switch (this.f20825a) {
            case 0:
                this.f20826b.accept(Integer.valueOf(i));
                break;
            default:
                ((InterfaceC0362o2) this.f20826b).accept(i);
                break;
        }
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        switch (this.f20825a) {
        }
        return j$.util.function.l.$default$andThen(this, intConsumer);
    }
}

package j$.util;

import j$.util.stream.InterfaceC0362o2;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* renamed from: j$.util.v, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0420v implements LongConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f21144a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Consumer f21145b;

    public /* synthetic */ C0420v(Consumer consumer, int i) {
        this.f21144a = i;
        this.f21145b = consumer;
    }

    @Override // java.util.function.LongConsumer
    public final void accept(long j) {
        switch (this.f21144a) {
            case 0:
                this.f21145b.accept(Long.valueOf(j));
                break;
            default:
                ((InterfaceC0362o2) this.f21145b).accept(j);
                break;
        }
    }

    public final /* synthetic */ LongConsumer andThen(LongConsumer longConsumer) {
        switch (this.f21144a) {
        }
        return j$.com.android.tools.r8.a.c(this, longConsumer);
    }
}

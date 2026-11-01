package j$.util.stream;

import java.util.function.Consumer;

/* renamed from: j$.util.stream.h3, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0328h3 extends AbstractC0333i3 implements Consumer {

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f21042b;

    public C0328h3(int i) {
        this.f21042b = new Object[i];
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        int i = this.f21045a;
        this.f21045a = i + 1;
        this.f21042b[i] = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}

package g;

import java.util.function.Consumer;

/* loaded from: classes3.dex */
public final /* synthetic */ class xw implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20325a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cbl f20326b;

    public /* synthetic */ xw(cbl cblVar, int i) {
        this.f20325a = i;
        this.f20326b = cblVar;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f20325a) {
            case 0:
                this.f20326b.getClass();
                throw null;
            default:
                this.f20326b.getClass();
                throw null;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f20325a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}

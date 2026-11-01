package g;

import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class dti implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14766a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ duk f14767b;

    public /* synthetic */ dti(duk dukVar, int i) {
        this.f14766a = i;
        this.f14767b = dukVar;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        hcd hcdVar = (hcd) obj;
        switch (this.f14766a) {
            case 0:
                this.f14767b.f14836b.put(hcdVar.f19217g.f14712e, hcdVar);
                break;
            default:
                this.f14767b.f14836b.put(hcdVar.f19217g.f14712e, hcdVar);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f14766a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}

package g;

import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class ean implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15201a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ sm f15202b;

    public /* synthetic */ ean(sm smVar, int i) {
        this.f15201a = i;
        this.f15202b = smVar;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        switch (this.f15201a) {
            case 0:
                acq acqVar = acq.m;
                sm smVar = this.f15202b;
                frs frsVar = (frs) smVar.k(acqVar);
                if (frsVar == null) {
                    frsVar = new frs(acqVar);
                    smVar.i(new agx(2, frsVar));
                }
                frsVar.f17307b.add(obj);
                break;
            default:
                ((Map) obj).putAll(this.f15202b.f19984c);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f15201a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}

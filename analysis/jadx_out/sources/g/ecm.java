package g;

import j$.lang.Iterable;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class ecm implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15311a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ dxg f15312b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ cci f15313c;

    public /* synthetic */ ecm(dxg dxgVar, cci cciVar, int i) {
        this.f15311a = i;
        this.f15312b = dxgVar;
        this.f15313c = cciVar;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        switch (this.f15311a) {
            case 0:
                this.f15312b.l(this.f15313c, (ks) ((hcd) obj).l.k(ao.q));
                break;
            case 1:
                hed hedVar = (hed) obj;
                ks ksVar = (ks) hedVar.l.k(ao.q);
                dxg dxgVar = this.f15312b;
                cci cciVar = this.f15313c;
                dxgVar.l(cciVar, ksVar);
                gca gcaVar = (gca) hedVar.l.k(ao.i);
                if (gcaVar != null) {
                    Iterable.b.forEach(gcaVar.f17880a, new ecm(dxgVar, cciVar, 2));
                    break;
                }
                break;
            default:
                this.f15312b.l(this.f15313c, (ks) obj);
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f15311a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}

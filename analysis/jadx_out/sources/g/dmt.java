package g;

import java.util.function.Consumer;

/* loaded from: classes.dex */
public final /* synthetic */ class dmt implements Consumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14441a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fza f14442b;

    public /* synthetic */ dmt(fza fzaVar, int i) {
        this.f14441a = i;
        this.f14442b = fzaVar;
    }

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        fza fzaVar = (fza) obj;
        switch (this.f14441a) {
            case 0:
                fza fzaVar2 = this.f14442b;
                if (fzaVar2.f17687g.get(fzaVar.x) || fzaVar2 == fzaVar) {
                    fzaVar.w(csv.LOOP_START);
                    fzaVar2.w(csv.LOOP_END);
                    gcv gcvVar = new gcv(ffb.x(fzaVar, fzaVar2), fzaVar, fzaVar2);
                    acq acqVar = acq.at;
                    fzaVar.o(acqVar, gcvVar);
                    fzaVar2.o(acqVar, gcvVar);
                    break;
                }
            default:
                fzaVar.f17684d.remove(this.f14442b);
                fzaVar.ad();
                break;
        }
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        int i = this.f14441a;
        return j$.util.function.j.$default$andThen(this, consumer);
    }
}

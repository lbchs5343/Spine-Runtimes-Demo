package g;

import android.app.Activity;

/* loaded from: classes3.dex */
public final class aba extends bvf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eoa f9895a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f9896b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Activity f9897c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aba(eoa eoaVar, Activity activity, int i) {
        super((bhz) eoaVar.f15883b, true);
        this.f9896b = i;
        switch (i) {
            case 1:
                this.f9895a = eoaVar;
                this.f9897c = activity;
                super((bhz) eoaVar.f15883b, true);
                break;
            case 2:
                this.f9895a = eoaVar;
                this.f9897c = activity;
                super((bhz) eoaVar.f15883b, true);
                break;
            case 3:
                this.f9895a = eoaVar;
                this.f9897c = activity;
                super((bhz) eoaVar.f15883b, true);
                break;
            case 4:
                this.f9895a = eoaVar;
                this.f9897c = activity;
                super((bhz) eoaVar.f15883b, true);
                break;
            default:
                this.f9895a = eoaVar;
                this.f9897c = activity;
                break;
        }
    }

    @Override // g.bvf
    public final void g() {
        switch (this.f9896b) {
            case 0:
                ees eesVar = ((bhz) this.f9895a.f15883b).f11621e;
                ckd.k(eesVar);
                eesVar.onActivityStarted(new bpp(this.f9897c), this.l);
                break;
            case 1:
                ees eesVar2 = ((bhz) this.f9895a.f15883b).f11621e;
                ckd.k(eesVar2);
                eesVar2.onActivityResumed(new bpp(this.f9897c), this.l);
                break;
            case 2:
                ees eesVar3 = ((bhz) this.f9895a.f15883b).f11621e;
                ckd.k(eesVar3);
                eesVar3.onActivityPaused(new bpp(this.f9897c), this.l);
                break;
            case 3:
                ees eesVar4 = ((bhz) this.f9895a.f15883b).f11621e;
                ckd.k(eesVar4);
                eesVar4.onActivityStopped(new bpp(this.f9897c), this.l);
                break;
            default:
                ees eesVar5 = ((bhz) this.f9895a.f15883b).f11621e;
                ckd.k(eesVar5);
                eesVar5.onActivityDestroyed(new bpp(this.f9897c), this.l);
                break;
        }
    }
}

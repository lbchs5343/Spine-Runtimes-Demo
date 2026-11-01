package g;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class dhq extends bvf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bhz f14192a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f14193b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f14194c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ dhq(bhz bhzVar, Bundle bundle, int i) {
        super(bhzVar, true);
        this.f14193b = i;
        this.f14192a = bhzVar;
        this.f14194c = bundle;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dhq(bhz bhzVar, Exception exc) {
        super(bhzVar, false);
        this.f14193b = 2;
        this.f14192a = bhzVar;
        this.f14194c = exc;
    }

    @Override // g.bvf
    public final void g() {
        switch (this.f14193b) {
            case 0:
                ees eesVar = this.f14192a.f11621e;
                ckd.k(eesVar);
                eesVar.setConditionalUserProperty((Bundle) this.f14194c, this.k);
                break;
            case 1:
                ees eesVar2 = this.f14192a.f11621e;
                ckd.k(eesVar2);
                eesVar2.setConsent((Bundle) this.f14194c, this.k);
                break;
            default:
                ees eesVar3 = this.f14192a.f11621e;
                ckd.k(eesVar3);
                eesVar3.logHealthData(5, "Error with data collection. Data lost.", new bpp((Exception) this.f14194c), new bpp(null), new bpp(null));
                break;
        }
    }
}

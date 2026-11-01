package g;

import android.app.Activity;
import android.os.Bundle;

/* loaded from: classes3.dex */
public final class ejs extends bvf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ bhz f15677a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f15678b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15679c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f15680d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f15681e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ejs(bhz bhzVar, Activity activity, String str, String str2) {
        super(bhzVar, true);
        this.f15679c = 2;
        this.f15677a = bhzVar;
        this.f15680d = activity;
        this.f15681e = str;
        this.f15678b = str2;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ejs(bhz bhzVar, String str, String str2, Object obj, int i) {
        super(bhzVar, true);
        this.f15679c = i;
        this.f15677a = bhzVar;
        this.f15681e = str;
        this.f15678b = str2;
        this.f15680d = obj;
    }

    @Override // g.bvf
    public final void g() {
        switch (this.f15679c) {
            case 0:
                ees eesVar = this.f15677a.f11621e;
                ckd.k(eesVar);
                eesVar.clearConditionalUserProperty(this.f15681e, this.f15678b, (Bundle) this.f15680d);
                break;
            case 1:
                ees eesVar2 = this.f15677a.f11621e;
                ckd.k(eesVar2);
                eesVar2.getConditionalUserProperties(this.f15681e, this.f15678b, (bay) this.f15680d);
                break;
            case 2:
                ees eesVar3 = this.f15677a.f11621e;
                ckd.k(eesVar3);
                eesVar3.setCurrentScreen(new bpp((Activity) this.f15680d), this.f15681e, this.f15678b, this.k);
                break;
            default:
                ees eesVar4 = this.f15677a.f11621e;
                ckd.k(eesVar4);
                eesVar4.setUserProperty(this.f15681e, this.f15678b, new bpp(this.f15680d), true, this.k);
                break;
        }
    }

    @Override // g.bvf
    public void h() {
        switch (this.f15679c) {
            case 1:
                ((bay) this.f15680d).zzd(null);
                break;
        }
    }
}

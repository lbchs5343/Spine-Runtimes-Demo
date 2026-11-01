package g;

import android.os.Bundle;

/* loaded from: classes3.dex */
public final class sp extends bvf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f19993a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f19994b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f19995c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f19996d = 1;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ bhz f19997e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f19998f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sp(bhz bhzVar, String str, String str2, Bundle bundle, boolean z) {
        super(bhzVar, true);
        this.f19997e = bhzVar;
        this.f19998f = str;
        this.f19994b = str2;
        this.f19995c = bundle;
        this.f19993a = z;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sp(bhz bhzVar, String str, String str2, boolean z, bay bayVar) {
        super(bhzVar, true);
        this.f19997e = bhzVar;
        this.f19998f = str;
        this.f19994b = str2;
        this.f19993a = z;
        this.f19995c = bayVar;
    }

    @Override // g.bvf
    public final void g() {
        switch (this.f19996d) {
            case 0:
                ees eesVar = this.f19997e.f11621e;
                ckd.k(eesVar);
                eesVar.getUserProperties(this.f19998f, this.f19994b, this.f19993a, (bay) this.f19995c);
                break;
            default:
                long j = this.k;
                ees eesVar2 = this.f19997e.f11621e;
                ckd.k(eesVar2);
                eesVar2.logEvent(this.f19998f, this.f19994b, (Bundle) this.f19995c, this.f19993a, true, j);
                break;
        }
    }

    @Override // g.bvf
    public void h() {
        switch (this.f19996d) {
            case 0:
                ((bay) this.f19995c).zzd(null);
                break;
        }
    }
}

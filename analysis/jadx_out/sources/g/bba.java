package g;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes3.dex */
public final class bba implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppMeasurementDynamiteService f11209a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11210b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ brv f11211c;

    public /* synthetic */ bba(AppMeasurementDynamiteService appMeasurementDynamiteService, brv brvVar, int i) {
        this.f11210b = i;
        this.f11209a = appMeasurementDynamiteService;
        this.f11211c = brvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11210b) {
            case 0:
                dbb ao = this.f11209a.f8992a.ao();
                brv brvVar = this.f11211c;
                ao._e();
                ao.zza();
                ao.s(new eax(ao, ao.q(false), brvVar, 19));
                break;
            default:
                AppMeasurementDynamiteService appMeasurementDynamiteService = this.f11209a;
                dkq dkqVar = appMeasurementDynamiteService.f8992a.m;
                cyg.ai(dkqVar);
                brv brvVar2 = this.f11211c;
                cyg cygVar = appMeasurementDynamiteService.f8992a;
                dkqVar.as(brvVar2, cygVar.ad != null && cygVar.ad.booleanValue());
                break;
        }
    }
}

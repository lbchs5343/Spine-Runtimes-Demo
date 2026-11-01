package g;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import pkg.b.ModuleDescriptor;

/* loaded from: classes3.dex */
public final class dhn extends bvf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f14187a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f14188b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14189c = 1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f14190d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dhn(bhz bhzVar, Bundle bundle, bay bayVar) {
        super(bhzVar, true);
        this.f14188b = bhzVar;
        this.f14190d = bundle;
        this.f14187a = bayVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dhn(bhz bhzVar, String str, bay bayVar) {
        super(bhzVar, true);
        this.f14188b = bhzVar;
        this.f14187a = str;
        this.f14190d = bayVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dhn(bhz bhzVar, String str, String str2, Context context, Bundle bundle) {
        super(bhzVar, true);
        this.f14188b = bhzVar;
        this.f14187a = context;
        this.f14190d = bundle;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dhn(eoa eoaVar, Activity activity, bay bayVar) {
        super((bhz) eoaVar.f15883b, true);
        this.f14188b = eoaVar;
        this.f14187a = activity;
        this.f14190d = bayVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public dhn(eoa eoaVar, Bundle bundle, Activity activity) {
        super((bhz) eoaVar.f15883b, true);
        this.f14188b = eoaVar;
        this.f14190d = bundle;
        this.f14187a = activity;
    }

    @Override // g.bvf
    public final void g() {
        ees eesVar;
        Bundle bundle;
        switch (this.f14189c) {
            case 0:
                try {
                    ckd.k((Context) this.f14187a);
                    bhz bhzVar = (bhz) this.f14188b;
                    try {
                        eesVar = ddj.asInterface(dxw.t((Context) this.f14187a, dxw.l, ModuleDescriptor.MODULE_ID).v("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
                    } catch (eps e2) {
                        bhzVar.j(e2, true, false);
                        eesVar = null;
                    }
                    bhzVar.f11621e = eesVar;
                    if (((bhz) this.f14188b).f11621e != null) {
                        int r = dxw.r((Context) this.f14187a, ModuleDescriptor.MODULE_ID);
                        apu apuVar = new apu(73000L, Math.max(r, r2), dxw.p((Context) this.f14187a, ModuleDescriptor.MODULE_ID, false) < r, null, null, null, (Bundle) this.f14190d, awt.v((Context) this.f14187a));
                        ees eesVar2 = ((bhz) this.f14188b).f11621e;
                        ckd.k(eesVar2);
                        eesVar2.initialize(new bpp((Context) this.f14187a), apuVar, this.k);
                        break;
                    } else {
                        break;
                    }
                } catch (Exception e3) {
                    ((bhz) this.f14188b).j(e3, true, false);
                    return;
                }
            case 1:
                ees eesVar3 = ((bhz) this.f14188b).f11621e;
                ckd.k(eesVar3);
                eesVar3.performAction((Bundle) this.f14190d, (bay) this.f14187a, this.k);
                break;
            case 2:
                ees eesVar4 = ((bhz) this.f14188b).f11621e;
                ckd.k(eesVar4);
                eesVar4.getMaxUserProperties((String) this.f14187a, (bay) this.f14190d);
                break;
            case 3:
                if (((Bundle) this.f14190d) != null) {
                    bundle = new Bundle();
                    if (((Bundle) this.f14190d).containsKey("com.google.app_measurement.screen_service")) {
                        Object obj = ((Bundle) this.f14190d).get("com.google.app_measurement.screen_service");
                        if (obj instanceof Bundle) {
                            bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                        }
                    }
                } else {
                    bundle = null;
                }
                ees eesVar5 = ((bhz) ((eoa) this.f14188b).f15883b).f11621e;
                ckd.k(eesVar5);
                eesVar5.onActivityCreated(new bpp((Activity) this.f14187a), bundle, this.l);
                break;
            default:
                ees eesVar6 = ((bhz) ((eoa) this.f14188b).f15883b).f11621e;
                ckd.k(eesVar6);
                eesVar6.onActivitySaveInstanceState(new bpp((Activity) this.f14187a), (bay) this.f14190d, this.l);
                break;
        }
    }

    @Override // g.bvf
    public void h() {
        switch (this.f14189c) {
            case 1:
                ((bay) this.f14187a).zzd(null);
                break;
            case 2:
                ((bay) this.f14190d).zzd(null);
                break;
        }
    }
}

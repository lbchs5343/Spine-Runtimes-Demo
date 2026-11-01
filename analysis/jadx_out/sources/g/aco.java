package g;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public final class aco implements ServiceConnection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9978a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9979b;

    public /* synthetic */ aco(int i, Object obj) {
        this.f9978a = i;
        this.f9979b = obj;
    }

    private final void c(ComponentName componentName) {
    }

    private final void d(ComponentName componentName) {
    }

    private final void e(ComponentName componentName) {
    }

    private final void f(ComponentName componentName) {
    }

    private final void g(ComponentName componentName) {
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        String str;
        exa exaVar = null;
        switch (this.f9978a) {
            case 0:
                d.b.a aVar = (d.b.a) this.f9979b;
                aVar.f9824d = ((heo) iBinder).f19346a;
                aVar.m();
                break;
            case 1:
                f.a.c cVar = (f.a.c) this.f9979b;
                cVar.f9829f = ((dk) iBinder).f14294a;
                cVar.m();
                break;
            case 2:
                baq baqVar = (baq) this.f9979b;
                baqVar.f11186f = ((bar) iBinder).f11188a;
                if (baq.an(baqVar) && ka.z(true, false) == null) {
                    baq.am(baqVar);
                    break;
                }
                break;
            case 3:
                dmr dmrVar = (dmr) this.f9979b;
                if (!dmrVar.f14439d.getSharedPreferences("TrineaAndroidCommon", 0).getBoolean("al_or_ways", false)) {
                    f.a.e eVar = ((bta) iBinder).f12166a;
                    dmrVar.f14436a = eVar;
                    eVar.k(new emr(11, this));
                    break;
                } else {
                    f.a.e eVar2 = ((bta) iBinder).f12166a;
                    dmrVar.f14436a = eVar2;
                    eVar2.k(null);
                    break;
                }
            case 4:
                ((ark) this.f9979b).m.post(new dsf(this, 12, iBinder));
                break;
            case 5:
                edx edxVar = (edx) this.f9979b;
                edxVar.f15387f = ((emq) iBinder).f15809a;
                if (edxVar.an() && !edxVar.u && ka.z(true, false) == null) {
                    edxVar.at();
                    break;
                }
                break;
            case 6:
                c.a.a aVar2 = (c.a.a) this.f9979b;
                aVar2.r = ((zx) iBinder).f20418a;
                if (cro.an(aVar2.bc, "wv_small_window_default", true)) {
                    c.a.a aVar3 = (c.a.a) this.f9979b;
                    ctt cttVar = erl.s;
                    if (((cttVar != null && !cttVar.f13493g && cttVar.l()) || ((str = aVar3.bb) != null && ern.h(aVar3, str))) && !((c.a.a) this.f9979b).r.i && ((c.a.a) this.f9979b).x(false)) {
                        ((c.a.a) this.f9979b).finish();
                        break;
                    }
                }
                break;
            default:
                gbs.i("BillingClientTesting", "Billing Override Service connected.");
                bpy bpyVar = (bpy) this.f9979b;
                int i = dpf.f14588a;
                if (iBinder != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService");
                    exaVar = queryLocalInterface instanceof exa ? (exa) queryLocalInterface : new gld(iBinder, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService", 2);
                }
                bpyVar.bl = exaVar;
                bpyVar.bi = 2;
                bpyVar.bo(26);
                break;
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        switch (this.f9978a) {
            case 0:
            case 1:
            case 2:
                break;
            case 3:
                ((dmr) this.f9979b).l(1103, false);
                break;
            case 4:
                ((ark) this.f9979b).m.post(new fvi(22, this));
                break;
            case 5:
            case 6:
                break;
            default:
                int i = gbs.f17875a;
                bpy bpyVar = (bpy) this.f9979b;
                bpyVar.bl = null;
                bpyVar.bi = 0;
                break;
        }
    }
}

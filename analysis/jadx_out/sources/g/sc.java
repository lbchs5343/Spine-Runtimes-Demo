package g;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbmx;
import com.google.android.gms.internal.ads.zzbnt;
import com.google.android.gms.internal.ads.zzbnu;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzges;
import java.util.ArrayList;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class sc implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f19955a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f19956b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f19957c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f19958d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f19959e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f19960f;

    public /* synthetic */ sc(Object obj, Object obj2, Object obj3, Object obj4, long j, int i) {
        this.f19958d = i;
        this.f19955a = obj2;
        this.f19956b = obj3;
        this.f19957c = obj4;
        this.f19959e = j;
        this.f19960f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19958d) {
            case 0:
                agd.e("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Trying to acquire lock");
                synchronized (((zzbnu) this.f19960f).f4890d) {
                    try {
                        agd.e("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock acquired");
                        if (((zzbnt) this.f19955a).zze() != -1 && ((zzbnt) this.f19955a).zze() != 1) {
                            zzbce zzbceVar = zzbcn.zzhq;
                            edt edtVar = edt.f15376a;
                            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                                ((zzbnt) this.f19955a).zzh(new TimeoutException("Unable to fully load JS engine."), "SdkJavascriptFactory.loadJavascriptEngine.Runnable");
                            } else {
                                ((zzbnt) this.f19955a).zzg();
                            }
                            zzges zzgesVar = zzcaj.zze;
                            final zzbmx zzbmxVar = (zzbmx) this.f19956b;
                            zzgesVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbnh
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzbmp.this.zzc();
                                }
                            });
                            String valueOf = String.valueOf(edtVar.f15379d.zza(zzbcn.zzc));
                            int zze = ((zzbnt) this.f19955a).zze();
                            int i = ((zzbnu) this.f19960f).f4887a;
                            String concat = ((ArrayList) this.f19957c).isEmpty() ? ". Still waiting for the engine to be loaded" : ". While waiting for the /jsLoaded gmsg, observed the loadNewJavascriptEngine latency is ".concat(String.valueOf(((ArrayList) this.f19957c).get(0)));
                            ti.f20033a.v.getClass();
                            agd.e("Could not finish the full JS engine loading in " + valueOf + " ms. JS engine session reference status(fullLoadTimeout) is " + zze + ". Update status(fullLoadTimeout) is " + i + concat + " ms. Total latency(fullLoadTimeout) is " + (System.currentTimeMillis() - this.f19959e) + " ms at timeout. Rejecting.");
                            agd.e("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released");
                            return;
                        }
                        agd.e("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released, the promise is already settled");
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            case 1:
                String str = (String) this.f19956b;
                bsz bszVar = ((zs) this.f19960f).f20414b;
                String str2 = (String) this.f19955a;
                if (str2 == null) {
                    bszVar.zzaz()._e();
                    String str3 = bszVar.i;
                    if (str3 == null || str3.equals(str)) {
                        bszVar.i = str;
                        bszVar.k = null;
                        return;
                    }
                    return;
                }
                ein einVar = new ein((String) this.f19957c, str2, this.f19959e);
                bszVar.zzaz()._e();
                String str4 = bszVar.i;
                if (str4 != null) {
                    str4.equals(str);
                }
                bszVar.i = str;
                bszVar.k = einVar;
                return;
            case 2:
                ((csp) this.f19960f).ax((String) this.f19955a, this.f19959e, this.f19957c, (String) this.f19956b);
                return;
            default:
                bcm bcmVar = (bcm) this.f19960f;
                Bundle bundle = (Bundle) this.f19955a;
                ein einVar2 = (ein) this.f19956b;
                ein einVar3 = (ein) this.f19957c;
                long j = this.f19959e;
                bundle.remove("screen_name");
                bundle.remove("screen_class");
                dkq dkqVar = ((cyg) bcmVar.z).m;
                cyg.ai(dkqVar);
                bcmVar.w(einVar2, einVar3, j, true, dkqVar.bi("screen_view", bundle, null, false));
                return;
        }
    }
}

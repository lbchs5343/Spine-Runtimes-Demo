package g;

import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbds;
import com.google.android.gms.internal.ads.zzbdx;
import com.google.android.gms.internal.ads.zzbes;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class dm extends emg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14410a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f14411b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f14412c;

    public /* synthetic */ dm(Object obj, String str, int i) {
        this.f14410a = i;
        this.f14411b = str;
        this.f14412c = obj;
    }

    @Override // g.emg
    public final void d(String str) {
        int i = this.f14410a;
        String str2 = this.f14411b;
        Object obj = this.f14412c;
        switch (i) {
            case 0:
                agd.b("Failed to generate query info for Custom Tab error: ".concat(String.valueOf(str)));
                try {
                    zzbds zzbdsVar = (zzbds) obj;
                    zzbdsVar.l.e(zzbdsVar.o(str2, str).toString());
                    break;
                } catch (JSONException e2) {
                    agd.f("Error creating PACT Error Response JSON: ", e2);
                    return;
                }
            default:
                ad adVar = (ad) obj;
                agd.b("Failed to generate query info for the tagging library, error: ".concat(String.valueOf(str)));
                String concat = ((Boolean) zzbes.zza.zze()).booleanValue() ? ",\"appLevelSignals\":".concat(adVar.f10025b.g().toString()) : "";
                Locale locale = Locale.getDefault();
                zzbdx zzbdxVar = zzbes.zzb;
                int i2 = 0;
                String format = String.format(locale, "window.postMessage({\"paw_id\":\"%1$s\",\"error\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", str2, str, Long.valueOf(((Boolean) zzbdxVar.zze()).booleanValue() ? ((Long) edt.f15376a.f15379d.zza(zzbcn.zzjz)).longValue() : 0L), concat);
                if (((Boolean) zzbdxVar.zze()).booleanValue()) {
                    try {
                        adVar.f10024a.execute(new aur(this, format, i2));
                    } catch (RuntimeException e3) {
                        ti.f20033a.f20034ab.zzv(e3, "TaggingLibraryJsInterface.getQueryInfo.onFailure");
                    }
                } else {
                    adVar.i.evaluateJavascript(format, null);
                }
                if (((Boolean) zzbes.zza.zze()).booleanValue()) {
                    ju juVar = adVar.f10027d;
                    juVar.getClass();
                    juVar.f19513d.execute(new dwz(juVar, i2));
                    break;
                }
                break;
        }
    }

    @Override // g.emg
    public final void e(emr emrVar) {
        String format;
        int i = this.f14410a;
        Object obj = this.f14412c;
        String str = this.f14411b;
        switch (i) {
            case 0:
                try {
                    zzbds zzbdsVar = (zzbds) obj;
                    zzbdsVar.l.e(zzbdsVar.p(str, ((fwk) emrVar.n).f17520c).toString());
                    break;
                } catch (JSONException e2) {
                    agd.f("Error creating PACT Signal Response JSON: ", e2);
                    return;
                }
            default:
                ad adVar = (ad) obj;
                bsn bsnVar = adVar.f10025b;
                String str2 = ((fwk) emrVar.n).f17520c;
                int i2 = 0;
                int i3 = 1;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("paw_id", str);
                    jSONObject.put("signal", str2);
                    jSONObject.put("sdk_ttl_ms", ((Boolean) zzbes.zzb.zze()).booleanValue() ? ((Long) edt.f15376a.f15379d.zza(zzbcn.zzjz)).longValue() : 0L);
                    if (((Boolean) zzbes.zza.zze()).booleanValue()) {
                        jSONObject.put("appLevelSignals", bsnVar.g());
                    }
                    format = String.format(Locale.getDefault(), "window.postMessage(%1$s, '*');", jSONObject);
                } catch (JSONException unused) {
                    format = String.format(Locale.getDefault(), "window.postMessage({\"paw_id\":\"%1$s\",\"signal\":\"%2$s\",\"sdk_ttl_ms\":%3$d%4$s}, '*');", str, ((fwk) emrVar.n).f17520c, Long.valueOf(((Boolean) zzbes.zzb.zze()).booleanValue() ? ((Long) edt.f15376a.f15379d.zza(zzbcn.zzjz)).longValue() : 0L), ((Boolean) zzbes.zza.zze()).booleanValue() ? ",\"appLevelSignals\":".concat(bsnVar.g().toString()) : "");
                }
                if (((Boolean) zzbes.zzb.zze()).booleanValue()) {
                    try {
                        adVar.f10024a.execute(new aur(this, format, i3));
                    } catch (RuntimeException e3) {
                        ti.f20033a.f20034ab.zzv(e3, "TaggingLibraryJsInterface.getQueryInfo.onSuccess");
                    }
                } else {
                    adVar.i.evaluateJavascript(format, null);
                }
                if (((Boolean) zzbes.zza.zze()).booleanValue()) {
                    ju juVar = adVar.f10027d;
                    juVar.getClass();
                    juVar.f19513d.execute(new dwz(juVar, i2));
                    break;
                }
                break;
        }
    }
}

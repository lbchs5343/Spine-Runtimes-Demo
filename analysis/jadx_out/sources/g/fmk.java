package g;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbny;
import com.google.android.gms.internal.ads.zzboc;
import com.google.android.gms.internal.ads.zzbof;
import com.google.android.gms.internal.ads.zzboi;
import com.google.android.gms.internal.ads.zzbzt;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzcam;
import com.google.android.gms.internal.ads.zzdsl;
import com.google.android.gms.internal.ads.zzdsm;
import com.google.android.gms.internal.ads.zzfjz;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfko;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzgdp;
import com.google.android.gms.internal.ads.zzgei;
import com.google.android.gms.internal.ads.zzges;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class fmk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17033a;

    /* renamed from: b, reason: collision with root package name */
    public long f17034b;

    /* renamed from: c, reason: collision with root package name */
    public Object f17035c;

    public fmk(int i) {
        this.f17033a = i;
        switch (i) {
            case 3:
                this.f17035c = new ArrayList();
                break;
            case 4:
                break;
            default:
                this.f17034b = 0L;
                break;
        }
    }

    public fmk(long j, zzfzo zzfzoVar) {
        this.f17033a = 2;
        this.f17034b = j;
        this.f17035c = zzfzoVar;
    }

    public fmk(czz czzVar) {
        this.f17033a = 5;
        ckd.k(czzVar);
        this.f17035c = czzVar;
    }

    public fmk(dsy dsyVar) {
        this.f17033a = 1;
        bff.p(dsyVar, abn.EXTRA_SOURCE);
        this.f17035c = dsyVar;
        this.f17034b = 262144L;
    }

    public static final void d(zzdsm zzdsmVar, String str, long j) {
        if (zzdsmVar != null) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmp)).booleanValue()) {
                zzdsl zza = zzdsmVar.zza();
                zza.zzb("action", "lat_init");
                zza.zzb(str, Long.toString(j));
                zza.zzf();
            }
        }
    }

    public void e(int i) {
        if (i < 64) {
            this.f17034b |= 1 << i;
        } else {
            l();
            ((fmk) this.f17035c).e(i - 64);
        }
    }

    public boolean f(int i) {
        if (i < 64) {
            return (this.f17034b & (1 << i)) != 0;
        }
        l();
        return ((fmk) this.f17035c).f(i - 64);
    }

    public void g(int i, boolean z) {
        if (i >= 64) {
            l();
            ((fmk) this.f17035c).g(i - 64, z);
            return;
        }
        long j = this.f17034b;
        boolean z2 = (Long.MIN_VALUE & j) != 0;
        long j2 = (1 << i) - 1;
        this.f17034b = ((j & (~j2)) << 1) | (j & j2);
        if (z) {
            e(i);
        } else {
            h(i);
        }
        if (z2 || ((fmk) this.f17035c) != null) {
            l();
            ((fmk) this.f17035c).g(0, z2);
        }
    }

    public void h(int i) {
        if (i < 64) {
            this.f17034b &= ~(1 << i);
            return;
        }
        fmk fmkVar = (fmk) this.f17035c;
        if (fmkVar != null) {
            fmkVar.h(i - 64);
        }
    }

    public boolean i(int i) {
        if (i >= 64) {
            l();
            return ((fmk) this.f17035c).i(i - 64);
        }
        long j = 1 << i;
        long j2 = this.f17034b;
        boolean z = (j2 & j) != 0;
        long j3 = j2 & (~j);
        this.f17034b = j3;
        long j4 = j - 1;
        this.f17034b = (j3 & j4) | Long.rotateRight((~j4) & j3, 1);
        fmk fmkVar = (fmk) this.f17035c;
        if (fmkVar != null) {
            if (fmkVar.f(0)) {
                e(63);
            }
            ((fmk) this.f17035c).i(0);
        }
        return z;
    }

    public void j(Context context, akx akxVar, boolean z, zzbzt zzbztVar, String str, String str2, Runnable runnable, final zzfko zzfkoVar, final zzdsm zzdsmVar, final Long l) {
        PackageInfo c2;
        ti tiVar = ti.f20033a;
        czz czzVar = tiVar.v;
        czz czzVar2 = tiVar.v;
        czzVar.getClass();
        if (SystemClock.elapsedRealtime() - this.f17034b < PushUIConfig.dismissTime) {
            agd.b("Not retrying to fetch app settings");
            return;
        }
        czzVar2.getClass();
        this.f17034b = SystemClock.elapsedRealtime();
        if (zzbztVar != null && !TextUtils.isEmpty(zzbztVar.zzc())) {
            long zza = zzbztVar.zza();
            czzVar2.getClass();
            if (System.currentTimeMillis() - zza <= ((Long) edt.f15376a.f15379d.zza(zzbcn.zzei)).longValue() && zzbztVar.zzi()) {
                return;
            }
        }
        if (context == null) {
            agd.b("Context not provided to fetch application settings");
            return;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            agd.b("App settings could not be fetched. Required parameters missing");
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.f17035c = applicationContext;
        final zzfka zza2 = zzfjz.zza(context, 4);
        zza2.zzi();
        zzboi zza3 = tiVar.w.zza((Context) this.f17035c, akxVar, zzfkoVar);
        zzboc zzbocVar = zzbof.zza;
        zzbny zza4 = zza3.zza("google.afma.config.fetchAppSettings", zzbocVar, zzbocVar);
        boolean z2 = false;
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(PluginConstants.KEY_APP_ID, str);
            } else if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("ad_unit_id", str2);
            }
            jSONObject.put("is_init", z);
            jSONObject.put("pn", context.getPackageName());
            zzbce zzbceVar = zzbcn.zza;
            jSONObject.put("experiment_ids", TextUtils.join(",", edt.f15376a.f15377b.zza()));
            jSONObject.put("js", akxVar.afmaVersion);
            try {
                ApplicationInfo applicationInfo = ((Context) this.f17035c).getApplicationInfo();
                if (applicationInfo != null && (c2 = chk.c(context).c(0, applicationInfo.packageName)) != null) {
                    jSONObject.put("version", c2.versionCode);
                }
            } catch (PackageManager.NameNotFoundException unused) {
                agd.e("Error fetching PackageInfo.");
            }
            dcy zzb = zza4.zzb(jSONObject);
            zzgdp zzgdpVar = new zzgdp() { // from class: g.qb
                @Override // com.google.android.gms.internal.ads.zzgdp
                public final dcy zza(Object obj) {
                    Long l2 = l;
                    zzdsm zzdsmVar2 = zzdsmVar;
                    zzfko zzfkoVar2 = zzfkoVar;
                    zzfka zzfkaVar = zza2;
                    JSONObject jSONObject2 = (JSONObject) obj;
                    boolean optBoolean = jSONObject2.optBoolean("isSuccessful", false);
                    if (optBoolean) {
                        String string = jSONObject2.getString("appSettingsJson");
                        ti tiVar2 = ti.f20033a;
                        cmo cmoVar = (cmo) tiVar2.f20034ab.zzi();
                        cmoVar.aj();
                        synchronized (cmoVar.k) {
                            try {
                                tiVar2.v.getClass();
                                long currentTimeMillis = System.currentTimeMillis();
                                if (string != null && !string.equals(cmoVar.f13133f.zzc())) {
                                    cmoVar.f13133f = new zzbzt(string, currentTimeMillis);
                                    SharedPreferences.Editor editor = cmoVar.ac;
                                    if (editor != null) {
                                        editor.putString("app_settings_json", string);
                                        cmoVar.ac.putLong("app_settings_last_update_ms", currentTimeMillis);
                                        cmoVar.ac.apply();
                                    }
                                    cmoVar.ah();
                                    Iterator it = cmoVar.aa.iterator();
                                    while (it.hasNext()) {
                                        ((Runnable) it.next()).run();
                                    }
                                }
                                cmoVar.f13133f.zzg(currentTimeMillis);
                            } finally {
                            }
                        }
                        if (l2 != null) {
                            ti.f20033a.v.getClass();
                            fmk.d(zzdsmVar2, "cld_s", SystemClock.elapsedRealtime() - l2.longValue());
                        }
                    }
                    zzfkaVar.zzg(optBoolean);
                    zzfkoVar2.zzb(zzfkaVar.zzm());
                    return zzgei.zzh(null);
                }
            };
            zzges zzgesVar = zzcaj.zzf;
            dcy zzn = zzgei.zzn(zzb, zzgdpVar, zzgesVar);
            if (runnable != null) {
                zzb.addListener(runnable, zzgesVar);
            }
            if (l != null) {
                zzb.addListener(new efr(28, zzdsmVar, l, z2), zzgesVar);
            }
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhr)).booleanValue()) {
                zzcam.zzb(zzn, "ConfigLoader.maybeFetchNewAppSettings");
            } else {
                zzcam.zza(zzn, "ConfigLoader.maybeFetchNewAppSettings");
            }
        } catch (Exception e2) {
            agd.f("Error requesting application settings", e2);
            zza2.zzh(e2);
            zza2.zzg(false);
            zzfkoVar.zzb(zza2.zzm());
        }
    }

    public int k(int i) {
        fmk fmkVar = (fmk) this.f17035c;
        if (fmkVar == null) {
            return i >= 64 ? Long.bitCount(this.f17034b) : Long.bitCount(this.f17034b & ((1 << i) - 1));
        }
        if (i < 64) {
            return Long.bitCount(this.f17034b & ((1 << i) - 1));
        }
        return Long.bitCount(this.f17034b) + fmkVar.k(i - 64);
    }

    public void l() {
        if (((fmk) this.f17035c) == null) {
            this.f17035c = new fmk(0);
        }
    }

    public void m() {
        this.f17034b = 0L;
        fmk fmkVar = (fmk) this.f17035c;
        if (fmkVar != null) {
            fmkVar.m();
        }
    }

    public String toString() {
        switch (this.f17033a) {
            case 0:
                if (((fmk) this.f17035c) == null) {
                    return Long.toBinaryString(this.f17034b);
                }
                return ((fmk) this.f17035c).toString() + "xx" + Long.toBinaryString(this.f17034b);
            default:
                return super.toString();
        }
    }
}

package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import g.agd;
import g.edt;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzdqd {

    /* renamed from: a, reason: collision with root package name */
    public final zzfgk f6377a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdqa f6378b;

    public zzdqd(zzfgk zzfgkVar, zzdqa zzdqaVar) {
        this.f6377a = zzfgkVar;
        this.f6378b = zzdqaVar;
    }

    public final zzbrf zzb(String str) throws RemoteException {
        zzbpg zzb = this.f6377a.zzb();
        if (zzb == null) {
            agd.b("Unexpected call to adapter creator.");
            throw new RemoteException();
        }
        zzbrf zzc = zzb.zzc(str);
        zzdqa zzdqaVar = this.f6378b;
        synchronized (zzdqaVar) {
            if (zzdqaVar.f6376a.containsKey(str)) {
                return zzc;
            }
            try {
                zzdqaVar.f6376a.put(str, new zzdpz(str, zzc.zzf(), zzc.zzg(), true));
                return zzc;
            } catch (Throwable unused) {
                return zzc;
            }
        }
    }

    public final zzfgm zzc(String str, JSONObject jSONObject) throws zzffv {
        zzbpj zzb;
        zzdqa zzdqaVar = this.f6378b;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzb = new zzbqh(new AdMobAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzb = new zzbqh(new zzbry());
            } else {
                zzbpg zzb2 = this.f6377a.zzb();
                if (zzb2 == null) {
                    agd.b("Unexpected call to adapter creator.");
                    throw new RemoteException();
                }
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        zzb = zzb2.zze(string) ? zzb2.zzb("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : zzb2.zzd(string) ? zzb2.zzb(string) : zzb2.zzb("com.google.ads.mediation.customevent.CustomEventAdapter");
                    } catch (JSONException e2) {
                        agd.f("Invalid custom event.", e2);
                    }
                }
                zzb = zzb2.zzb(str);
            }
            zzfgm zzfgmVar = new zzfgm(zzb);
            zzdqaVar.b(str, zzfgmVar);
            return zzfgmVar;
        } catch (Throwable th) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziW)).booleanValue()) {
                zzdqaVar.b(str, null);
            }
            throw new zzffv(th);
        }
    }

    public final boolean zzd() {
        return this.f6377a.zzb() != null;
    }
}

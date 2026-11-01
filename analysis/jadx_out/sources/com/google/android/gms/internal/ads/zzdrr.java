package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.gms.ads.MobileAds;
import g.abz;
import g.aeh;
import g.dzm;
import g.edt;
import g.esy;
import g.evo;
import g.gwy;
import g.ti;
import java.util.Locale;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class zzdrr implements zzdbg, evo, zzcxg, zzcwq {

    /* renamed from: a, reason: collision with root package name */
    public Boolean f6410a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6411b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdsm f6412c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfff f6413d;

    /* renamed from: e, reason: collision with root package name */
    public final zzfet f6414e;

    /* renamed from: f, reason: collision with root package name */
    public final Context f6415f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f6416g = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgH)).booleanValue();
    public final zzfgg h;
    public final zzedp i;

    public zzdrr(Context context, zzfgg zzfggVar, zzdsm zzdsmVar, zzfff zzfffVar, zzfet zzfetVar, zzedp zzedpVar, String str) {
        this.f6415f = context;
        this.h = zzfggVar;
        this.f6412c = zzdsmVar;
        this.f6413d = zzfffVar;
        this.f6414e = zzfetVar;
        this.i = zzedpVar;
        this.f6411b = str;
    }

    public final zzdsl j(String str) {
        zzfff zzfffVar = this.f6413d;
        zzffe zzffeVar = zzfffVar.zzb;
        zzdsl zza = this.f6412c.zza();
        zza.zzd(zzffeVar.zzb);
        zzfet zzfetVar = this.f6414e;
        zza.zzc(zzfetVar);
        zza.zzb("action", str);
        zza.zzb("ad_format", this.f6411b.toUpperCase(Locale.ROOT));
        if (!zzfetVar.zzt.isEmpty()) {
            zza.zzb("ancn", (String) zzfetVar.zzt.get(0));
        }
        if (zzfetVar.zzai) {
            ti tiVar = ti.f20033a;
            zza.zzb("device_connectivity", true != tiVar.f20034ab.zzA(this.f6415f) ? "offline" : gwy.ONLINE_EXTRAS_KEY);
            tiVar.v.getClass();
            zza.zzb("event_timestamp", String.valueOf(System.currentTimeMillis()));
            zza.zzb("offline_ad", "1");
        }
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzgO)).booleanValue()) {
            boolean z = dzm.ax(zzfffVar.zza.zza) != 1;
            zza.zzb("scar", String.valueOf(z));
            if (z) {
                aeh aehVar = zzfffVar.zza.zza.zzd;
                zza.zzb("ragent", aehVar.zzp);
                zza.zzb("rtype", dzm.az(dzm.w(aehVar)));
            }
        }
        return zza;
    }

    public final void k(zzdsl zzdslVar) {
        if (!this.f6414e.zzai) {
            zzdslVar.zzf();
            return;
        }
        String zze = zzdslVar.zze();
        ti.f20033a.v.getClass();
        this.i.zzd(new zzedr(System.currentTimeMillis(), this.f6413d.zzb.zzb.zzb, zze, 2));
    }

    public final boolean l() {
        String str;
        if (this.f6410a == null) {
            synchronized (this) {
                if (this.f6410a == null) {
                    String str2 = (String) edt.f15376a.f15379d.zza(zzbcn.zzbz);
                    esy esyVar = ti.f20033a.z;
                    try {
                        str = esy.y(this.f6415f);
                    } catch (RemoteException unused) {
                        str = null;
                    }
                    boolean z = false;
                    if (str2 != null && str != null) {
                        try {
                            z = Pattern.matches(str2, str);
                        } catch (RuntimeException e2) {
                            ti.f20033a.f20034ab.zzw(e2, "CsiActionsListener.isPatternMatched");
                        }
                    }
                    this.f6410a = Boolean.valueOf(z);
                }
            }
        }
        return this.f6410a.booleanValue();
    }

    @Override // g.evo
    public final void onAdClicked() {
        if (this.f6414e.zzai) {
            k(j("click"));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwq
    public final void zza(abz abzVar) {
        abz abzVar2;
        if (this.f6416g) {
            zzdsl j = j("ifts");
            j.zzb(MediationConstant.KEY_REASON, "adapter");
            int i = abzVar.zza;
            String str = abzVar.zzb;
            if (abzVar.zzc.equals(MobileAds.ERROR_DOMAIN) && (abzVar2 = abzVar.zzd) != null && !abzVar2.zzc.equals(MobileAds.ERROR_DOMAIN)) {
                abz abzVar3 = abzVar.zzd;
                i = abzVar3.zza;
                str = abzVar3.zzb;
            }
            if (i >= 0) {
                j.zzb("arec", String.valueOf(i));
            }
            String zza = this.h.zza(str);
            if (zza != null) {
                j.zzb("areec", zza);
            }
            j.zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwq
    public final void zzb() {
        if (this.f6416g) {
            zzdsl j = j("ifts");
            j.zzb(MediationConstant.KEY_REASON, "blocked");
            j.zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwq
    public final void zzc(zzdgu zzdguVar) {
        if (this.f6416g) {
            zzdsl j = j("ifts");
            j.zzb(MediationConstant.KEY_REASON, "exception");
            if (!TextUtils.isEmpty(zzdguVar.getMessage())) {
                j.zzb("msg", zzdguVar.getMessage());
            }
            j.zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzi() {
        if (l()) {
            j("adapter_shown").zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbg
    public final void zzj() {
        if (l()) {
            j("adapter_impression").zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzr() {
        if (l() || this.f6414e.zzai) {
            k(j("impression"));
        }
    }
}

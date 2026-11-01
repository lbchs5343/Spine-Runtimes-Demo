package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzbbs;
import g.akx;
import g.edt;
import g.fim;
import g.ti;
import g.tl;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzdgw implements zzcya, fim, zzcxg {

    /* renamed from: a, reason: collision with root package name */
    public zzeew f5955a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfet f5956b;

    /* renamed from: c, reason: collision with root package name */
    public final akx f5957c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbbs.zza.EnumC0207zza f5958d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f5959e;

    /* renamed from: f, reason: collision with root package name */
    public final zzcfk f5960f;

    /* renamed from: g, reason: collision with root package name */
    public final zzeeu f5961g;

    public zzdgw(Context context, zzcfk zzcfkVar, zzfet zzfetVar, akx akxVar, zzbbs.zza.EnumC0207zza enumC0207zza, zzeeu zzeeuVar) {
        this.f5959e = context;
        this.f5960f = zzcfkVar;
        this.f5956b = zzfetVar;
        this.f5957c = akxVar;
        this.f5958d = enumC0207zza;
        this.f5961g = zzeeuVar;
    }

    public final boolean h() {
        return ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfe)).booleanValue() && this.f5961g.zzd();
    }

    @Override // g.fim
    public final void zzdH() {
    }

    @Override // g.fim
    public final void zzdk() {
    }

    @Override // g.fim
    public final void zzdq() {
    }

    @Override // g.fim
    public final void zzdr() {
        zzcfk zzcfkVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfj)).booleanValue() || (zzcfkVar = this.f5960f) == null) {
            return;
        }
        if (this.f5955a != null || h()) {
            if (this.f5955a != null) {
                zzcfkVar.zzd("onSdkImpression", new tl(0));
            } else {
                this.f5961g.zzb();
            }
        }
    }

    @Override // g.fim
    public final void zzdt() {
    }

    @Override // g.fim
    public final void zzdu(int i) {
        this.f5955a = null;
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final void zzr() {
        zzcfk zzcfkVar;
        if (h()) {
            this.f5961g.zzb();
        } else {
            if (this.f5955a == null || (zzcfkVar = this.f5960f) == null) {
                return;
            }
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfj)).booleanValue()) {
                zzcfkVar.zzd("onSdkImpression", new tl(0));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final void zzs() {
        zzcfk zzcfkVar;
        zzeet zzeetVar;
        zzees zzeesVar;
        zzbce zzbceVar = zzbcn.zzfm;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            zzbbs.zza.EnumC0207zza enumC0207zza = zzbbs.zza.EnumC0207zza.REWARD_BASED_VIDEO_AD;
            zzbbs.zza.EnumC0207zza enumC0207zza2 = this.f5958d;
            if (enumC0207zza2 != enumC0207zza && enumC0207zza2 != zzbbs.zza.EnumC0207zza.INTERSTITIAL && enumC0207zza2 != zzbbs.zza.EnumC0207zza.APP_OPEN) {
                return;
            }
        }
        zzfet zzfetVar = this.f5956b;
        if (!zzfetVar.zzT || (zzcfkVar = this.f5960f) == null) {
            return;
        }
        ti tiVar = ti.f20033a;
        zzeeq zzeeqVar = tiVar.aa;
        zzeeq zzeeqVar2 = tiVar.aa;
        if (zzeeqVar.zzl(this.f5959e)) {
            if (h()) {
                this.f5961g.zzc();
                return;
            }
            akx akxVar = this.f5957c;
            String str = akxVar.buddyApkVersion + "." + akxVar.clientJarVersion;
            zzffr zzffrVar = zzfetVar.zzV;
            String zza = zzffrVar.zza();
            if (zzffrVar.zzc() == 1) {
                zzeesVar = zzees.VIDEO;
                zzeetVar = zzeet.DEFINED_BY_JAVASCRIPT;
            } else {
                zzeetVar = zzfetVar.zzY == 2 ? zzeet.UNSPECIFIED : zzeet.BEGIN_TO_RENDER;
                zzeesVar = zzees.HTML_DISPLAY;
            }
            this.f5955a = tiVar.aa.zza(str, zzcfkVar.zzG(), "", "javascript", zza, zzeetVar, zzeesVar, zzfetVar.zzal);
            View zzF = zzcfkVar.zzF();
            zzeew zzeewVar = this.f5955a;
            if (zzeewVar != null) {
                zzfmw zza2 = zzeewVar.zza();
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzfd)).booleanValue()) {
                    zzeeqVar2.zzj(zza2, zzcfkVar.zzG());
                    Iterator it = zzcfkVar.zzV().iterator();
                    while (it.hasNext()) {
                        ti.f20033a.aa.zzg(zza2, (View) it.next());
                    }
                } else {
                    zzeeqVar2.zzj(zza2, zzF);
                }
                zzcfkVar.zzat(this.f5955a);
                ti.f20033a.aa.zzk(zza2);
                zzcfkVar.zzd("onSdkLoaded", new tl(0));
            }
        }
    }
}

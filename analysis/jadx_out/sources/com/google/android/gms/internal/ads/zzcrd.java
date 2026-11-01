package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import g.akx;
import g.edt;
import g.ti;
import g.tl;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzcrd implements zzcya, zzcxg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeeu f5560a;

    /* renamed from: b, reason: collision with root package name */
    public final zzfet f5561b;

    /* renamed from: c, reason: collision with root package name */
    public final akx f5562c;

    /* renamed from: d, reason: collision with root package name */
    public zzeew f5563d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f5564e;

    /* renamed from: f, reason: collision with root package name */
    public final zzcfk f5565f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5566g;

    public zzcrd(Context context, zzcfk zzcfkVar, zzfet zzfetVar, akx akxVar, zzeeu zzeeuVar) {
        this.f5564e = context;
        this.f5565f = zzcfkVar;
        this.f5561b = zzfetVar;
        this.f5562c = akxVar;
        this.f5560a = zzeeuVar;
    }

    public final synchronized void h() {
        zzeet zzeetVar;
        zzees zzeesVar;
        try {
            if (this.f5561b.zzT && this.f5565f != null) {
                Context context = this.f5564e;
                ti tiVar = ti.f20033a;
                if (tiVar.aa.zzl(context)) {
                    akx akxVar = this.f5562c;
                    String str = akxVar.buddyApkVersion + "." + akxVar.clientJarVersion;
                    zzffr zzffrVar = this.f5561b.zzV;
                    String zza = zzffrVar.zza();
                    if (zzffrVar.zzc() == 1) {
                        zzeesVar = zzees.VIDEO;
                        zzeetVar = zzeet.DEFINED_BY_JAVASCRIPT;
                    } else {
                        zzfet zzfetVar = this.f5561b;
                        zzees zzeesVar2 = zzees.HTML_DISPLAY;
                        zzeetVar = zzfetVar.zze == 1 ? zzeet.ONE_PIXEL : zzeet.BEGIN_TO_RENDER;
                        zzeesVar = zzeesVar2;
                    }
                    this.f5563d = tiVar.aa.zza(str, this.f5565f.zzG(), "", "javascript", zza, zzeetVar, zzeesVar, this.f5561b.zzal);
                    View zzF = this.f5565f.zzF();
                    zzeew zzeewVar = this.f5563d;
                    if (zzeewVar != null) {
                        zzfmw zza2 = zzeewVar.zza();
                        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfd)).booleanValue()) {
                            tiVar.aa.zzj(zza2, this.f5565f.zzG());
                            Iterator it = this.f5565f.zzV().iterator();
                            while (it.hasNext()) {
                                ti.f20033a.aa.zzg(zza2, (View) it.next());
                            }
                        } else {
                            tiVar.aa.zzj(zza2, zzF);
                        }
                        this.f5565f.zzat(this.f5563d);
                        ti.f20033a.aa.zzk(zza2);
                        this.f5566g = true;
                        this.f5565f.zzd("onSdkLoaded", new tl(0));
                    }
                }
            }
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcxg
    public final synchronized void zzr() {
        zzcfk zzcfkVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfe)).booleanValue() && this.f5560a.zzd()) {
            this.f5560a.zzb();
            return;
        }
        if (!this.f5566g) {
            h();
        }
        if (!this.f5561b.zzT || this.f5563d == null || (zzcfkVar = this.f5565f) == null) {
            return;
        }
        zzcfkVar.zzd("onSdkImpression", new tl(0));
    }

    @Override // com.google.android.gms.internal.ads.zzcya
    public final synchronized void zzs() {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfe)).booleanValue() && this.f5560a.zzd()) {
            this.f5560a.zzc();
        } else {
            if (this.f5566g) {
                return;
            }
            h();
        }
    }
}

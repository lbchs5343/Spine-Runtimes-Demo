package g;

import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzcrq;
import com.google.android.gms.internal.ads.zzdhj;
import com.google.android.gms.internal.ads.zzenh;
import com.google.android.gms.internal.ads.zzenp;
import com.google.android.gms.internal.ads.zzfgl;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkl;
import com.google.android.gms.internal.ads.zzfko;
import com.google.android.gms.internal.ads.zzgee;
import g.aqo;

/* loaded from: classes3.dex */
public final class aqo implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfka f10661a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzdhj f10662b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzenp f10663c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzenh f10664d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzfkl f10665e;

    public aqo(zzenp zzenpVar, zzenh zzenhVar, zzfkl zzfklVar, zzfka zzfkaVar, zzdhj zzdhjVar) {
        this.f10664d = zzenhVar;
        this.f10665e = zzfklVar;
        this.f10661a = zzfkaVar;
        this.f10662b = zzdhjVar;
        this.f10663c = zzenpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zza(Throwable th) {
        zzfkl zzfklVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfH)).booleanValue()) {
            agd.h();
        }
        zzdhj zzdhjVar = this.f10662b;
        final abz zza = zzdhjVar.zza().zza(th);
        zzdhjVar.zzb().zzdB(zza);
        zzenp zzenpVar = this.f10663c;
        zzenpVar.f7289e.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzenn
            @Override // java.lang.Runnable
            public final void run() {
                aqo.this.f10663c.f7285a.zza().zzdB(zza);
            }
        });
        zzfgl.zzb(zza.zza, th, "NativeAdLoader.onFailure");
        this.f10664d.zza();
        boolean booleanValue = ((Boolean) zzbeg.zzc.zze()).booleanValue();
        zzfka zzfkaVar = this.f10661a;
        if (!booleanValue || (zzfklVar = this.f10665e) == null) {
            zzfko zzfkoVar = zzenpVar.f7286b;
            zzfkaVar.zza(zza);
            zzfkaVar.zzh(th);
            zzfkaVar.zzg(false);
            zzfkoVar.zzb(zzfkaVar.zzm());
            return;
        }
        zzfklVar.zzc(zza);
        zzfkaVar.zzh(th);
        zzfkaVar.zzg(false);
        zzfklVar.zza(zzfkaVar);
        zzfklVar.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfkl zzfklVar;
        zzcrq zzcrqVar = (zzcrq) obj;
        synchronized (this.f10663c) {
            try {
                zzcrqVar.zzo().zza(this.f10663c.f7285a.zzd());
                this.f10664d.zzb(zzcrqVar);
                this.f10663c.f7289e.zzC().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzenm
                    @Override // java.lang.Runnable
                    public final void run() {
                        aqo.this.f10663c.f7285a.zzb().zzs();
                    }
                });
                if (!((Boolean) zzbeg.zzc.zze()).booleanValue() || (zzfklVar = this.f10665e) == null) {
                    zzfko zzfkoVar = this.f10663c.f7286b;
                    zzfka zzfkaVar = this.f10661a;
                    zzfkaVar.zzb(zzcrqVar.zzq().zzb);
                    zzfkaVar.zzd(zzcrqVar.zzm().zzg());
                    zzfkaVar.zzg(true);
                    zzfkoVar.zzb(zzfkaVar.zzm());
                } else {
                    zzfklVar.zzg(zzcrqVar.zzq().zzb);
                    zzfklVar.zze(zzcrqVar.zzm().zzg());
                    zzfka zzfkaVar2 = this.f10661a;
                    zzfkaVar2.zzg(true);
                    zzfklVar.zza(zzfkaVar2);
                    zzfklVar.zzh();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

package g;

import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzcon;
import com.google.android.gms.internal.ads.zzcrq;
import com.google.android.gms.internal.ads.zzenh;
import com.google.android.gms.internal.ads.zzfab;
import com.google.android.gms.internal.ads.zzfgl;
import com.google.android.gms.internal.ads.zzfgq;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkl;
import com.google.android.gms.internal.ads.zzfko;
import com.google.android.gms.internal.ads.zzgee;
import g.gam;

/* loaded from: classes3.dex */
public final class gam implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfka f17808a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ wc f17809b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfab f17810c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzenh f17811d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzfkl f17812e;

    public gam(zzfab zzfabVar, zzenh zzenhVar, zzfkl zzfklVar, zzfka zzfkaVar, wc wcVar) {
        this.f17811d = zzenhVar;
        this.f17812e = zzfklVar;
        this.f17808a = zzfkaVar;
        this.f17809b = wcVar;
        this.f17810c = zzfabVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zza(Throwable th) {
        zzfkl zzfklVar;
        zzbce zzbceVar = zzbcn.zzfH;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            agd.h();
        }
        zzcon zzconVar = (zzcon) this.f17810c.f7726c.zzd();
        final abz zzb = zzconVar == null ? zzfgq.zzb(th, null) : zzconVar.zzb().zza(th);
        synchronized (this.f17810c) {
            try {
                zzfab zzfabVar = this.f17810c;
                zzfabVar.h = null;
                if (zzconVar != null) {
                    zzconVar.zzc().zzdB(zzb);
                    if (((Boolean) edtVar.f15379d.zza(zzbcn.zzhP)).booleanValue()) {
                        this.f17810c.f7730g.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzezx
                            @Override // java.lang.Runnable
                            public final void run() {
                                gam.this.f17810c.f7725b.zzdB(zzb);
                            }
                        });
                    }
                } else {
                    zzfabVar.f7725b.zzdB(zzb);
                    ((zzcon) this.f17810c.l(this.f17809b).zzh()).zzb().zzc().zzh();
                }
                zzfgl.zzb(zzb.zza, th, "AppOpenAdLoader.onFailure");
                this.f17811d.zza();
                if (!((Boolean) zzbeg.zzc.zze()).booleanValue() || (zzfklVar = this.f17812e) == null) {
                    zzfko zzfkoVar = this.f17810c.f7724a;
                    zzfka zzfkaVar = this.f17808a;
                    zzfkaVar.zza(zzb);
                    zzfkaVar.zzh(th);
                    zzfkaVar.zzg(false);
                    zzfkoVar.zzb(zzfkaVar.zzm());
                } else {
                    zzfklVar.zzc(zzb);
                    zzfka zzfkaVar2 = this.f17808a;
                    zzfkaVar2.zzh(th);
                    zzfkaVar2.zzg(false);
                    zzfklVar.zza(zzfkaVar2);
                    zzfklVar.zzh();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zzb(Object obj) {
        zzfkl zzfklVar;
        zzcrq zzcrqVar = (zzcrq) obj;
        synchronized (this.f17810c) {
            try {
                this.f17810c.h = null;
                if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhP)).booleanValue()) {
                    zzcrqVar.zzo().zzb(this.f17810c.f7725b);
                }
                this.f17811d.zzb(zzcrqVar);
                if (!((Boolean) zzbeg.zzc.zze()).booleanValue() || (zzfklVar = this.f17812e) == null) {
                    zzfko zzfkoVar = this.f17810c.f7724a;
                    zzfka zzfkaVar = this.f17808a;
                    zzfkaVar.zzb(zzcrqVar.zzq().zzb);
                    zzfkaVar.zzd(zzcrqVar.zzm().zzg());
                    zzfkaVar.zzg(true);
                    zzfkoVar.zzb(zzfkaVar.zzm());
                } else {
                    zzfklVar.zzg(zzcrqVar.zzq().zzb);
                    zzfklVar.zze(zzcrqVar.zzm().zzg());
                    zzfka zzfkaVar2 = this.f17808a;
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

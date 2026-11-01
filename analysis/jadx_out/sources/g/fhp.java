package g;

import com.google.android.gms.internal.ads.zzbce;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzdas;
import com.google.android.gms.internal.ads.zzdfj;
import com.google.android.gms.internal.ads.zzdgn;
import com.google.android.gms.internal.ads.zzenh;
import com.google.android.gms.internal.ads.zzfcw;
import com.google.android.gms.internal.ads.zzfgl;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkl;
import com.google.android.gms.internal.ads.zzfko;
import com.google.android.gms.internal.ads.zzgee;
import g.fhp;

/* loaded from: classes3.dex */
public final class fhp implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfka f16797a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzdgn f16798b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfcw f16799c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzenh f16800d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzfkl f16801e;

    public fhp(zzfcw zzfcwVar, zzenh zzenhVar, zzfkl zzfklVar, zzfka zzfkaVar, zzdgn zzdgnVar) {
        this.f16800d = zzenhVar;
        this.f16801e = zzfklVar;
        this.f16797a = zzfkaVar;
        this.f16798b = zzdgnVar;
        this.f16799c = zzfcwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zza(Throwable th) {
        zzfkl zzfklVar;
        zzbce zzbceVar = zzbcn.zzfH;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            agd.h();
        }
        final abz zza = this.f16798b.zza().zza(th);
        synchronized (this.f16799c) {
            try {
                this.f16799c.f7799f = null;
                this.f16798b.zzb().zzdB(zza);
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzhQ)).booleanValue()) {
                    this.f16799c.f7800g.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcr
                        @Override // java.lang.Runnable
                        public final void run() {
                            fhp.this.f16799c.f7795b.zzdB(zza);
                        }
                    });
                    this.f16799c.f7800g.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcs
                        @Override // java.lang.Runnable
                        public final void run() {
                            fhp.this.f16799c.f7796c.zzdB(zza);
                        }
                    });
                }
                zzfgl.zzb(zza.zza, th, "InterstitialAdLoader.onFailure");
                this.f16800d.zza();
                if (!((Boolean) zzbeg.zzc.zze()).booleanValue() || (zzfklVar = this.f16801e) == null) {
                    zzfko zzfkoVar = this.f16799c.i;
                    zzfka zzfkaVar = this.f16797a;
                    zzfkaVar.zza(zza);
                    zzfkaVar.zzh(th);
                    zzfkaVar.zzg(false);
                    zzfkoVar.zzb(zzfkaVar.zzm());
                } else {
                    zzfklVar.zzc(zza);
                    zzfka zzfkaVar2 = this.f16797a;
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
        zzdfj zzdfjVar = (zzdfj) obj;
        synchronized (this.f16799c) {
            try {
                this.f16799c.f7799f = null;
                zzbce zzbceVar = zzbcn.zzhQ;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    zzdas zzo = zzdfjVar.zzo();
                    zzo.zza(this.f16799c.f7795b);
                    zzo.zzd(this.f16799c.f7796c);
                }
                this.f16800d.zzb(zzdfjVar);
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    this.f16799c.f7800g.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfct
                        @Override // java.lang.Runnable
                        public final void run() {
                            fhp.this.f16799c.f7795b.zzs();
                        }
                    });
                    this.f16799c.f7800g.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcu
                        @Override // java.lang.Runnable
                        public final void run() {
                            fhp.this.f16799c.f7796c.zzs();
                        }
                    });
                }
                if (!((Boolean) zzbeg.zzc.zze()).booleanValue() || (zzfklVar = this.f16801e) == null) {
                    zzfko zzfkoVar = this.f16799c.i;
                    zzfka zzfkaVar = this.f16797a;
                    zzfkaVar.zzb(zzdfjVar.zzq().zzb);
                    zzfkaVar.zzd(zzdfjVar.zzm().zzg());
                    zzfkaVar.zzg(true);
                    zzfkoVar.zzb(zzfkaVar.zzm());
                } else {
                    zzfklVar.zzg(zzdfjVar.zzq().zzb);
                    zzfklVar.zze(zzdfjVar.zzm().zzg());
                    zzfka zzfkaVar2 = this.f16797a;
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

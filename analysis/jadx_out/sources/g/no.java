package g;

import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzdor;
import com.google.android.gms.internal.ads.zzdow;
import com.google.android.gms.internal.ads.zzenh;
import com.google.android.gms.internal.ads.zzfdw;
import com.google.android.gms.internal.ads.zzfeg;
import com.google.android.gms.internal.ads.zzfgl;
import com.google.android.gms.internal.ads.zzfgq;
import com.google.android.gms.internal.ads.zzfka;
import com.google.android.gms.internal.ads.zzfkl;
import com.google.android.gms.internal.ads.zzfko;
import com.google.android.gms.internal.ads.zzgee;
import g.no;
import j$.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class no implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfka f19712a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fuc f19713b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfeg f19714c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ zzenh f19715d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzfkl f19716e;

    public no(zzfeg zzfegVar, zzenh zzenhVar, zzfkl zzfklVar, zzfka zzfkaVar, fuc fucVar) {
        this.f19715d = zzenhVar;
        this.f19716e = zzfklVar;
        this.f19712a = zzfkaVar;
        this.f19713b = fucVar;
        this.f19714c = zzfegVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zza(Throwable th) {
        zzfkl zzfklVar;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzfH)).booleanValue()) {
            agd.h();
        }
        zzdow zzdowVar = (zzdow) this.f19714c.f7816c.zzd();
        final abz zzb = zzdowVar == null ? zzfgq.zzb(th, null) : zzdowVar.zzb().zza(th);
        synchronized (this.f19714c) {
            try {
                if (zzdowVar != null) {
                    zzdowVar.zza().zzdB(zzb);
                    this.f19714c.f7820g.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfeb
                        @Override // java.lang.Runnable
                        public final void run() {
                            no.this.f19714c.f7815b.zzdB(zzb);
                        }
                    });
                } else {
                    this.f19714c.f7815b.zzdB(zzb);
                    this.f19714c.j(this.f19713b).mo6zze().zzb().zzc().zzh();
                }
                zzfgl.zzb(zzb.zza, th, "RewardedAdLoader.onFailure");
                this.f19715d.zza();
                if (!((Boolean) zzbeg.zzc.zze()).booleanValue() || (zzfklVar = this.f19716e) == null) {
                    zzfko zzfkoVar = this.f19714c.i;
                    zzfka zzfkaVar = this.f19712a;
                    zzfkaVar.zza(zzb);
                    zzfkaVar.zzh(th);
                    zzfkaVar.zzg(false);
                    zzfkoVar.zzb(zzfkaVar.zzm());
                } else {
                    zzfklVar.zzc(zzb);
                    zzfka zzfkaVar2 = this.f19712a;
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
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzfkl zzfklVar;
        zzdor zzdorVar = (zzdor) obj;
        synchronized (this.f19714c) {
            try {
                zzdorVar.zzo().zzd(this.f19714c.f7815b);
                this.f19715d.zzb(zzdorVar);
                zzfeg zzfegVar = this.f19714c;
                Executor executor = zzfegVar.f7820g;
                final zzfdw zzfdwVar = zzfegVar.f7815b;
                Objects.requireNonNull(zzfdwVar);
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfec
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzfdw.this.zzs();
                    }
                });
                this.f19714c.f7815b.onAdMetadataChanged();
                if (!((Boolean) zzbeg.zzc.zze()).booleanValue() || (zzfklVar = this.f19716e) == null) {
                    zzfko zzfkoVar = this.f19714c.i;
                    zzfka zzfkaVar = this.f19712a;
                    zzfkaVar.zzb(zzdorVar.zzq().zzb);
                    zzfkaVar.zzd(zzdorVar.zzm().zzg());
                    zzfkaVar.zzg(true);
                    zzfkoVar.zzb(zzfkaVar.zzm());
                } else {
                    zzfklVar.zzg(zzdorVar.zzq().zzb);
                    zzfklVar.zze(zzdorVar.zzm().zzg());
                    zzfka zzfkaVar2 = this.f19712a;
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

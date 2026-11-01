package g;

import com.google.android.gms.internal.ads.zzcnb;
import com.google.android.gms.internal.ads.zzflr;
import com.google.android.gms.internal.ads.zzgee;
import g.edt;
import g.gym;

/* loaded from: classes3.dex */
public final class gym implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcnb f19004a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzflr f19005b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f19006c;

    public gym(zzcnb zzcnbVar, zzflr zzflrVar, String str) {
        this.f19005b = zzflrVar;
        this.f19006c = str;
        this.f19004a = zzcnbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zza(final Throwable th) {
        this.f19004a.f5362c.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmy
            @Override // java.lang.Runnable
            public final void run() {
                boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzjW)).booleanValue();
                gym gymVar = gym.this;
                Throwable th2 = th;
                if (booleanValue) {
                    zzcnb zzcnbVar = gymVar.f19004a;
                    zzcnbVar.f5365f = zzbuj.zzc(zzcnbVar.f5363d);
                    gymVar.f19004a.f5365f.zzh(th2, "AttributionReporting.registerSourceAndPingClickUrl");
                } else {
                    zzcnb zzcnbVar2 = gymVar.f19004a;
                    zzcnbVar2.f5360a = zzbuj.zza(zzcnbVar2.f5363d);
                    gymVar.f19004a.f5360a.zzh(th2, "AttributionReportingSampled.registerSourceAndPingClickUrl");
                }
                gymVar.f19005b.zzc(gymVar.f19006c, null);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        final String str = (String) obj;
        this.f19004a.f5362c.zza(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmz
            @Override // java.lang.Runnable
            public final void run() {
                gym.this.f19005b.zzc(str, null);
            }
        });
    }
}

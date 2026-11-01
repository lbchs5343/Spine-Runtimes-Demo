package g;

import com.google.android.gms.internal.ads.zzaan;
import com.google.android.gms.internal.ads.zzaap;
import com.google.android.gms.internal.ads.zzci;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdv;
import com.google.android.gms.internal.ads.zzej;

/* loaded from: classes3.dex */
public final class ddb {

    /* renamed from: a, reason: collision with root package name */
    public long f14001a;

    /* renamed from: d, reason: collision with root package name */
    public final zzaap f14004d;

    /* renamed from: e, reason: collision with root package name */
    public zzci f14005e;
    public final gyf h;

    /* renamed from: g, reason: collision with root package name */
    public final zzaan f14007g = new zzaan();
    public final zzej i = new zzej(10);

    /* renamed from: b, reason: collision with root package name */
    public final zzej f14002b = new zzej(10);

    /* renamed from: c, reason: collision with root package name */
    public final zzdv f14003c = new zzdv(16);
    public zzci j = zzci.zza;

    /* renamed from: f, reason: collision with root package name */
    public long f14006f = -9223372036854775807L;

    public ddb(gyf gyfVar, zzaap zzaapVar) {
        this.h = gyfVar;
        this.f14004d = zzaapVar;
    }

    public final void k() {
        this.f14003c.zzc();
        this.f14006f = -9223372036854775807L;
        zzej zzejVar = this.f14002b;
        if (zzejVar.zza() > 0) {
            zzdb.zzd(zzejVar.zza() > 0);
            while (zzejVar.zza() > 1) {
                zzejVar.zzb();
            }
            Object zzb = zzejVar.zzb();
            zzb.getClass();
            zzejVar.zzd(0L, (Long) zzb);
        }
        zzci zzciVar = this.f14005e;
        zzej zzejVar2 = this.i;
        if (zzciVar != null) {
            zzejVar2.zze();
            return;
        }
        if (zzejVar2.zza() > 0) {
            zzdb.zzd(zzejVar2.zza() > 0);
            while (zzejVar2.zza() > 1) {
                zzejVar2.zzb();
            }
            Object zzb2 = zzejVar2.zzb();
            zzb2.getClass();
            this.f14005e = (zzci) zzb2;
        }
    }
}

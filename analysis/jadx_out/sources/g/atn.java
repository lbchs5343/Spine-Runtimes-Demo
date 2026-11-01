package g;

import com.google.android.gms.internal.ads.zzbvx;
import com.google.android.gms.internal.ads.zzdxq;
import com.google.android.gms.internal.ads.zzgdp;
import com.google.android.gms.internal.ads.zzgei;
import com.google.android.gms.internal.ads.zzges;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class atn implements zzgdp {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f10811a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdxq f10812b;

    public atn(zzges zzgesVar, zzdxq zzdxqVar) {
        this.f10811a = zzgesVar;
        this.f10812b = zzdxqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdp
    public final /* bridge */ /* synthetic */ dcy zza(Object obj) {
        zzbvx zzbvxVar = (zzbvx) obj;
        return zzgei.zzn(this.f10812b.zzc(zzbvxVar), new yj(zzbvxVar, 0), this.f10811a);
    }
}

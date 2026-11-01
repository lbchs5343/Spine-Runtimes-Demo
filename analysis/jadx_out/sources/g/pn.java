package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbq;
import com.google.android.gms.internal.ads.zzbr;
import com.google.android.gms.internal.ads.zzce;
import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.internal.ads.zzch;
import com.google.android.gms.internal.ads.zzm;
import com.google.android.gms.internal.ads.zzp;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public final class pn implements zzbq {

    /* renamed from: a, reason: collision with root package name */
    public final zzcf f19820a;

    public pn(dxt dxtVar) {
        this.f19820a = dxtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbq
    public final zzbr zza(Context context, zzm zzmVar, zzp zzpVar, zzch zzchVar, Executor executor, List list, long j) {
        try {
            return ((zzbq) Class.forName("androidx.media3.effect.PreviewingSingleInputVideoGraph$Factory").getConstructor(zzcf.class).newInstance(this.f19820a)).zza(context, zzmVar, zzpVar, zzchVar, executor, list, 0L);
        } catch (Exception e2) {
            if (e2 instanceof zzce) {
                throw ((zzce) e2);
            }
            throw new zzce(e2, -9223372036854775807L);
        }
    }
}

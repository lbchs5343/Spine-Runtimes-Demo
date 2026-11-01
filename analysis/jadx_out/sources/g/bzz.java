package g;

import com.google.android.gms.internal.ads.zzapl;
import com.google.android.gms.internal.ads.zzapp;
import com.google.android.gms.internal.ads.zzapv;
import com.google.android.gms.internal.ads.zzaqm;
import com.google.android.gms.internal.ads.zzcao;
import java.util.Map;

/* loaded from: classes3.dex */
public final class bzz extends zzapp {
    public final dzz t;
    public final zzcao u;

    public bzz(String str, zzcao zzcaoVar) {
        super(0, str, new aoy(zzcaoVar));
        this.u = zzcaoVar;
        dzz dzzVar = new dzz();
        this.t = dzzVar;
        if (dzz.g()) {
            Object obj = null;
            dzzVar.h("onNetworkRequest", new duw(str, "GET", obj, obj, 12));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final zzapv o(zzapl zzaplVar) {
        return zzapv.zzb(zzaplVar, zzaqm.zzb(zzaplVar));
    }

    @Override // com.google.android.gms.internal.ads.zzapp
    public final void q(Object obj) {
        zzapl zzaplVar = (zzapl) obj;
        Map map = zzaplVar.zzc;
        int i = zzaplVar.zza;
        dzz dzzVar = this.t;
        dzzVar.getClass();
        if (dzz.g()) {
            dzzVar.h("onNetworkResponse", new gqc(i, map, 16));
            if (i < 200 || i >= 300) {
                dzzVar.h("onNetworkRequestError", new aox(null));
            }
        }
        byte[] bArr = zzaplVar.zzb;
        if (dzz.g() && bArr != null) {
            dzzVar.h("onNetworkResponseBody", new fnq(29, bArr));
        }
        this.u.zzc(zzaplVar);
    }
}

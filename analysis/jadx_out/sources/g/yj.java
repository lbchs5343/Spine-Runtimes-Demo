package g;

import android.util.JsonReader;
import com.google.android.gms.internal.ads.zzblc;
import com.google.android.gms.internal.ads.zzbli;
import com.google.android.gms.internal.ads.zzbvx;
import com.google.android.gms.internal.ads.zzcao;
import com.google.android.gms.internal.ads.zzdyx;
import com.google.android.gms.internal.ads.zzgdp;
import com.google.android.gms.internal.ads.zzgei;
import java.io.InputStreamReader;
import org.json.JSONException;

/* loaded from: classes3.dex */
public final /* synthetic */ class yj implements zzgdp {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20342a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ exk f20343b;

    public /* synthetic */ yj(exk exkVar, int i) {
        this.f20342a = i;
        this.f20343b = exkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdp
    public final dcy zza(Object obj) {
        switch (this.f20342a) {
            case 0:
                zzdyx zzdyxVar = (zzdyx) obj;
                ggs ggsVar = new ggs(new JsonReader(new InputStreamReader(zzdyxVar.zzb())), zzdyxVar.zza());
                try {
                    ggsVar.f18123e = cbv.f12612a.f12615d.w(((zzbvx) this.f20343b).zza).toString();
                } catch (JSONException unused) {
                    ggsVar.f18123e = "{}";
                }
                return zzgei.zzh(ggsVar);
            default:
                zzcao zzcaoVar = new zzcao();
                ((zzbli) obj).zze((zzblc) this.f20343b, new dzx(zzcaoVar));
                return zzcaoVar;
        }
    }
}

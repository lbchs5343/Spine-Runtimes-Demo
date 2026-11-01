package g;

import com.google.android.gms.internal.ads.zzbkg;
import com.google.android.gms.internal.ads.zzbnx;
import com.google.android.gms.internal.ads.zzcao;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class evz implements zzbkg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16260a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcao f16261b;

    public /* synthetic */ evz(zzcao zzcaoVar, int i) {
        this.f16260a = i;
        this.f16261b = zzcaoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zza(String str) {
        switch (this.f16260a) {
            case 0:
                this.f16261b.zzd(new zzbnx(str));
                break;
            default:
                zzcao zzcaoVar = this.f16261b;
                try {
                    if (str == null) {
                        zzcaoVar.zzd(new zzbnx());
                    } else {
                        zzcaoVar.zzd(new zzbnx(str));
                    }
                    break;
                } catch (IllegalStateException unused) {
                    return;
                }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzb(JSONObject jSONObject) {
        switch (this.f16260a) {
            case 0:
                this.f16261b.zzc(jSONObject);
                break;
            default:
                zzcao zzcaoVar = this.f16261b;
                try {
                    zzcaoVar.zzc(jSONObject);
                    break;
                } catch (IllegalStateException unused) {
                    return;
                } catch (JSONException e2) {
                    zzcaoVar.zzd(e2);
                }
        }
    }
}

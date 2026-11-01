package g;

import com.google.android.gms.internal.ads.zzbkg;
import com.google.android.gms.internal.ads.zzbno;
import com.google.android.gms.internal.ads.zzbnx;
import com.google.android.gms.internal.ads.zzbom;
import com.google.android.gms.internal.ads.zzcao;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class exh implements zzbkg {

    /* renamed from: a, reason: collision with root package name */
    public final zzbno f16317a;

    /* renamed from: b, reason: collision with root package name */
    public final zzcao f16318b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbom f16319c;

    public exh(zzbom zzbomVar, zzbno zzbnoVar, zzcao zzcaoVar) {
        this.f16319c = zzbomVar;
        this.f16317a = zzbnoVar;
        this.f16318b = zzcaoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zza(String str) {
        zzbno zzbnoVar = this.f16317a;
        zzcao zzcaoVar = this.f16318b;
        try {
            if (str == null) {
                zzcaoVar.zzd(new zzbnx());
            } else {
                zzcaoVar.zzd(new zzbnx(str));
            }
        } catch (IllegalStateException unused) {
        } catch (Throwable th) {
            zzbnoVar.zzb();
            throw th;
        }
        zzbnoVar.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzb(JSONObject jSONObject) {
        zzbno zzbnoVar = this.f16317a;
        zzcao zzcaoVar = this.f16318b;
        try {
            try {
                zzcaoVar.zzc(this.f16319c.f4905b.zza(jSONObject));
            } catch (IllegalStateException unused) {
            } catch (JSONException e2) {
                zzcaoVar.zzd(e2);
            }
        } finally {
            zzbnoVar.zzb();
        }
    }
}

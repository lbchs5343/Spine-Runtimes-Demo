package g;

import com.google.android.gms.internal.ads.zzbym;
import com.google.android.gms.internal.ads.zzcls;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class fry implements zzcls {

    /* renamed from: a, reason: collision with root package name */
    public final zzbym f17322a;

    public fry(zzbym zzbymVar) {
        this.f17322a = zzbymVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.ads.zzbym] */
    /* JADX WARN: Type inference failed for: r4v2, types: [int] */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    @Override // com.google.android.gms.internal.ads.zzcls
    public final void zza(JSONObject jSONObject) {
        this.f17322a.zzb(jSONObject.optBoolean("npa_reset") ? -1 : jSONObject.optBoolean("npa"), jSONObject.optLong("timestamp"));
    }
}

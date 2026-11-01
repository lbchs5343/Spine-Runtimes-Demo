package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbvt;
import com.google.android.gms.internal.ads.zzevy;
import com.google.android.gms.internal.ads.zzevz;
import com.google.android.gms.internal.ads.zzgei;
import g.agd;
import g.bnx;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class bnx implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f11898a;

    public bnx(Context context) {
        this.f11898a = zzbvt.zzc(context, akx.forPackage());
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 46;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzlF)).booleanValue() ? zzgei.zzh(new zzevy() { // from class: com.google.android.gms.internal.ads.zzeyd
            @Override // com.google.android.gms.internal.ads.zzevy
            public final void zzj(Object obj) {
            }
        }) : zzgei.zzh(new zzevy() { // from class: com.google.android.gms.internal.ads.zzeye
            @Override // com.google.android.gms.internal.ads.zzevy
            public final void zzj(Object obj) {
                bnx bnxVar = bnx.this;
                JSONObject jSONObject = (JSONObject) obj;
                bnxVar.getClass();
                try {
                    jSONObject.put("gms_sdk_env", bnxVar.f11898a);
                } catch (JSONException unused) {
                    agd.e("Failed putting version constants.");
                }
            }
        });
    }
}

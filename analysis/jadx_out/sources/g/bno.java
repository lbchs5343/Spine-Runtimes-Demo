package g;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzclr;
import java.util.Map;

/* loaded from: classes3.dex */
public final class bno implements zzclr {
    @Override // com.google.android.gms.internal.ads.zzclr
    public final void zza(Map map) {
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkb)).booleanValue() || map.isEmpty()) {
            return;
        }
        String str = (String) map.get("is_topics_ad_personalization_allowed");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        ((cmo) ti.f20033a.f20034ab.zzi()).ak(Boolean.parseBoolean(str));
    }
}

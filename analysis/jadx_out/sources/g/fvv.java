package g;

import android.net.Uri;
import com.google.android.gms.internal.ads.zzbeh;
import java.util.Map;

/* loaded from: classes3.dex */
public final class fvv {

    /* renamed from: a, reason: collision with root package name */
    public final String f17491a = (String) zzbeh.zza.zze();

    public final String b(Map map) {
        Uri.Builder buildUpon = Uri.parse(this.f17491a).buildUpon();
        for (Map.Entry entry : map.entrySet()) {
            buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        return buildUpon.build().toString();
    }
}

package g;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzbjr;
import com.google.android.gms.internal.ads.zzcnt;
import g.cjf;
import java.util.Map;

/* loaded from: classes3.dex */
public final class cjf implements zzbjr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcnt f12970a;

    public cjf(zzcnt zzcntVar) {
        this.f12970a = zzcntVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjr
    public final void zza(Object obj, Map map) {
        if (map == null) {
            return;
        }
        String str = (String) map.get(TTDownloadField.TT_HASHCODE);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        zzcnt zzcntVar = this.f12970a;
        if (str.equals(zzcntVar.f5397c)) {
            zzcntVar.f5400f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnr
                @Override // java.lang.Runnable
                public final void run() {
                    cjf.this.f12970a.f5395a.zzj();
                }
            });
        }
    }
}

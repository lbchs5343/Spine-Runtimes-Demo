package g;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbux;
import com.google.android.gms.internal.ads.zzbyh;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class cui {

    /* renamed from: a, reason: collision with root package name */
    public final zzbux f13528a = new zzbux(false, Collections.EMPTY_LIST);

    /* renamed from: b, reason: collision with root package name */
    public final Context f13529b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f13530c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbyh f13531d;

    public cui(Context context, zzbyh zzbyhVar) {
        this.f13529b = context;
        this.f13531d = zzbyhVar;
    }

    public final void e(String str) {
        List<String> list;
        zzbux zzbuxVar = this.f13528a;
        zzbyh zzbyhVar = this.f13531d;
        if ((zzbyhVar == null || !zzbyhVar.zza().zzf) && !zzbuxVar.zza) {
            return;
        }
        if (str == null) {
            str = "";
        }
        if (zzbyhVar != null) {
            zzbyhVar.zzd(str, null, 3);
            return;
        }
        if (!zzbuxVar.zza || (list = zzbuxVar.zzb) == null) {
            return;
        }
        for (String str2 : list) {
            if (!TextUtils.isEmpty(str2)) {
                String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                esy esyVar = ti.f20033a.z;
                esy.ah(this.f13529b, "", replace);
            }
        }
    }

    public final boolean f() {
        zzbyh zzbyhVar = this.f13531d;
        return ((zzbyhVar == null || !zzbyhVar.zza().zzf) && !this.f13528a.zza) || this.f13530c;
    }
}

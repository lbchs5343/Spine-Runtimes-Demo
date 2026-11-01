package g;

import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbvx;
import com.google.android.gms.internal.ads.zzcvt;
import com.google.android.gms.internal.ads.zzdyw;
import com.google.android.gms.internal.ads.zzfce;
import com.google.android.gms.internal.ads.zzffo;
import com.google.android.gms.internal.ads.zzfhc;
import com.google.android.gms.internal.ads.zzfho;
import com.google.android.gms.internal.ads.zzfwh;

/* loaded from: classes3.dex */
public final class awi implements zzfwh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10972a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10973b;

    public /* synthetic */ awi(int i, Object obj) {
        this.f10972a = i;
        this.f10973b = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzfwh
    public final Object apply(Object obj) {
        switch (this.f10972a) {
            case 0:
                agd.f("", (zzdyw) obj);
                agd.e("Failed to get a cache key, reverting to legacy flow.");
                dpa dpaVar = (dpa) this.f10973b;
                zzffo zzg = ((zzcvt) dpaVar.f14566d).zzg();
                zzfce zzfceVar = new zzfce(null, ((zzfhc) dpaVar.f14569g).zzc(zzg.zzd, zzg.zzf, zzg.zzj));
                dpaVar.f14565c = zzfceVar;
                return zzfceVar;
            case 1:
                zzbvx zzbvxVar = (zzbvx) obj;
                zzfce zzfceVar2 = new zzfce(zzbvxVar, new zzfho(zzbvxVar.zzj));
                ((dpa) this.f10973b).f14565c = zzfceVar2;
                return zzfceVar2;
            default:
                Uri uri = (Uri) this.f10973b;
                String str = (String) obj;
                return !TextUtils.isEmpty(str) ? der.am(uri, "nas", str) : uri;
        }
    }
}

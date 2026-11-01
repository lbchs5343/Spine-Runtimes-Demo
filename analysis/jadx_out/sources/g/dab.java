package g;

import com.google.android.gms.internal.ads.zzfuj;
import com.google.android.gms.internal.ads.zzfuk;

/* loaded from: classes3.dex */
public final class dab extends zzfuj {

    /* renamed from: a, reason: collision with root package name */
    public String f13837a;

    /* renamed from: b, reason: collision with root package name */
    public String f13838b;

    @Override // com.google.android.gms.internal.ads.zzfuj
    public final zzfuj zza(String str) {
        this.f13838b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfuj
    public final zzfuj zzb(String str) {
        this.f13837a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfuj
    public final zzfuk zzc() {
        return new fac(this.f13837a, this.f13838b);
    }
}

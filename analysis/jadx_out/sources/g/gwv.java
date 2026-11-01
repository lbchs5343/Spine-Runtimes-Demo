package g;

import com.google.android.gms.internal.ads.zzfvj;
import com.google.android.gms.internal.ads.zzfvk;

/* loaded from: classes3.dex */
public final class gwv extends zzfvj {

    /* renamed from: a, reason: collision with root package name */
    public String f18903a;

    /* renamed from: b, reason: collision with root package name */
    public String f18904b;

    @Override // com.google.android.gms.internal.ads.zzfvj
    public final zzfvj zza(String str) {
        this.f18904b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvj
    public final zzfvj zzb(String str) {
        this.f18903a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfvj
    public final zzfvk zzc() {
        return new duv(this.f18903a, this.f18904b);
    }
}

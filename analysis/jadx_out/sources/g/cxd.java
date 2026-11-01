package g;

import com.google.android.gms.internal.ads.zzfpr;

/* loaded from: classes3.dex */
public final class cxd extends zzfpr {

    /* renamed from: a, reason: collision with root package name */
    public final long f13676a;

    /* renamed from: b, reason: collision with root package name */
    public final long f13677b;

    /* renamed from: c, reason: collision with root package name */
    public final String f13678c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f13679d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f13680e;

    public /* synthetic */ cxd(String str, boolean z, boolean z2, long j, long j2) {
        this.f13678c = str;
        this.f13679d = z;
        this.f13680e = z2;
        this.f13676a = j;
        this.f13677b = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfpr)) {
            return false;
        }
        zzfpr zzfprVar = (zzfpr) obj;
        if (!this.f13678c.equals(zzfprVar.zzd()) || this.f13679d != zzfprVar.zzh() || this.f13680e != zzfprVar.zzg()) {
            return false;
        }
        zzfprVar.zzf();
        if (this.f13676a != zzfprVar.zzb()) {
            return false;
        }
        zzfprVar.zze();
        return this.f13677b == zzfprVar.zza();
    }

    public final int hashCode() {
        return ((((((((((((this.f13678c.hashCode() ^ 1000003) * 1000003) ^ (true != this.f13679d ? 1237 : 1231)) * 1000003) ^ (true != this.f13680e ? 1237 : 1231)) * 1000003) ^ 1237) * 1000003) ^ ((int) this.f13676a)) * 1000003) ^ 1237) * 1000003) ^ ((int) this.f13677b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AdShield2Options{clientVersion=");
        sb.append(this.f13678c);
        sb.append(", shouldGetAdvertisingId=");
        sb.append(this.f13679d);
        sb.append(", isGooglePlayServicesAvailable=");
        sb.append(this.f13680e);
        sb.append(", enableQuerySignalsTimeout=false, querySignalsTimeoutMs=");
        sb.append(this.f13676a);
        sb.append(", enableQuerySignalsCache=false, querySignalsCacheTtlSeconds=");
        return tn.f(this.f13677b, "}", sb);
    }

    @Override // com.google.android.gms.internal.ads.zzfpr
    public final long zza() {
        return this.f13677b;
    }

    @Override // com.google.android.gms.internal.ads.zzfpr
    public final long zzb() {
        return this.f13676a;
    }

    @Override // com.google.android.gms.internal.ads.zzfpr
    public final String zzd() {
        return this.f13678c;
    }

    @Override // com.google.android.gms.internal.ads.zzfpr
    public final boolean zze() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfpr
    public final boolean zzf() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfpr
    public final boolean zzg() {
        return this.f13680e;
    }

    @Override // com.google.android.gms.internal.ads.zzfpr
    public final boolean zzh() {
        return this.f13679d;
    }
}

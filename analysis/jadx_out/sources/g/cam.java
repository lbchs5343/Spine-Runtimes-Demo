package g;

import com.google.android.gms.internal.ads.zzfpq;
import com.google.android.gms.internal.ads.zzfpr;

/* loaded from: classes3.dex */
public final class cam extends zzfpq {

    /* renamed from: a, reason: collision with root package name */
    public long f12552a;

    /* renamed from: b, reason: collision with root package name */
    public long f12553b;

    /* renamed from: c, reason: collision with root package name */
    public String f12554c;

    /* renamed from: d, reason: collision with root package name */
    public byte f12555d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f12556e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f12557f;

    @Override // com.google.android.gms.internal.ads.zzfpq
    public final zzfpq zza(String str) {
        if (str == null) {
            throw new NullPointerException("Null clientVersion");
        }
        this.f12554c = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfpq
    public final zzfpq zzb(boolean z) {
        this.f12555d = (byte) (this.f12555d | 16);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfpq
    public final zzfpq zzc(boolean z) {
        this.f12555d = (byte) (this.f12555d | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfpq
    public final zzfpq zzd(boolean z) {
        this.f12557f = true;
        this.f12555d = (byte) (this.f12555d | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfpq
    public final zzfpq zze(long j) {
        this.f12553b = 300L;
        this.f12555d = (byte) (this.f12555d | 32);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfpq
    public final zzfpq zzf(long j) {
        this.f12552a = 100L;
        this.f12555d = (byte) (this.f12555d | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfpq
    public final zzfpq zzg(boolean z) {
        this.f12556e = z;
        this.f12555d = (byte) (this.f12555d | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfpq
    public final zzfpr zzh() {
        String str;
        if (this.f12555d == 63 && (str = this.f12554c) != null) {
            return new cxd(str, this.f12556e, this.f12557f, this.f12552a, this.f12553b);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f12554c == null) {
            sb.append(" clientVersion");
        }
        if ((this.f12555d & 1) == 0) {
            sb.append(" shouldGetAdvertisingId");
        }
        if ((this.f12555d & 2) == 0) {
            sb.append(" isGooglePlayServicesAvailable");
        }
        if ((this.f12555d & 4) == 0) {
            sb.append(" enableQuerySignalsTimeout");
        }
        if ((this.f12555d & 8) == 0) {
            sb.append(" querySignalsTimeoutMs");
        }
        if ((this.f12555d & 16) == 0) {
            sb.append(" enableQuerySignalsCache");
        }
        if ((this.f12555d & 32) == 0) {
            sb.append(" querySignalsCacheTtlSeconds");
        }
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}

package g;

import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzadd;
import com.google.android.gms.internal.ads.zzdb;

/* loaded from: classes3.dex */
public final class eel extends zzadd {

    /* renamed from: b, reason: collision with root package name */
    public final long f15394b;

    public eel(zzacs zzacsVar, long j) {
        super(zzacsVar);
        zzdb.zzd(zzacsVar.zzf() >= j);
        this.f15394b = j;
    }

    @Override // com.google.android.gms.internal.ads.zzadd, com.google.android.gms.internal.ads.zzacs
    public final long zzd() {
        return super.zzd() - this.f15394b;
    }

    @Override // com.google.android.gms.internal.ads.zzadd, com.google.android.gms.internal.ads.zzacs
    public final long zze() {
        return super.zze() - this.f15394b;
    }

    @Override // com.google.android.gms.internal.ads.zzadd, com.google.android.gms.internal.ads.zzacs
    public final long zzf() {
        return super.zzf() - this.f15394b;
    }
}

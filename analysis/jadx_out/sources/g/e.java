package g;

import com.google.android.gms.internal.ads.zzfrw;
import com.google.android.gms.internal.ads.zzfrx;
import com.google.android.gms.internal.ads.zzfsh;

/* loaded from: classes3.dex */
public final class e extends zzfsh {

    /* renamed from: a, reason: collision with root package name */
    public final String f15162a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f15163b;

    /* renamed from: c, reason: collision with root package name */
    public final int f15164c;

    public /* synthetic */ e(String str, boolean z, int i) {
        this.f15162a = str;
        this.f15163b = z;
        this.f15164c = i;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof zzfsh)) {
                return false;
            }
            zzfsh zzfshVar = (zzfsh) obj;
            if (!this.f15162a.equals(zzfshVar.zzc())) {
                return false;
            }
            zzfshVar.zzd();
            if (this.f15163b != zzfshVar.zze()) {
                return false;
            }
            zzfshVar.zza();
            zzfshVar.zzb();
            int zzf = zzfshVar.zzf();
            if (this.f15164c == 0) {
                throw null;
            }
            if (zzf != 1) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int hashCode = this.f15162a.hashCode() ^ 1000003;
        if (this.f15164c == 0) {
            throw null;
        }
        return (((((hashCode * 1000003) ^ 1237) * 1000003) ^ (true != this.f15163b ? 1237 : 1231)) * 583896283) ^ 1;
    }

    public final String toString() {
        String str = this.f15164c != 1 ? "null" : "READ_AND_WRITE";
        StringBuilder sb = new StringBuilder("FileComplianceOptions{fileOwner=");
        sb.append(this.f15162a);
        sb.append(", hasDifferentDmaOwner=false, skipChecks=");
        sb.append(this.f15163b);
        sb.append(", dataForwardingNotAllowedResolver=null, multipleProductIdGroupsResolver=null, filePurpose=");
        return awf.ad(sb, str, "}");
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final zzfrw zza() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final zzfrx zzb() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final String zzc() {
        return this.f15162a;
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final boolean zzd() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final boolean zze() {
        return this.f15163b;
    }

    @Override // com.google.android.gms.internal.ads.zzfsh
    public final int zzf() {
        return this.f15164c;
    }
}

package g;

import com.google.android.gms.internal.ads.zzfuk;

/* loaded from: classes3.dex */
public final class fac extends zzfuk {

    /* renamed from: a, reason: collision with root package name */
    public final String f16453a;

    /* renamed from: b, reason: collision with root package name */
    public final String f16454b;

    public /* synthetic */ fac(String str, String str2) {
        this.f16453a = str;
        this.f16454b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfuk) {
            zzfuk zzfukVar = (zzfuk) obj;
            String str = this.f16453a;
            if (str != null ? str.equals(zzfukVar.zzb()) : zzfukVar.zzb() == null) {
                String str2 = this.f16454b;
                if (str2 != null ? str2.equals(zzfukVar.zza()) : zzfukVar.zza() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f16453a;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f16454b;
        return (str2 != null ? str2.hashCode() : 0) ^ ((hashCode ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverlayDisplayDismissRequest{sessionToken=");
        sb.append(this.f16453a);
        sb.append(", appId=");
        return awf.ad(sb, this.f16454b, "}");
    }

    @Override // com.google.android.gms.internal.ads.zzfuk
    public final String zza() {
        return this.f16454b;
    }

    @Override // com.google.android.gms.internal.ads.zzfuk
    public final String zzb() {
        return this.f16453a;
    }
}

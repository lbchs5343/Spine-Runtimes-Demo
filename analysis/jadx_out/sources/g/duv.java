package g;

import com.google.android.gms.internal.ads.zzfvk;

/* loaded from: classes3.dex */
public final class duv extends zzfvk {

    /* renamed from: a, reason: collision with root package name */
    public final String f14860a;

    /* renamed from: b, reason: collision with root package name */
    public final String f14861b;

    public /* synthetic */ duv(String str, String str2) {
        this.f14860a = str;
        this.f14861b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfvk) {
            zzfvk zzfvkVar = (zzfvk) obj;
            String str = this.f14860a;
            if (str != null ? str.equals(zzfvkVar.zzb()) : zzfvkVar.zzb() == null) {
                String str2 = this.f14861b;
                if (str2 != null ? str2.equals(zzfvkVar.zza()) : zzfvkVar.zza() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f14860a;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f14861b;
        return (str2 != null ? str2.hashCode() : 0) ^ ((hashCode ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverlayDisplayUpdateRequest{sessionToken=");
        sb.append(this.f14860a);
        sb.append(", appId=");
        return awf.ad(sb, this.f14861b, "}");
    }

    @Override // com.google.android.gms.internal.ads.zzfvk
    public final String zza() {
        return this.f14861b;
    }

    @Override // com.google.android.gms.internal.ads.zzfvk
    public final String zzb() {
        return this.f14860a;
    }
}

package g;

import com.google.android.gms.internal.ads.zzfvh;

/* loaded from: classes3.dex */
public final class gty extends zzfvh {

    /* renamed from: a, reason: collision with root package name */
    public final int f18744a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18745b;

    public /* synthetic */ gty(int i, String str) {
        this.f18744a = i;
        this.f18745b = str;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfvh) {
            zzfvh zzfvhVar = (zzfvh) obj;
            if (this.f18744a == zzfvhVar.zza() && ((str = this.f18745b) != null ? str.equals(zzfvhVar.zzb()) : zzfvhVar.zzb() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f18745b;
        return (str == null ? 0 : str.hashCode()) ^ ((this.f18744a ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OverlayDisplayState{statusCode=");
        sb.append(this.f18744a);
        sb.append(", sessionToken=");
        return awf.ad(sb, this.f18745b, "}");
    }

    @Override // com.google.android.gms.internal.ads.zzfvh
    public final int zza() {
        return this.f18744a;
    }

    @Override // com.google.android.gms.internal.ads.zzfvh
    public final String zzb() {
        return this.f18745b;
    }
}

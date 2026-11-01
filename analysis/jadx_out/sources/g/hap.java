package g;

import android.app.Activity;
import com.google.android.gms.internal.ads.zzeec;

/* loaded from: classes3.dex */
public final class hap extends zzeec {

    /* renamed from: a, reason: collision with root package name */
    public final String f19140a;

    /* renamed from: b, reason: collision with root package name */
    public final Activity f19141b;

    /* renamed from: c, reason: collision with root package name */
    public final cwg f19142c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19143d;

    public /* synthetic */ hap(Activity activity, cwg cwgVar, String str, String str2) {
        this.f19141b = activity;
        this.f19142c = cwgVar;
        this.f19143d = str;
        this.f19140a = str2;
    }

    public final boolean equals(Object obj) {
        cwg cwgVar;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzeec) {
            zzeec zzeecVar = (zzeec) obj;
            if (this.f19141b.equals(zzeecVar.zza()) && ((cwgVar = this.f19142c) != null ? cwgVar.equals(zzeecVar.zzb()) : zzeecVar.zzb() == null) && ((str = this.f19143d) != null ? str.equals(zzeecVar.zzc()) : zzeecVar.zzc() == null) && ((str2 = this.f19140a) != null ? str2.equals(zzeecVar.zzd()) : zzeecVar.zzd() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f19141b.hashCode() ^ 1000003;
        cwg cwgVar = this.f19142c;
        int hashCode2 = ((hashCode * 1000003) ^ (cwgVar == null ? 0 : cwgVar.hashCode())) * 1000003;
        String str = this.f19143d;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f19140a;
        return hashCode3 ^ (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder o = tn.o("OfflineUtilsParams{activity=", this.f19141b.toString(), ", adOverlay=", String.valueOf(this.f19142c), ", gwsQueryId=");
        o.append(this.f19143d);
        o.append(", uri=");
        return awf.ad(o, this.f19140a, "}");
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final Activity zza() {
        return this.f19141b;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final cwg zzb() {
        return this.f19142c;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final String zzc() {
        return this.f19143d;
    }

    @Override // com.google.android.gms.internal.ads.zzeec
    public final String zzd() {
        return this.f19140a;
    }
}

package g;

import android.os.IBinder;
import com.google.android.gms.internal.ads.zzfvf;

/* loaded from: classes3.dex */
public final class hde extends zzfvf {

    /* renamed from: a, reason: collision with root package name */
    public final float f19260a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19261b;

    /* renamed from: c, reason: collision with root package name */
    public final IBinder f19262c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19263d;

    /* renamed from: e, reason: collision with root package name */
    public final String f19264e;

    /* renamed from: f, reason: collision with root package name */
    public final int f19265f;

    public /* synthetic */ hde(IBinder iBinder, String str, int i, float f2, int i2, String str2) {
        this.f19262c = iBinder;
        this.f19264e = str;
        this.f19265f = i;
        this.f19260a = f2;
        this.f19261b = i2;
        this.f19263d = str2;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfvf) {
            zzfvf zzfvfVar = (zzfvf) obj;
            if (this.f19262c.equals(zzfvfVar.zzf()) && ((str = this.f19264e) != null ? str.equals(zzfvfVar.zzh()) : zzfvfVar.zzh() == null) && this.f19265f == zzfvfVar.zzc() && Float.floatToIntBits(this.f19260a) == Float.floatToIntBits(zzfvfVar.zza())) {
                zzfvfVar.zzb();
                zzfvfVar.zzd();
                zzfvfVar.zzj();
                if (this.f19261b == zzfvfVar.zze()) {
                    zzfvfVar.zzi();
                    String str2 = this.f19263d;
                    if (str2 != null ? str2.equals(zzfvfVar.zzg()) : zzfvfVar.zzg() == null) {
                        zzfvfVar.zzk();
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f19262c.hashCode() ^ 1000003;
        String str = this.f19264e;
        int hashCode2 = (((((hashCode * 1000003) ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f19265f) * 1000003) ^ Float.floatToIntBits(this.f19260a);
        String str2 = this.f19263d;
        return ((((hashCode2 * 1525764945) ^ this.f19261b) * (-721379959)) ^ (str2 != null ? str2.hashCode() : 0)) * 1000003;
    }

    public final String toString() {
        StringBuilder p = awf.p("OverlayDisplayShowRequest{windowToken=", this.f19262c.toString(), ", appId=");
        p.append(this.f19264e);
        p.append(", layoutGravity=");
        p.append(this.f19265f);
        p.append(", layoutVerticalMargin=");
        p.append(this.f19260a);
        p.append(", displayMode=0, triggerMode=0, sessionToken=null, windowWidthPx=");
        p.append(this.f19261b);
        p.append(", deeplinkUrl=null, adFieldEnifd=");
        return awf.ad(p, this.f19263d, ", thirdPartyAuthCallerId=null}");
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final float zza() {
        return this.f19260a;
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final int zzb() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final int zzc() {
        return this.f19265f;
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final int zze() {
        return this.f19261b;
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final IBinder zzf() {
        return this.f19262c;
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final String zzg() {
        return this.f19263d;
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final String zzh() {
        return this.f19264e;
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final String zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final String zzj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfvf
    public final String zzk() {
        return null;
    }
}

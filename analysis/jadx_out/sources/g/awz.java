package g;

import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfzs;
import com.google.android.gms.internal.ads.zzfzt;
import com.google.android.gms.internal.ads.zzgbu;
import j$.util.Objects;
import java.util.Set;

/* loaded from: classes3.dex */
public final class awz {

    /* renamed from: a, reason: collision with root package name */
    public static final awz f11009a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11010b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11011c;

    /* renamed from: d, reason: collision with root package name */
    public final zzfzt f11012d;

    static {
        awz awzVar;
        if (zzen.zza >= 33) {
            zzfzs zzfzsVar = new zzfzs();
            for (int i = 1; i <= 10; i++) {
                zzfzsVar.zzf(Integer.valueOf(zzen.zzi(i)));
            }
            awzVar = new awz(2, zzfzsVar.zzi());
        } else {
            awzVar = new awz(2, 10);
        }
        f11009a = awzVar;
    }

    public awz(int i, int i2) {
        this.f11010b = i;
        this.f11011c = i2;
        this.f11012d = null;
    }

    public awz(int i, Set set) {
        this.f11010b = i;
        zzfzt zzl = zzfzt.zzl(set);
        this.f11012d = zzl;
        zzgbu it = zzl.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            i2 = Math.max(i2, Integer.bitCount(((Integer) it.next()).intValue()));
        }
        this.f11011c = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof awz)) {
            return false;
        }
        awz awzVar = (awz) obj;
        return this.f11010b == awzVar.f11010b && this.f11011c == awzVar.f11011c && Objects.equals(this.f11012d, awzVar.f11012d);
    }

    public final int hashCode() {
        zzfzt zzfztVar = this.f11012d;
        return (((this.f11010b * 31) + this.f11011c) * 31) + (zzfztVar == null ? 0 : zzfztVar.hashCode());
    }

    public final String toString() {
        return "AudioProfile[format=" + this.f11010b + ", maxChannelCount=" + this.f11011c + ", channelMasks=" + String.valueOf(this.f11012d) + "]";
    }
}

package g;

import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzacv;
import com.google.android.gms.internal.ads.zzed;

/* loaded from: classes3.dex */
public final class abb {

    /* renamed from: a, reason: collision with root package name */
    public int f9898a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f9899b;

    /* renamed from: c, reason: collision with root package name */
    public final cxs f9900c = new cxs();

    /* renamed from: d, reason: collision with root package name */
    public final zzed f9901d = new zzed(new byte[65025], 0);

    /* renamed from: e, reason: collision with root package name */
    public int f9902e = -1;

    public final boolean f(zzacs zzacsVar) {
        int i;
        boolean z = this.f9899b;
        zzed zzedVar = this.f9901d;
        if (z) {
            this.f9899b = false;
            zzedVar.zzI(0);
        }
        while (true) {
            if (this.f9899b) {
                return true;
            }
            int i2 = this.f9902e;
            cxs cxsVar = this.f9900c;
            if (i2 < 0) {
                if (!cxsVar.i(zzacsVar, -1L) || !cxsVar.h(zzacsVar, true)) {
                    break;
                }
                int i3 = cxsVar.f13705a;
                if ((cxsVar.f13707c & 1) == 1 && zzedVar.zze() == 0) {
                    i3 += g(0);
                    i = this.f9898a;
                } else {
                    i = 0;
                }
                if (!zzacv.zze(zzacsVar, i3)) {
                    break;
                }
                this.f9902e = i;
                i2 = i;
            }
            int g2 = g(i2);
            int i4 = this.f9902e + this.f9898a;
            if (g2 > 0) {
                zzedVar.zzF(zzedVar.zze() + g2);
                if (!zzacv.zzd(zzacsVar, zzedVar.zzN(), zzedVar.zze(), g2)) {
                    break;
                }
                zzedVar.zzK(zzedVar.zze() + g2);
                this.f9899b = cxsVar.f13708d[i4 + (-1)] != 255;
            }
            if (i4 == cxsVar.f13710f) {
                i4 = -1;
            }
            this.f9902e = i4;
        }
        return false;
    }

    public final int g(int i) {
        int i2;
        int i3 = 0;
        this.f9898a = 0;
        do {
            int i4 = this.f9898a;
            int i5 = i + i4;
            cxs cxsVar = this.f9900c;
            if (i5 >= cxsVar.f13710f) {
                break;
            }
            this.f9898a = i4 + 1;
            i2 = cxsVar.f13708d[i5];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }
}

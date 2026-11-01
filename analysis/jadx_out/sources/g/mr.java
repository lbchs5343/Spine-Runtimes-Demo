package g;

import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzdb;

/* loaded from: classes3.dex */
public final class mr {

    /* renamed from: a, reason: collision with root package name */
    public long f19667a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f19668b;

    /* renamed from: c, reason: collision with root package name */
    public int f19669c;

    /* renamed from: d, reason: collision with root package name */
    public final zzadx f19670d;

    /* renamed from: e, reason: collision with root package name */
    public int f19671e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f19672f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19673g;
    public long h;

    public mr(zzadx zzadxVar) {
        this.f19670d = zzadxVar;
    }

    public final void i(byte[] bArr, int i, int i2) {
        if (this.f19673g) {
            int i3 = this.f19671e;
            int i4 = (i + 1) - i3;
            if (i4 >= i2) {
                this.f19671e = (i2 - i) + i3;
            } else {
                this.f19668b = ((bArr[i4] & 192) >> 6) == 0;
                this.f19673g = false;
            }
        }
    }

    public final void j(int i, boolean z, long j) {
        zzdb.zzf(this.f19667a != -9223372036854775807L);
        if (this.f19669c == 182 && z && this.f19672f) {
            long j2 = j - this.h;
            this.f19670d.zzs(this.f19667a, this.f19668b ? 1 : 0, (int) j2, i, null);
        }
        if (this.f19669c != 179) {
            this.h = j;
        }
    }
}

package g;

import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzab;
import com.google.android.gms.internal.ads.zzacs;
import com.google.android.gms.internal.ads.zzacu;
import com.google.android.gms.internal.ads.zzad;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzbh;
import com.google.android.gms.internal.ads.zzen;
import java.math.RoundingMode;

/* loaded from: classes3.dex */
public final class dul implements ew {

    /* renamed from: b, reason: collision with root package name */
    public long f14837b;

    /* renamed from: c, reason: collision with root package name */
    public final zzad f14838c;

    /* renamed from: d, reason: collision with root package name */
    public final int f14839d;

    /* renamed from: e, reason: collision with root package name */
    public final zzacu f14840e;

    /* renamed from: f, reason: collision with root package name */
    public long f14841f;

    /* renamed from: g, reason: collision with root package name */
    public final zzadx f14842g;
    public final gme h;
    public int i;

    public dul(zzacu zzacuVar, zzadx zzadxVar, gme gmeVar, String str, int i) {
        this.f14840e = zzacuVar;
        this.f14842g = zzadxVar;
        this.h = gmeVar;
        int i2 = gmeVar.f18393d;
        int i3 = gmeVar.f18394e;
        int i4 = gmeVar.f18391b * i2;
        int i5 = gmeVar.f18390a;
        int i6 = i4 / 8;
        if (i5 != i6) {
            throw zzbh.zza("Expected block size: " + i6 + "; got: " + i5, null);
        }
        int i7 = i3 * i6;
        int i8 = i7 * 8;
        int max = Math.max(i6, i7 / 10);
        this.f14839d = max;
        zzab zzabVar = new zzab();
        zzabVar.zzZ(str);
        zzabVar.zzy(i8);
        zzabVar.zzU(i8);
        zzabVar.zzQ(max);
        zzabVar.zzz(i2);
        zzabVar.zzaa(i3);
        zzabVar.zzT(i);
        this.f14838c = zzabVar.zzaf();
    }

    @Override // g.ew
    public final boolean a(zzacs zzacsVar, long j) {
        int i;
        int i2;
        long j2 = j;
        while (j2 > 0 && (i = this.i) < (i2 = this.f14839d)) {
            int zzf = this.f14842g.zzf(zzacsVar, (int) Math.min(i2 - i, j2), true);
            if (zzf == -1) {
                j2 = 0;
            } else {
                this.i += zzf;
                j2 -= zzf;
            }
        }
        int i3 = this.i;
        int i4 = this.h.f18390a;
        int i5 = i3 / i4;
        if (i5 > 0) {
            long zzu = this.f14841f + zzen.zzu(this.f14837b, C.MICROS_PER_SECOND, r2.f18394e, RoundingMode.FLOOR);
            int i6 = i5 * i4;
            int i7 = this.i - i6;
            this.f14842g.zzs(zzu, 1, i6, i7, null);
            this.f14837b += i5;
            this.i = i7;
        }
        return j2 <= 0;
    }

    @Override // g.ew
    public final void zza(int i, long j) {
        this.f14840e.zzO(new glb(this.h, 1, i, j));
        this.f14842g.zzl(this.f14838c);
    }

    @Override // g.ew
    public final void zzb(long j) {
        this.f14841f = j;
        this.i = 0;
        this.f14837b = 0L;
    }
}

package g;

import com.google.android.gms.internal.ads.zzado;
import com.google.android.gms.internal.ads.zzadr;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzen;

/* loaded from: classes3.dex */
public final class ae {

    /* renamed from: a, reason: collision with root package name */
    public int f10071a;

    /* renamed from: b, reason: collision with root package name */
    public long f10072b;

    /* renamed from: c, reason: collision with root package name */
    public final long f10073c;

    /* renamed from: d, reason: collision with root package name */
    public long[] f10074d;

    /* renamed from: e, reason: collision with root package name */
    public final int f10075e;

    /* renamed from: f, reason: collision with root package name */
    public final zzadx f10076f;

    /* renamed from: g, reason: collision with root package name */
    public int f10077g;
    public int[] h;
    public int i;
    public final int j;
    public int k;
    public final int l;
    public int m;

    public ae(int i, int i2, long j, int i3, zzadx zzadxVar) {
        i2 = i2 != 1 ? 2 : i2;
        this.f10073c = j;
        this.f10075e = i3;
        this.f10076f = zzadxVar;
        int i4 = (((i % 10) + 48) << 8) | ((i / 10) + 48);
        this.j = (i2 == 2 ? 1667497984 : 1651965952) | i4;
        this.l = i2 == 2 ? i4 | 1650720768 : -1;
        this.f10072b = -1L;
        this.f10074d = new long[512];
        this.h = new int[512];
    }

    public final zzado n(long j) {
        if (this.k == 0) {
            zzadr zzadrVar = new zzadr(0L, this.f10072b);
            return new zzado(zzadrVar, zzadrVar);
        }
        int i = (int) (j / ((this.f10073c * 1) / this.f10075e));
        int zzc = zzen.zzc(this.h, i, true, true);
        if (this.h[zzc] == i) {
            zzadr o = o(zzc);
            return new zzado(o, o);
        }
        zzadr o2 = o(zzc);
        int i2 = zzc + 1;
        return i2 < this.f10074d.length ? new zzado(o2, o(i2)) : new zzado(o2, o2);
    }

    public final zzadr o(int i) {
        return new zzadr(((this.f10073c * 1) / this.f10075e) * this.h[i], this.f10074d[i]);
    }
}

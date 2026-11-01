package g;

import android.os.SystemClock;
import com.google.android.gms.internal.ads.zzbj;
import com.google.android.gms.internal.ads.zzbv;
import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzig;
import com.google.android.gms.internal.ads.zzur;
import com.google.android.gms.internal.ads.zzwr;
import com.google.android.gms.internal.ads.zzyk;
import java.util.List;

/* loaded from: classes3.dex */
public final class gzx {

    /* renamed from: a, reason: collision with root package name */
    public static final zzur f19073a = new zzur(new Object(), -1);

    /* renamed from: b, reason: collision with root package name */
    public final zzwr f19074b;

    /* renamed from: c, reason: collision with root package name */
    public final zzur f19075c;

    /* renamed from: d, reason: collision with root package name */
    public final zzbj f19076d;

    /* renamed from: e, reason: collision with root package name */
    public final int f19077e;

    /* renamed from: f, reason: collision with root package name */
    public final long f19078f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f19079g;
    public final int h;
    public final zzbv i;
    public final zzig j;
    public volatile long k;
    public volatile long l;
    public final int m;
    public final zzyk n;
    public final zzur o;
    public final List p;
    public volatile long q;
    public final long r;
    public final boolean s;
    public volatile long t;

    public gzx(zzbv zzbvVar, zzur zzurVar, long j, long j2, int i, zzig zzigVar, boolean z, zzwr zzwrVar, zzyk zzykVar, List list, zzur zzurVar2, boolean z2, int i2, int i3, zzbj zzbjVar, long j3, long j4, long j5, long j6) {
        this.i = zzbvVar;
        this.o = zzurVar;
        this.r = j;
        this.f19078f = j2;
        this.h = i;
        this.j = zzigVar;
        this.s = z;
        this.f19074b = zzwrVar;
        this.n = zzykVar;
        this.p = list;
        this.f19075c = zzurVar2;
        this.f19079g = z2;
        this.m = i2;
        this.f19077e = i3;
        this.f19076d = zzbjVar;
        this.l = j3;
        this.q = j4;
        this.t = j5;
        this.k = j6;
    }

    public static gzx u(zzyk zzykVar) {
        zzbv zzbvVar = zzbv.zza;
        zzwr zzwrVar = zzwr.zza;
        zzfzo zzn = zzfzo.zzn();
        zzbj zzbjVar = zzbj.zza;
        zzur zzurVar = f19073a;
        return new gzx(zzbvVar, zzurVar, -9223372036854775807L, 0L, 1, null, false, zzwrVar, zzykVar, zzn, zzurVar, false, 1, 0, zzbjVar, 0L, 0L, 0L, 0L);
    }

    public final gzx aa(zzur zzurVar, long j, long j2, long j3, long j4, zzwr zzwrVar, zzyk zzykVar, List list) {
        zzur zzurVar2 = this.f19075c;
        boolean z = this.f19079g;
        int i = this.m;
        int i2 = this.f19077e;
        zzbj zzbjVar = this.f19076d;
        long j5 = this.l;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        return new gzx(this.i, zzurVar, j2, j3, this.h, this.j, this.s, zzwrVar, zzykVar, list, zzurVar2, z, i, i2, zzbjVar, j5, j4, j, elapsedRealtime);
    }

    public final gzx ab(int i, int i2, boolean z) {
        return new gzx(this.i, this.o, this.r, this.f19078f, this.h, this.j, this.s, this.f19074b, this.n, this.p, this.f19075c, z, i, i2, this.f19076d, this.l, this.q, this.t, this.k);
    }

    public final boolean v() {
        return this.h == 3 && this.f19079g && this.f19077e == 0;
    }

    public final gzx w(zzig zzigVar) {
        return new gzx(this.i, this.o, this.r, this.f19078f, this.h, zzigVar, this.s, this.f19074b, this.n, this.p, this.f19075c, this.f19079g, this.m, this.f19077e, this.f19076d, this.l, this.q, this.t, this.k);
    }

    public final gzx x(int i) {
        return new gzx(this.i, this.o, this.r, this.f19078f, i, this.j, this.s, this.f19074b, this.n, this.p, this.f19075c, this.f19079g, this.m, this.f19077e, this.f19076d, this.l, this.q, this.t, this.k);
    }

    public final gzx y(zzur zzurVar) {
        return new gzx(this.i, this.o, this.r, this.f19078f, this.h, this.j, this.s, this.f19074b, this.n, this.p, zzurVar, this.f19079g, this.m, this.f19077e, this.f19076d, this.l, this.q, this.t, this.k);
    }

    public final gzx z(zzbv zzbvVar) {
        return new gzx(zzbvVar, this.o, this.r, this.f19078f, this.h, this.j, this.s, this.f19074b, this.n, this.p, this.f19075c, this.f19079g, this.m, this.f19077e, this.f19076d, this.l, this.q, this.t, this.k);
    }
}

package g;

import com.google.android.gms.internal.ads.zzadx;

/* loaded from: classes3.dex */
public final class cqm {

    /* renamed from: a, reason: collision with root package name */
    public boolean f13336a;

    /* renamed from: b, reason: collision with root package name */
    public long f13337b;

    /* renamed from: c, reason: collision with root package name */
    public int f13338c;

    /* renamed from: d, reason: collision with root package name */
    public long f13339d;

    /* renamed from: e, reason: collision with root package name */
    public long f13340e;

    /* renamed from: f, reason: collision with root package name */
    public final zzadx f13341f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f13342g;
    public boolean h;
    public boolean i;
    public long j;
    public boolean k;
    public boolean l;
    public boolean m;

    public cqm(zzadx zzadxVar) {
        this.f13341f = zzadxVar;
    }

    public final void n(int i) {
        long j = this.f13339d;
        if (j == -9223372036854775807L) {
            return;
        }
        boolean z = this.h;
        this.f13341f.zzs(j, z ? 1 : 0, (int) (this.j - this.f13337b), i, null);
    }
}

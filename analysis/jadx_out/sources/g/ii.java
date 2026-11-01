package g;

import android.util.Pair;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzdsr;

/* loaded from: classes3.dex */
public final class ii extends emg {

    /* renamed from: a, reason: collision with root package name */
    public final int f19419a;

    /* renamed from: b, reason: collision with root package name */
    public final long f19420b;

    /* renamed from: c, reason: collision with root package name */
    public final sq f19421c;

    /* renamed from: f, reason: collision with root package name */
    public final Boolean f19422f;

    /* renamed from: g, reason: collision with root package name */
    public final zzdsr f19423g;
    public final boolean h;

    public ii(sq sqVar, boolean z, int i, Boolean bool, zzdsr zzdsrVar) {
        this.f19421c = sqVar;
        this.h = z;
        this.f19419a = i;
        this.f19422f = bool;
        this.f19423g = zzdsrVar;
        ti.f20033a.v.getClass();
        this.f19420b = System.currentTimeMillis();
    }

    public static long i() {
        ti.f20033a.v.getClass();
        return ((Long) edt.f15376a.f15379d.zza(zzbcn.zzjz)).longValue() + System.currentTimeMillis();
    }

    @Override // g.emg
    public final void d(String str) {
        Pair pair = new Pair("sgf_reason", str);
        Pair pair2 = new Pair("se", "query_g");
        Pair pair3 = new Pair("ad_format", bme.BANNER.name());
        Pair pair4 = new Pair("rtype", Integer.toString(6));
        Pair pair5 = new Pair("scar", "true");
        ti.f20033a.v.getClass();
        Pair pair6 = new Pair("lat_ms", Long.toString(System.currentTimeMillis() - this.f19420b));
        Pair pair7 = new Pair("sgpc_rn", Integer.toString(this.f19419a));
        Pair pair8 = new Pair("sgpc_lsu", String.valueOf(this.f19422f));
        boolean z = this.h;
        dzm.z(this.f19423g, "sgpcf", pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, new Pair("tpc", true != z ? "0" : "1"));
        this.f19421c.h(z, new gai(null, str, i(), this.f19419a));
    }

    @Override // g.emg
    public final void e(emr emrVar) {
        Pair pair = new Pair("se", "query_g");
        Pair pair2 = new Pair("ad_format", bme.BANNER.name());
        Pair pair3 = new Pair("rtype", Integer.toString(6));
        Pair pair4 = new Pair("scar", "true");
        ti.f20033a.v.getClass();
        Pair pair5 = new Pair("lat_ms", Long.toString(System.currentTimeMillis() - this.f19420b));
        Pair pair6 = new Pair("sgpc_rn", Integer.toString(this.f19419a));
        Pair pair7 = new Pair("sgpc_lsu", String.valueOf(this.f19422f));
        boolean z = this.h;
        dzm.z(this.f19423g, "sgpcs", pair, pair2, pair3, pair4, pair5, pair6, pair7, new Pair("tpc", true != z ? "0" : "1"));
        this.f19421c.h(z, new gai(emrVar, "", i(), this.f19419a));
    }
}

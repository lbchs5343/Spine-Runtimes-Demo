package g;

import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzcdr;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class fdg implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f16598a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f16599b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16600c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ long f16601d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzcdr f16602e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f16603f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ long f16604g;
    public final /* synthetic */ String h;
    public final /* synthetic */ int i;
    public final /* synthetic */ String j;
    public final /* synthetic */ long k;

    public fdg(zzcdr zzcdrVar, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.h = str;
        this.j = str2;
        this.f16601d = j;
        this.f16603f = j2;
        this.f16604g = j3;
        this.k = j4;
        this.f16599b = j5;
        this.f16598a = z;
        this.i = i;
        this.f16600c = i2;
        this.f16602e = zzcdrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap p = tn.p("event", "precacheProgress");
        p.put("src", this.h);
        p.put("cachedSrc", this.j);
        p.put("bufferedDuration", Long.toString(this.f16601d));
        p.put("totalDuration", Long.toString(this.f16603f));
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzbW)).booleanValue()) {
            p.put("qoeLoadedBytes", Long.toString(this.f16604g));
            p.put("qoeCachedBytes", Long.toString(this.k));
            p.put("totalBytes", Long.toString(this.f16599b));
            ti.f20033a.v.getClass();
            p.put("reportTime", Long.toString(System.currentTimeMillis()));
        }
        p.put("cacheReady", true != this.f16598a ? "0" : "1");
        p.put("playerCount", Integer.toString(this.i));
        p.put("playerPreparedCount", Integer.toString(this.f16600c));
        zzcdr.d(this.f16602e, p);
    }
}

package g;

import com.google.android.gms.internal.ads.zzcdr;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class ux implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20125a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f20126b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcdr f20127c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f20128d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f20129e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ long f20130f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ String f20131g;
    public final /* synthetic */ int h;
    public final /* synthetic */ String i;
    public final /* synthetic */ long j;

    public ux(zzcdr zzcdrVar, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.f20131g = str;
        this.i = str2;
        this.f20128d = i;
        this.f20129e = i2;
        this.f20130f = j;
        this.j = j2;
        this.f20126b = z;
        this.f20125a = i3;
        this.h = i4;
        this.f20127c = zzcdrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap p = tn.p("event", "precacheProgress");
        p.put("src", this.f20131g);
        p.put("cachedSrc", this.i);
        p.put("bytesLoaded", Integer.toString(this.f20128d));
        p.put("totalBytes", Integer.toString(this.f20129e));
        p.put("bufferedDuration", Long.toString(this.f20130f));
        p.put("totalDuration", Long.toString(this.j));
        p.put("cacheReady", true != this.f20126b ? "0" : "1");
        p.put("playerCount", Integer.toString(this.f20125a));
        p.put("playerPreparedCount", Integer.toString(this.h));
        zzcdr.d(this.f20127c, p);
    }
}

package g;

import com.google.android.gms.internal.ads.zzcdr;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class flb implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f16957a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzcdr f16958b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f16959c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f16960d;

    public flb(zzcdr zzcdrVar, String str, String str2, long j) {
        this.f16959c = str;
        this.f16960d = str2;
        this.f16957a = j;
        this.f16958b = zzcdrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap p = tn.p("event", "precacheComplete");
        p.put("src", this.f16959c);
        p.put("cachedSrc", this.f16960d);
        p.put("totalDuration", Long.toString(this.f16957a));
        zzcdr.d(this.f16958b, p);
    }
}

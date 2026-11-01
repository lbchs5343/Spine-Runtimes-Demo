package g;

import com.google.android.gms.internal.ads.zzcdr;
import com.google.android.gms.internal.ads.zzcdu;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class yw implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20365a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20366b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcdu f20367c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f20368d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f20369e;

    public yw(zzcdu zzcduVar, String str, String str2, int i, int i2) {
        this.f20368d = str;
        this.f20369e = str2;
        this.f20365a = i;
        this.f20366b = i2;
        this.f20367c = zzcduVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap p = tn.p("event", "precacheProgress");
        p.put("src", this.f20368d);
        p.put("cachedSrc", this.f20369e);
        p.put("bytesLoaded", Integer.toString(this.f20365a));
        p.put("totalBytes", Integer.toString(this.f20366b));
        p.put("cacheReady", "0");
        zzcdr.d(this.f20367c, p);
    }
}

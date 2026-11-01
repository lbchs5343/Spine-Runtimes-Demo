package g;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class djn implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bundle f14285a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cfo f14286b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14287c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f14288d;

    public djn(cfo cfoVar, int i, int i2, Bundle bundle) {
        this.f14286b = cfoVar;
        this.f14287c = i;
        this.f14288d = i2;
        this.f14285a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f14286b.f12793c.onActivityResized(this.f14287c, this.f14288d, this.f14285a);
    }
}

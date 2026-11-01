package g;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class dxd implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cfo f15002a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f15003b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f15004c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f15005d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f15006e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f15007f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ Bundle f15008g;

    public dxd(cfo cfoVar, int i, int i2, int i3, int i4, int i5, Bundle bundle) {
        this.f15002a = cfoVar;
        this.f15006e = i;
        this.f15007f = i2;
        this.f15003b = i3;
        this.f15004c = i4;
        this.f15005d = i5;
        this.f15008g = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f15002a.f12793c.onActivityLayout(this.f15006e, this.f15007f, this.f15003b, this.f15004c, this.f15005d, this.f15008g);
    }
}

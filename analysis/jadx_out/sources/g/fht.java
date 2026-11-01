package g;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class fht implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Bundle f16808a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cfo f16809b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f16810c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f16811d;

    public /* synthetic */ fht(cfo cfoVar, String str, Bundle bundle, int i) {
        this.f16810c = i;
        this.f16809b = cfoVar;
        this.f16811d = str;
        this.f16808a = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16810c) {
            case 0:
                this.f16809b.f12793c.extraCallback(this.f16811d, this.f16808a);
                break;
            default:
                this.f16809b.f12793c.onPostMessage(this.f16811d, this.f16808a);
                break;
        }
    }
}

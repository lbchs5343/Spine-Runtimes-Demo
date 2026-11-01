package g;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class bck implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cfo f11279a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11280b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Bundle f11281c;

    public /* synthetic */ bck(cfo cfoVar, Bundle bundle, int i) {
        this.f11280b = i;
        this.f11279a = cfoVar;
        this.f11281c = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11280b) {
            case 0:
                this.f11279a.f12793c.onUnminimized(this.f11281c);
                break;
            case 1:
                this.f11279a.f12793c.onMessageChannelReady(this.f11281c);
                break;
            case 2:
                this.f11279a.f12793c.onWarmupCompleted(this.f11281c);
                break;
            default:
                this.f11279a.f12793c.onMinimized(this.f11281c);
                break;
        }
    }
}

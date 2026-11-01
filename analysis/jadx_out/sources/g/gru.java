package g;

import android.window.BackEvent;
import android.window.OnBackAnimationCallback;

/* loaded from: classes.dex */
public final class gru implements OnBackAnimationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ cvw f18654a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ and f18655b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ and f18656c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ cvw f18657d;

    public gru(and andVar, and andVar2, cvw cvwVar, cvw cvwVar2) {
        this.f18655b = andVar;
        this.f18656c = andVar2;
        this.f18657d = cvwVar;
        this.f18654a = cvwVar2;
    }

    @Override // android.window.OnBackAnimationCallback
    public final void onBackCancelled() {
        this.f18654a.invoke();
    }

    @Override // android.window.OnBackInvokedCallback
    public final void onBackInvoked() {
        this.f18657d.invoke();
    }

    @Override // android.window.OnBackAnimationCallback
    public final void onBackProgressed(BackEvent backEvent) {
        bff.p(backEvent, "backEvent");
        this.f18656c.invoke(new dqa(backEvent));
    }

    @Override // android.window.OnBackAnimationCallback
    public final void onBackStarted(BackEvent backEvent) {
        bff.p(backEvent, "backEvent");
        this.f18655b.invoke(new dqa(backEvent));
    }
}

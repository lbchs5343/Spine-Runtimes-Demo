package g;

import android.window.OnBackInvokedCallback;

/* loaded from: classes.dex */
public final class dkw {

    /* renamed from: a, reason: collision with root package name */
    public static final dkw f14341a = new dkw();

    public final OnBackInvokedCallback b(and andVar, and andVar2, cvw cvwVar, cvw cvwVar2) {
        bff.p(andVar, "onBackStarted");
        bff.p(andVar2, "onBackProgressed");
        bff.p(cvwVar, "onBackInvoked");
        bff.p(cvwVar2, "onBackCancelled");
        return new gru(andVar, andVar2, cvwVar, cvwVar2);
    }
}

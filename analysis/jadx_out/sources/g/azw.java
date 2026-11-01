package g;

import android.view.ActionProvider;

/* loaded from: classes.dex */
public final class azw implements ActionProvider.VisibilityListener {

    /* renamed from: a, reason: collision with root package name */
    public emr f11134a;

    /* renamed from: b, reason: collision with root package name */
    public final ActionProvider f11135b;

    public azw(hcv hcvVar, ActionProvider actionProvider) {
        this.f11135b = actionProvider;
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z) {
        emr emrVar = this.f11134a;
        if (emrVar != null) {
            ftn ftnVar = ((far) emrVar.n).f16489f;
            ftnVar.f17391b = true;
            ftnVar.am(true);
        }
    }
}

package g;

import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public final class ok implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19766a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Fragment f19767b;

    public /* synthetic */ ok(Fragment fragment, int i) {
        this.f19766a = i;
        this.f19767b = fragment;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19766a) {
            case 0:
                this.f19767b.startPostponedEnterTransition();
                break;
            default:
                this.f19767b.callStartTransitionListener(false);
                break;
        }
    }
}

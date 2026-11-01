package g;

import android.os.SystemClock;

/* loaded from: classes3.dex */
public final class fer implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16673a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gqz f16674b;

    public /* synthetic */ fer(gqz gqzVar, int i) {
        this.f16673a = i;
        this.f16674b = gqzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f16673a) {
            case 0:
                gqz gqzVar = this.f16674b;
                if (gqzVar.i > 0) {
                    SystemClock.uptimeMillis();
                }
                gqzVar.setVisibility(0);
                break;
            default:
                gqz gqzVar2 = this.f16674b;
                ((dzo) gqzVar2.getCurrentDrawable()).o(false, false, true);
                if ((gqzVar2.getProgressDrawable() == null || !gqzVar2.getProgressDrawable().isVisible()) && (gqzVar2.getIndeterminateDrawable() == null || !gqzVar2.getIndeterminateDrawable().isVisible())) {
                    gqzVar2.setVisibility(4);
                }
                gqzVar2.getClass();
                break;
        }
    }
}

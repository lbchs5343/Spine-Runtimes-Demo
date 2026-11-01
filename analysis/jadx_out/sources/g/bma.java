package g;

import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class bma implements Drawable.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11813a = 1;

    /* renamed from: b, reason: collision with root package name */
    public Object f11814b;

    public /* synthetic */ bma() {
    }

    public bma(ahf ahfVar) {
        this.f11814b = ahfVar;
    }

    private final void c(Drawable drawable) {
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        switch (this.f11813a) {
            case 0:
                ((ahf) this.f11814b).invalidateSelf();
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        switch (this.f11813a) {
            case 0:
                ((ahf) this.f11814b).scheduleSelf(runnable, j);
                break;
            default:
                Drawable.Callback callback = (Drawable.Callback) this.f11814b;
                if (callback != null) {
                    callback.scheduleDrawable(drawable, runnable, j);
                    break;
                }
                break;
        }
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        switch (this.f11813a) {
            case 0:
                ((ahf) this.f11814b).unscheduleSelf(runnable);
                break;
            default:
                Drawable.Callback callback = (Drawable.Callback) this.f11814b;
                if (callback != null) {
                    callback.unscheduleDrawable(drawable, runnable);
                    break;
                }
                break;
        }
    }
}

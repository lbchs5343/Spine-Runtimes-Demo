package g;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class eim implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15593a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ bdo f15594b;

    public /* synthetic */ eim(bdo bdoVar, int i) {
        this.f15593a = i;
        this.f15594b = bdoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f15593a) {
            case 0:
                ViewParent parent = this.f15594b.h.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                    break;
                }
                break;
            default:
                bdo bdoVar = this.f15594b;
                bdoVar.o();
                View view = bdoVar.h;
                if (view.isEnabled() && !view.isLongClickable() && bdoVar.d()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 0);
                    view.onTouchEvent(obtain);
                    obtain.recycle();
                    bdoVar.f11331f = true;
                    break;
                }
                break;
        }
    }
}

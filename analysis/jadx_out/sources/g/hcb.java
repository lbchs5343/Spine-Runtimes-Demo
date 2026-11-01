package g;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class hcb implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WindowManager.LayoutParams f19210a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ drp f19211b;

    /* renamed from: c, reason: collision with root package name */
    public final float[] f19212c = {TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT};

    /* renamed from: d, reason: collision with root package name */
    public float f19213d = -1.0f;

    public hcb(drp drpVar, WindowManager.LayoutParams layoutParams) {
        this.f19211b = drpVar;
        this.f19210a = layoutParams;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f19212c[0] = motionEvent.getX();
            this.f19212c[1] = motionEvent.getY();
            return true;
        }
        if (action == 2) {
            if (this.f19213d < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                this.f19211b.f14679f.getRootView().getWindowVisibleDisplayFrame(new Rect());
                this.f19213d = r2.top;
            }
            this.f19210a.x = (int) (motionEvent.getRawX() - this.f19212c[0]);
            this.f19210a.y = (int) ((motionEvent.getRawY() - this.f19212c[1]) - this.f19213d);
            if (this.f19211b.i) {
                drp drpVar = this.f19211b;
                drpVar.j.updateViewLayout(drpVar.f14679f, this.f19210a);
            }
        }
        return true;
    }
}

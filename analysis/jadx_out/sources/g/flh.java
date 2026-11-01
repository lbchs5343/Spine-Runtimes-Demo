package g;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;

/* loaded from: classes.dex */
public final class flh implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16970a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fdp f16971b;

    public /* synthetic */ flh(fdp fdpVar, int i) {
        this.f16970a = i;
        this.f16971b = fdpVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (this.f16970a) {
            case 0:
                if (motionEvent.getActionMasked() == 2) {
                    float rawX = motionEvent.getRawX();
                    float rawY = motionEvent.getRawY();
                    fdp fdpVar = this.f16971b;
                    fdpVar.f16619d = (float) Math.atan2(((fdpVar.o.getHeight() / 2) + fdpVar.f16620e.y) - rawY, ((fdpVar.o.getWidth() / 2) + fdpVar.f16620e.x) - rawX);
                    fdp.z(fdpVar, (int) rawX, (int) rawY, fdpVar.f16619d);
                    break;
                }
                break;
            default:
                int actionMasked = motionEvent.getActionMasked();
                fdp fdpVar2 = this.f16971b;
                if (actionMasked == 0) {
                    fdpVar2.p.set(motionEvent.getRawX(), motionEvent.getRawY());
                    PointF pointF = fdpVar2.m;
                    WindowManager.LayoutParams layoutParams = fdpVar2.r;
                    pointF.set(layoutParams.x, layoutParams.y);
                    break;
                } else if (actionMasked == 2) {
                    fdp.z(fdpVar2, (int) (fdpVar2.m.x + (fdpVar2.f16617b.getWidth() / 2) + ((motionEvent.getRawX() - fdpVar2.p.x) / fdpVar2.w)), (int) (fdpVar2.m.y + (fdpVar2.f16617b.getHeight() / 2) + ((motionEvent.getRawY() - fdpVar2.p.y) / fdpVar2.w)), fdpVar2.f16619d);
                    break;
                }
                break;
        }
        return true;
    }
}

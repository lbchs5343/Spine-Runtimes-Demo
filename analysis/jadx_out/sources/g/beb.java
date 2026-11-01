package g;

import android.view.MotionEvent;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class beb extends bgh {

    /* renamed from: a, reason: collision with root package name */
    public float f11358a;

    /* renamed from: b, reason: collision with root package name */
    public float f11359b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11360c;

    @Override // g.bgh
    public final boolean dq(Object... objArr) {
        if (objArr.length <= 0) {
            return false;
        }
        MotionEvent motionEvent = (MotionEvent) objArr[0];
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f11358a = motionEvent.getRawX();
            this.f11359b = motionEvent.getRawY();
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                float rawX = motionEvent.getRawX();
                float rawY = motionEvent.getRawY();
                if (Math.abs(rawX - this.f11358a) >= 15.0f || Math.abs(rawY - this.f11359b) >= 15.0f) {
                    this.f11360c = true;
                    return true;
                }
            } else if (action == 3) {
                this.f11360c = false;
                return true;
            }
        } else {
            if (this.f11360c) {
                this.f11360c = false;
                this.f11358a = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                this.f11359b = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                return false;
            }
            float rawX2 = motionEvent.getRawX();
            float rawY2 = motionEvent.getRawY();
            if (Math.abs(rawX2 - this.f11358a) >= 15.0f || Math.abs(rawY2 - this.f11359b) >= 15.0f) {
                this.f11360c = false;
                return true;
            }
            eyj eyjVar = this.dq;
            if (eyjVar != null) {
                ((gsa) eyjVar).e(this.iw, this.ox.f13427b);
                this.f11358a = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
                this.f11359b = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
        }
        return true;
    }
}

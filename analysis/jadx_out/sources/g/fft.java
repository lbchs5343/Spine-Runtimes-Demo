package g;

import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
public final class fft implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float[] f16722a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float[] f16723b;

    public fft(float[] fArr, float[] fArr2) {
        this.f16722a = fArr;
        this.f16723b = fArr2;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        float rawX = motionEvent.getRawX();
        float[] fArr = this.f16722a;
        float f2 = rawX - fArr[0];
        float rawY = motionEvent.getRawY() - fArr[1];
        int actionMasked = motionEvent.getActionMasked();
        float[] fArr2 = this.f16723b;
        if (actionMasked == 0) {
            fArr[0] = motionEvent.getRawX();
            fArr[1] = motionEvent.getRawY();
            fArr2[0] = view.getTranslationX();
            fArr2[1] = view.getTranslationY();
        } else if (actionMasked == 1 || actionMasked == 2) {
            view.setTranslationX(fArr2[0] + f2);
            view.setTranslationY(fArr2[1] + rawY);
        }
        return true;
    }
}

package g;

import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;

/* loaded from: classes.dex */
public final class gjs implements View.OnTouchListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int[] f18266a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int[] f18267b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WindowManager.LayoutParams f18268c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18269d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float[] f18270e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ghz f18271f;

    public /* synthetic */ gjs(ghz ghzVar, float[] fArr, int[] iArr, int[] iArr2, WindowManager.LayoutParams layoutParams, int i) {
        this.f18269d = i;
        this.f18271f = ghzVar;
        this.f18270e = fArr;
        this.f18266a = iArr;
        this.f18267b = iArr2;
        this.f18268c = layoutParams;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int i;
        int i2;
        switch (this.f18269d) {
            case 0:
                ka kaVar = (ka) this.f18271f;
                int width = kaVar.n.getWidth();
                int actionMasked = motionEvent.getActionMasked();
                int[] iArr = this.f18267b;
                int[] iArr2 = this.f18266a;
                float[] fArr = this.f18270e;
                if (actionMasked == 0) {
                    fArr[0] = motionEvent.getRawX();
                    fArr[1] = motionEvent.getRawY();
                    kaVar.n.getLocationOnScreen(iArr2);
                    fso.ba(kaVar.p, iArr);
                    break;
                } else if (actionMasked == 2) {
                    float rawX = (iArr[0] - width) - ((motionEvent.getRawX() - fArr[0]) + iArr2[0]);
                    ka kaVar2 = kaVar.p;
                    if (baq.f11184d && fnp.m()) {
                        try {
                            i = cux.as(kaVar2);
                        } catch (Exception e2) {
                            erl.ac(e2);
                        }
                        int i3 = (int) (rawX + i);
                        WindowManager.LayoutParams layoutParams = this.f18268c;
                        layoutParams.x = i3;
                        layoutParams.y = (int) ((motionEvent.getRawY() - fArr[1]) + iArr2[1]);
                        kaVar.i.updateViewLayout(kaVar.n, layoutParams);
                        break;
                    }
                    i = 0;
                    int i32 = (int) (rawX + i);
                    WindowManager.LayoutParams layoutParams2 = this.f18268c;
                    layoutParams2.x = i32;
                    layoutParams2.y = (int) ((motionEvent.getRawY() - fArr[1]) + iArr2[1]);
                    kaVar.i.updateViewLayout(kaVar.n, layoutParams2);
                }
                break;
            default:
                fri friVar = (fri) this.f18271f;
                int width2 = friVar.i.getWidth();
                int actionMasked2 = motionEvent.getActionMasked();
                int[] iArr3 = this.f18267b;
                int[] iArr4 = this.f18266a;
                float[] fArr2 = this.f18270e;
                if (actionMasked2 == 0) {
                    fArr2[0] = motionEvent.getRawX();
                    fArr2[1] = motionEvent.getRawY();
                    friVar.i.getLocationOnScreen(iArr4);
                    fso.ba(friVar.j, iArr3);
                    break;
                } else if (actionMasked2 == 2) {
                    float rawX2 = (iArr3[0] - width2) - ((motionEvent.getRawX() - fArr2[0]) + iArr4[0]);
                    fri friVar2 = friVar.j;
                    if (edx.f15385d && fnp.m()) {
                        try {
                            i2 = cux.as(friVar2);
                        } catch (Exception e3) {
                            erl.ac(e3);
                        }
                        int i4 = (int) (rawX2 + i2);
                        WindowManager.LayoutParams layoutParams3 = this.f18268c;
                        layoutParams3.x = i4;
                        layoutParams3.y = (int) ((motionEvent.getRawY() - fArr2[1]) + iArr4[1]);
                        friVar.l.updateViewLayout(friVar.i, layoutParams3);
                        break;
                    }
                    i2 = 0;
                    int i42 = (int) (rawX2 + i2);
                    WindowManager.LayoutParams layoutParams32 = this.f18268c;
                    layoutParams32.x = i42;
                    layoutParams32.y = (int) ((motionEvent.getRawY() - fArr2[1]) + iArr4[1]);
                    friVar.l.updateViewLayout(friVar.i, layoutParams32);
                }
                break;
        }
        return false;
    }
}

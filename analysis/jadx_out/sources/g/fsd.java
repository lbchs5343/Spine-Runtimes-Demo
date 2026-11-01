package g;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.WindowMetrics;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class fsd implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17327a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cle f17328b;

    public /* synthetic */ fsd(cle cleVar, int i) {
        this.f17327a = i;
        this.f17328b = cleVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Rect rect;
        WindowMetrics currentWindowMetrics;
        int i = this.f17327a;
        cle cleVar = this.f17328b;
        switch (i) {
            case 0:
                cnp cnpVar = cleVar.aa;
                if (cnpVar != null) {
                    WindowManager windowManager = (WindowManager) cleVar.m.getSystemService("window");
                    if (Build.VERSION.SDK_INT >= 30) {
                        currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                        rect = currentWindowMetrics.getBounds();
                    } else {
                        Display defaultDisplay = windowManager.getDefaultDisplay();
                        Point point = new Point();
                        defaultDisplay.getRealSize(point);
                        rect = new Rect();
                        rect.right = point.x;
                        rect.bottom = point.y;
                    }
                    int height = rect.height();
                    int[] iArr = new int[2];
                    cnpVar.getLocationInWindow(iArr);
                    int height2 = (height - (cnpVar.getHeight() + iArr[1])) + ((int) cnpVar.getTranslationY());
                    int i2 = cleVar.ad;
                    if (height2 < i2) {
                        ViewGroup.LayoutParams layoutParams = cnpVar.getLayoutParams();
                        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
                            fca fcaVar = cle.j;
                            break;
                        } else {
                            int i3 = cleVar.ad;
                            cleVar.ah = i3;
                            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                            marginLayoutParams.bottomMargin = (i3 - height2) + marginLayoutParams.bottomMargin;
                            cnpVar.requestLayout();
                            break;
                        }
                    } else {
                        cleVar.ah = i2;
                        break;
                    }
                }
                break;
            case 1:
                cleVar.an();
                break;
            default:
                cnp cnpVar2 = cleVar.aa;
                if (cnpVar2 != null) {
                    if (cnpVar2.getParent() != null) {
                        cnpVar2.setVisibility(0);
                    }
                    if (cnpVar2.getAnimationMode() != 1) {
                        int height3 = cnpVar2.getHeight();
                        ViewGroup.LayoutParams layoutParams2 = cnpVar2.getLayoutParams();
                        if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                            height3 += ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
                        }
                        cnpVar2.setTranslationY(height3);
                        ValueAnimator valueAnimator = new ValueAnimator();
                        valueAnimator.setIntValues(height3, 0);
                        valueAnimator.setInterpolator(cleVar.s);
                        valueAnimator.setDuration(cleVar.af);
                        valueAnimator.addListener(new don(cleVar, 1));
                        valueAnimator.addUpdateListener(new eoq(cleVar, 2));
                        valueAnimator.start();
                        break;
                    } else {
                        ValueAnimator ofFloat = ValueAnimator.ofFloat(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 1.0f);
                        ofFloat.setInterpolator(cleVar.q);
                        ofFloat.addUpdateListener(new eoq(cleVar, 0));
                        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
                        ofFloat2.setInterpolator(cleVar.w);
                        ofFloat2.addUpdateListener(new eoq(cleVar, 1));
                        AnimatorSet animatorSet = new AnimatorSet();
                        animatorSet.playTogether(ofFloat, ofFloat2);
                        animatorSet.setDuration(cleVar.t);
                        animatorSet.addListener(new don(cleVar, 3));
                        animatorSet.start();
                        break;
                    }
                }
                break;
        }
    }
}

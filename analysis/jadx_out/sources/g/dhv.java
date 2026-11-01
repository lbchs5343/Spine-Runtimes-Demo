package g;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.ValueAnimator;
import android.os.Handler;
import android.os.Message;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.material.snackbar.BaseTransientBottomBar$Behavior;
import java.util.List;

/* loaded from: classes3.dex */
public final class dhv implements Handler.Callback {
    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        int i = message.what;
        if (i == 0) {
            cle cleVar = (cle) message.obj;
            cnp cnpVar = cleVar.aa;
            if (cnpVar.getParent() == null) {
                ViewGroup.LayoutParams layoutParams = cnpVar.getLayoutParams();
                if (layoutParams instanceof eu) {
                    eu euVar = (eu) layoutParams;
                    BaseTransientBottomBar$Behavior baseTransientBottomBar$Behavior = new BaseTransientBottomBar$Behavior();
                    emr emrVar = baseTransientBottomBar$Behavior.w;
                    emrVar.getClass();
                    emrVar.n = cleVar.v;
                    baseTransientBottomBar$Behavior.s = new eie(4, cleVar);
                    dip dipVar = euVar.h;
                    if (dipVar != baseTransientBottomBar$Behavior) {
                        if (dipVar != null) {
                            dipVar.ca();
                        }
                        euVar.h = baseTransientBottomBar$Behavior;
                        euVar.l = true;
                    }
                    euVar.o = 80;
                }
                ViewGroup viewGroup = cleVar.ag;
                cnpVar.f13194f = true;
                viewGroup.addView(cnpVar);
                cnpVar.f13194f = false;
                cleVar.al();
                cnpVar.setVisibility(4);
            }
            if (cnpVar.isLaidOut()) {
                cleVar.aj();
                return true;
            }
            cleVar.x = true;
            return true;
        }
        if (i != 1) {
            return false;
        }
        cle cleVar2 = (cle) message.obj;
        int i2 = message.arg1;
        cnp cnpVar2 = cleVar2.aa;
        AccessibilityManager accessibilityManager = cleVar2.u;
        if ((accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) || cnpVar2.getVisibility() != 0) {
            cleVar2.an();
            return true;
        }
        if (cnpVar2.getAnimationMode() == 1) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            ofFloat.setInterpolator(cleVar2.q);
            ofFloat.addUpdateListener(new eoq(cleVar2, 0));
            ofFloat.setDuration(cleVar2.f13057ab);
            ofFloat.addListener(new don(cleVar2, i2, 0));
            ofFloat.start();
            return true;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        cnp cnpVar3 = cleVar2.aa;
        int height = cnpVar3.getHeight();
        ViewGroup.LayoutParams layoutParams2 = cnpVar3.getLayoutParams();
        if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
            height += ((ViewGroup.MarginLayoutParams) layoutParams2).bottomMargin;
        }
        valueAnimator.setIntValues(0, height);
        valueAnimator.setInterpolator(cleVar2.s);
        valueAnimator.setDuration(cleVar2.af);
        valueAnimator.addListener(new don(cleVar2, i2, 2));
        valueAnimator.addUpdateListener(new eoq(cleVar2, 3));
        valueAnimator.start();
        return true;
    }
}

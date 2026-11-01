package g;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.appcompat.widget.SwitchCompat;
import cn.trinea.android.developertools.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;

/* loaded from: classes.dex */
public final class akz extends amk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10426a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10427b;

    public /* synthetic */ akz(int i, Object obj) {
        this.f10426a = i;
        this.f10427b = obj;
    }

    @Override // g.amk
    public final void c(View view, fnz fnzVar) {
        int i = this.f10426a;
        int i2 = -1;
        Object obj = this.f10427b;
        View.AccessibilityDelegate accessibilityDelegate = this.m;
        switch (i) {
            case 0:
                AccessibilityNodeInfo accessibilityNodeInfo = fnzVar.f17119b;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                fnzVar.j(ezn.class.getName());
                accessibilityNodeInfo.setScrollable(false);
                ezn eznVar = (ezn) obj;
                if (eznVar.canScrollHorizontally(1)) {
                    fnzVar.h(4096);
                }
                if (eznVar.canScrollHorizontally(-1)) {
                    fnzVar.h(8192);
                    break;
                }
                break;
            case 1:
                AccessibilityNodeInfo accessibilityNodeInfo2 = fnzVar.f17119b;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                fnzVar.h(1048576);
                accessibilityNodeInfo2.setDismissable(true);
                break;
            case 2:
                AccessibilityNodeInfo accessibilityNodeInfo3 = fnzVar.f17119b;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo3);
                CheckableImageButton checkableImageButton = (CheckableImageButton) obj;
                accessibilityNodeInfo3.setCheckable(checkableImageButton.f9054f);
                accessibilityNodeInfo3.setChecked(checkableImageButton.f9053e);
                break;
            case 3:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, fnzVar.f17119b);
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj;
                int i3 = MaterialButtonToggleGroup.f9014a;
                if (view instanceof MaterialButton) {
                    int i4 = 0;
                    int i5 = 0;
                    while (true) {
                        if (i4 < materialButtonToggleGroup.getChildCount()) {
                            if (materialButtonToggleGroup.getChildAt(i4) == view) {
                                i2 = i5;
                            } else {
                                if ((materialButtonToggleGroup.getChildAt(i4) instanceof MaterialButton) && materialButtonToggleGroup.getChildAt(i4).getVisibility() != 8) {
                                    i5++;
                                }
                                i4++;
                            }
                        }
                    }
                }
                fnzVar.l(fc.f(0, 1, i2, 1, ((MaterialButton) view).j));
                break;
            case 4:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, fnzVar.f17119b);
                ebb ebbVar = (ebb) obj;
                fnzVar.k(new csk(16, ebbVar.r.getVisibility() == 0 ? ebbVar.getString(R.string.mtrl_picker_toggle_to_year_selection) : ebbVar.getString(R.string.mtrl_picker_toggle_to_day_selection)));
                break;
            case 5:
                AccessibilityNodeInfo accessibilityNodeInfo4 = fnzVar.f17119b;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo4);
                accessibilityNodeInfo4.setCheckable(((NavigationMenuItemView) obj).i);
                break;
            default:
                AccessibilityNodeInfo accessibilityNodeInfo5 = fnzVar.f17119b;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo5);
                fnzVar.j("android.widget.Switch");
                accessibilityNodeInfo5.setCheckable(true);
                SwitchCompat switchCompat = (SwitchCompat) obj;
                accessibilityNodeInfo5.setChecked(switchCompat.isChecked());
                accessibilityNodeInfo5.setEnabled(switchCompat.isEnabled());
                break;
        }
    }

    @Override // g.amk
    public void d(View view, AccessibilityEvent accessibilityEvent) {
        switch (this.f10426a) {
            case 0:
                super.d(view, accessibilityEvent);
                accessibilityEvent.setClassName(ezn.class.getName());
                accessibilityEvent.setScrollable(false);
                accessibilityEvent.getEventType();
                break;
            case 1:
            default:
                super.d(view, accessibilityEvent);
                break;
            case 2:
                super.d(view, accessibilityEvent);
                accessibilityEvent.setChecked(((CheckableImageButton) this.f10427b).f9053e);
                break;
        }
    }

    @Override // g.amk
    public boolean e(View view, int i, Bundle bundle) {
        switch (this.f10426a) {
            case 0:
                ezn eznVar = (ezn) this.f10427b;
                if (!super.e(view, i, bundle)) {
                    if (i == 4096) {
                        if (eznVar.canScrollHorizontally(1)) {
                            eznVar.setCurrentItem(eznVar.mCurItem + 1);
                            break;
                        }
                    } else if (i == 8192 && eznVar.canScrollHorizontally(-1)) {
                        eznVar.setCurrentItem(eznVar.mCurItem - 1);
                        break;
                    }
                }
                break;
            case 1:
                if (i != 1048576) {
                    break;
                } else {
                    ((sd) ((cle) this.f10427b)).ak(3);
                    break;
                }
        }
        return super.e(view, i, bundle);
    }
}

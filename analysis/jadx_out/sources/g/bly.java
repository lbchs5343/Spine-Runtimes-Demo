package g;

import android.graphics.Rect;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.material.chip.Chip;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class bly extends amk {

    /* renamed from: a, reason: collision with root package name */
    public static final Rect f11809a = new Rect(he.UNDEFINED_ITEM_ID, he.UNDEFINED_ITEM_ID, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: b, reason: collision with root package name */
    public static final cuf f11810b = new cuf(1);
    public static final cfg o = new cfg(2);
    public final AccessibilityManager p;
    public final /* synthetic */ Chip r;
    public final Chip x;
    public mv y;
    public final Rect s = new Rect();
    public final Rect u = new Rect();
    public final Rect v = new Rect();
    public final int[] z = new int[2];
    public int q = Integer.MIN_VALUE;
    public int t = Integer.MIN_VALUE;
    public int w = Integer.MIN_VALUE;

    public bly(Chip chip, Chip chip2) {
        this.r = chip;
        this.x = chip2;
        this.p = (AccessibilityManager) chip2.getContext().getSystemService("accessibility");
        chip2.setFocusable(true);
        WeakHashMap weakHashMap = goi.f18490c;
        if (chip2.getImportantForAccessibility() == 0) {
            chip2.setImportantForAccessibility(1);
        }
    }

    public final fnz aa(int i) {
        Rect closeIconTouchBoundsInt;
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain();
        fnz fnzVar = new fnz(obtain);
        obtain.setEnabled(true);
        obtain.setFocusable(true);
        fnzVar.j("android.view.View");
        Rect rect = f11809a;
        obtain.setBoundsInParent(rect);
        obtain.setBoundsInScreen(rect);
        Chip chip = this.x;
        obtain.setParent(chip);
        AccessibilityNodeInfo accessibilityNodeInfo = fnzVar.f17119b;
        if (i == 1) {
            Chip chip2 = this.r;
            CharSequence closeIconContentDescription = chip2.getCloseIconContentDescription();
            if (closeIconContentDescription != null) {
                accessibilityNodeInfo.setContentDescription(closeIconContentDescription);
            } else {
                CharSequence text = chip2.getText();
                accessibilityNodeInfo.setContentDescription(chip2.getContext().getString(R.string.mtrl_chip_close_icon_content_description, TextUtils.isEmpty(text) ? "" : text).trim());
            }
            closeIconTouchBoundsInt = chip2.getCloseIconTouchBoundsInt();
            accessibilityNodeInfo.setBoundsInParent(closeIconTouchBoundsInt);
            fnzVar.k(csk.f13432e);
            accessibilityNodeInfo.setEnabled(chip2.isEnabled());
            fnzVar.j(Button.class.getName());
        } else {
            accessibilityNodeInfo.setContentDescription("");
            accessibilityNodeInfo.setBoundsInParent(Chip.f9033c);
        }
        if (fnzVar.n() == null && obtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.u;
        fnzVar.i(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = obtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        obtain.setPackageName(chip.getContext().getPackageName());
        fnzVar.f17120c = i;
        obtain.setSource(chip, i);
        if (this.q == i) {
            obtain.setAccessibilityFocused(true);
            fnzVar.h(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        } else {
            obtain.setAccessibilityFocused(false);
            fnzVar.h(64);
        }
        boolean z = this.t == i;
        if (z) {
            fnzVar.h(2);
        } else if (obtain.isFocusable()) {
            fnzVar.h(1);
        }
        obtain.setFocused(z);
        int[] iArr = this.z;
        chip.getLocationOnScreen(iArr);
        Rect rect3 = this.s;
        obtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            fnzVar.i(rect3);
            rect3.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
        }
        Rect rect4 = this.v;
        if (chip.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - chip.getScrollX(), iArr[1] - chip.getScrollY());
            if (rect3.intersect(rect4)) {
                obtain.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && chip.getWindowVisibility() == 0) {
                    Object parent = chip.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view = (View) parent;
                            if (view.getAlpha() <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || view.getVisibility() != 0) {
                                break;
                            }
                            parent = view.getParent();
                        } else if (parent != null) {
                            accessibilityNodeInfo.setVisibleToUser(true);
                        }
                    }
                }
            }
        }
        return fnzVar;
    }

    public final void ab(int i, boolean z) {
        Chip chip = this.r;
        if (i == 1) {
            chip.t = z;
        }
        bko bkoVar = chip.o;
        boolean z2 = chip.t;
        boolean z3 = false;
        if (bkoVar.i != null) {
            z3 = bkoVar.bw(z2 ? new int[]{android.R.attr.state_pressed, android.R.attr.state_enabled} : bko.f11744a);
        }
        if (z3) {
            chip.refreshDrawableState();
        }
    }

    public final fnz ac(int i) {
        if (i != -1) {
            return aa(i);
        }
        Chip chip = this.x;
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(chip);
        fnz fnzVar = new fnz(obtain);
        WeakHashMap weakHashMap = goi.f18490c;
        chip.onInitializeAccessibilityNodeInfo(obtain);
        ArrayList arrayList = new ArrayList();
        ad(arrayList);
        if (obtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            fnzVar.f17119b.addChild(chip, ((Integer) arrayList.get(i2)).intValue());
        }
        return fnzVar;
    }

    public final void ad(ArrayList arrayList) {
        bko bkoVar;
        arrayList.add(0);
        Rect rect = Chip.f9033c;
        Chip chip = this.r;
        if (!chip.aa() || (bkoVar = chip.o) == null || !bkoVar.az || chip.f9034d == null) {
            return;
        }
        arrayList.add(1);
    }

    public final boolean ae(int i) {
        int i2;
        Chip chip = this.x;
        if ((!chip.isFocused() && !chip.requestFocus()) || (i2 = this.t) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            ag(i2);
        }
        if (i == Integer.MIN_VALUE) {
            return false;
        }
        this.t = i;
        ab(i, true);
        ah(i, 8);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean af(int i, Rect rect) {
        Object obj;
        fnz fnzVar;
        int i2;
        int i3;
        int j;
        int i4;
        ArrayList arrayList = new ArrayList();
        ad(arrayList);
        gob gobVar = new gob();
        for (int i5 = 0; i5 < arrayList.size(); i5++) {
            gobVar.h(((Integer) arrayList.get(i5)).intValue(), aa(((Integer) arrayList.get(i5)).intValue()));
        }
        int i6 = this.t;
        fnz fnzVar2 = i6 == Integer.MIN_VALUE ? null : (fnz) gobVar.f(i6);
        cuf cufVar = f11810b;
        cfg cfgVar = o;
        Chip chip = this.x;
        if (i == 1 || i == 2) {
            WeakHashMap weakHashMap = goi.f18490c;
            boolean z = chip.getLayoutDirection() == 1;
            cfgVar.getClass();
            int j2 = gobVar.j();
            ArrayList arrayList2 = new ArrayList(j2);
            for (int i7 = 0; i7 < j2; i7++) {
                arrayList2.add((fnz) gobVar.i(i7));
            }
            Collections.sort(arrayList2, new byq(z, cufVar));
            if (i == 1) {
                int size = arrayList2.size();
                if (fnzVar2 != null) {
                    size = arrayList2.indexOf(fnzVar2);
                }
                int i8 = size - 1;
                if (i8 >= 0) {
                    obj = arrayList2.get(i8);
                    fnzVar = (fnz) obj;
                }
                obj = null;
                fnzVar = (fnz) obj;
            } else {
                if (i != 2) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                }
                int size2 = arrayList2.size();
                int lastIndexOf = (fnzVar2 == null ? -1 : arrayList2.lastIndexOf(fnzVar2)) + 1;
                if (lastIndexOf < size2) {
                    obj = arrayList2.get(lastIndexOf);
                    fnzVar = (fnz) obj;
                }
                obj = null;
                fnzVar = (fnz) obj;
            }
        } else {
            if (i != 17 && i != 33 && i != 66 && i != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i9 = this.t;
            if (i9 != Integer.MIN_VALUE) {
                ac(i9).i(rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                int width = chip.getWidth();
                int height = chip.getHeight();
                if (i == 17) {
                    rect2.set(width, 0, width, height);
                } else if (i == 33) {
                    rect2.set(0, height, width, height);
                } else if (i == 66) {
                    rect2.set(-1, 0, -1, height);
                } else {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    rect2.set(0, -1, width, -1);
                }
                Rect rect3 = new Rect(rect2);
                if (i != 17) {
                    rect3.offset(rect2.width() + 1, 0);
                } else if (i == 33) {
                    rect3.offset(0, rect2.height() + 1);
                } else if (i == 66) {
                    rect3.offset(-(rect2.width() + 1), 0);
                } else {
                    if (i != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    rect3.offset(0, -(rect2.height() + 1));
                }
                cfgVar.getClass();
                j = gobVar.j();
                Rect rect4 = new Rect();
                fnzVar = null;
                for (i4 = 0; i4 < j; i4++) {
                    fnz fnzVar3 = (fnz) gobVar.i(i4);
                    if (fnzVar3 != fnzVar2) {
                        cufVar.getClass();
                        fnzVar3.i(rect4);
                        if (bfc.al(i, rect2, rect4)) {
                            if (bfc.al(i, rect2, rect3) && !bfc.aa(i, rect2, rect4, rect3)) {
                                if (!bfc.aa(i, rect2, rect3, rect4)) {
                                    int w = bfc.w(i, rect2, rect4);
                                    int q = bfc.q(i, rect2, rect4);
                                    int i10 = (q * q) + (w * 13 * w);
                                    int w2 = bfc.w(i, rect2, rect3);
                                    int q2 = bfc.q(i, rect2, rect3);
                                    if (i10 >= (q2 * q2) + (w2 * 13 * w2)) {
                                    }
                                }
                            }
                            rect3.set(rect4);
                            fnzVar = fnzVar3;
                        }
                    }
                }
            }
            Rect rect32 = new Rect(rect2);
            if (i != 17) {
            }
            cfgVar.getClass();
            j = gobVar.j();
            Rect rect42 = new Rect();
            fnzVar = null;
            while (i4 < j) {
            }
        }
        fnz fnzVar4 = fnzVar;
        if (fnzVar4 == null) {
            i3 = Integer.MIN_VALUE;
        } else {
            if (gobVar.f18484c) {
                bfc.p(gobVar);
            }
            int i11 = gobVar.f18483b;
            int i12 = 0;
            while (true) {
                if (i12 >= i11) {
                    i2 = -1;
                    break;
                }
                if (gobVar.f18482a[i12] == fnzVar4) {
                    i2 = i12;
                    break;
                }
                i12++;
            }
            if (gobVar.f18484c) {
                bfc.p(gobVar);
            }
            i3 = gobVar.f18485d[i2];
        }
        return ae(i3);
    }

    public final boolean ag(int i) {
        if (this.t != i) {
            return false;
        }
        this.t = Integer.MIN_VALUE;
        ab(i, false);
        ah(i, 8);
        return true;
    }

    public final void ah(int i, int i2) {
        View view;
        ViewParent parent;
        AccessibilityEvent obtain;
        if (i == Integer.MIN_VALUE || !this.p.isEnabled() || (parent = (view = this.x).getParent()) == null) {
            return;
        }
        if (i != -1) {
            obtain = AccessibilityEvent.obtain(i2);
            fnz ac = ac(i);
            obtain.getText().add(ac.n());
            AccessibilityNodeInfo accessibilityNodeInfo = ac.f17119b;
            obtain.setContentDescription(accessibilityNodeInfo.getContentDescription());
            obtain.setScrollable(accessibilityNodeInfo.isScrollable());
            obtain.setPassword(accessibilityNodeInfo.isPassword());
            obtain.setEnabled(accessibilityNodeInfo.isEnabled());
            obtain.setChecked(accessibilityNodeInfo.isChecked());
            if (obtain.getText().isEmpty() && obtain.getContentDescription() == null) {
                throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
            }
            obtain.setClassName(accessibilityNodeInfo.getClassName());
            obtain.setSource(view, i);
            obtain.setPackageName(view.getContext().getPackageName());
        } else {
            obtain = AccessibilityEvent.obtain(i2);
            view.onInitializeAccessibilityEvent(obtain);
        }
        parent.requestSendAccessibilityEvent(view, obtain);
    }

    @Override // g.amk
    public final void c(View view, fnz fnzVar) {
        AccessibilityNodeInfo accessibilityNodeInfo = fnzVar.f17119b;
        this.m.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        Chip chip = this.r;
        bko bkoVar = chip.o;
        accessibilityNodeInfo.setCheckable(bkoVar != null && bkoVar.f11748d);
        accessibilityNodeInfo.setClickable(chip.isClickable());
        fnzVar.j(chip.getAccessibilityClassName());
        CharSequence text = chip.getText();
        if (Build.VERSION.SDK_INT >= 23) {
            fnzVar.f(text);
        } else {
            accessibilityNodeInfo.setContentDescription(text);
        }
    }

    @Override // g.amk
    public final evf k(View view) {
        if (this.y == null) {
            this.y = new mv(this);
        }
        return this.y;
    }
}

package g;

import android.R;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
public final class csk {

    /* renamed from: a, reason: collision with root package name */
    public static final csk f13428a;

    /* renamed from: b, reason: collision with root package name */
    public static final csk f13429b;

    /* renamed from: c, reason: collision with root package name */
    public static final csk f13430c;

    /* renamed from: d, reason: collision with root package name */
    public static final csk f13431d;

    /* renamed from: e, reason: collision with root package name */
    public static final csk f13432e;

    /* renamed from: f, reason: collision with root package name */
    public static final csk f13433f;

    /* renamed from: g, reason: collision with root package name */
    public static final csk f13434g;
    public static final csk h;
    public static final csk i;
    public static final csk j;
    public final yt k;
    public final Object l;
    public final int m;
    public final Class n;

    static {
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction2;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction3;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction4;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction5;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction6;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction7;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction8;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction9;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction10;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction11;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction12;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction13;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction14;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction15;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction16;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction17;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction18;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction19;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction20;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction21;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction22;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction23;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction24;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction25;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction26;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction27;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction28;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction29;
        AccessibilityNodeInfo.AccessibilityAction accessibilityAction30;
        new csk(1, (String) null);
        new csk(2, (String) null);
        new csk(4, (String) null);
        new csk(8, (String) null);
        f13432e = new csk(16, (String) null);
        new csk(32, (String) null);
        new csk(64, (String) null);
        new csk(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, (String) null);
        new csk(256, dkr.class);
        new csk(512, dkr.class);
        new csk(1024, gyz.class);
        new csk(2048, gyz.class);
        f13433f = new csk(4096, (String) null);
        j = new csk(8192, (String) null);
        new csk(16384, (String) null);
        new csk(32768, (String) null);
        new csk(65536, (String) null);
        new csk(131072, cws.class);
        f13428a = new csk(262144, (String) null);
        h = new csk(524288, (String) null);
        i = new csk(1048576, (String) null);
        new csk(2097152, lc.class);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            accessibilityAction30 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN;
            accessibilityAction = accessibilityAction30;
        } else {
            accessibilityAction = null;
        }
        new csk(accessibilityAction, R.id.accessibilityActionShowOnScreen, null, null, null);
        if (i2 >= 23) {
            accessibilityAction29 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION;
            accessibilityAction2 = accessibilityAction29;
        } else {
            accessibilityAction2 = null;
        }
        f13429b = new csk(accessibilityAction2, R.id.accessibilityActionScrollToPosition, null, null, i.class);
        f13431d = new csk(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
        if (i2 >= 23) {
            accessibilityAction28 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT;
            accessibilityAction3 = accessibilityAction28;
        } else {
            accessibilityAction3 = null;
        }
        new csk(accessibilityAction3, R.id.accessibilityActionScrollLeft, null, null, null);
        if (i2 >= 23) {
            accessibilityAction27 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN;
            accessibilityAction4 = accessibilityAction27;
        } else {
            accessibilityAction4 = null;
        }
        f13434g = new csk(accessibilityAction4, R.id.accessibilityActionScrollDown, null, null, null);
        new csk(i2 >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null, null, null);
        if (i2 >= 29) {
            accessibilityAction26 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP;
            accessibilityAction5 = accessibilityAction26;
        } else {
            accessibilityAction5 = null;
        }
        new csk(accessibilityAction5, R.id.accessibilityActionPageUp, null, null, null);
        if (i2 >= 29) {
            accessibilityAction25 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN;
            accessibilityAction6 = accessibilityAction25;
        } else {
            accessibilityAction6 = null;
        }
        new csk(accessibilityAction6, R.id.accessibilityActionPageDown, null, null, null);
        new csk(i2 >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
        if (i2 >= 29) {
            accessibilityAction24 = AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT;
            accessibilityAction7 = accessibilityAction24;
        } else {
            accessibilityAction7 = null;
        }
        new csk(accessibilityAction7, R.id.accessibilityActionPageRight, null, null, null);
        if (i2 >= 23) {
            accessibilityAction23 = AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK;
            accessibilityAction8 = accessibilityAction23;
        } else {
            accessibilityAction8 = null;
        }
        new csk(accessibilityAction8, R.id.accessibilityActionContextClick, null, null, null);
        if (i2 >= 24) {
            accessibilityAction22 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS;
            accessibilityAction9 = accessibilityAction22;
        } else {
            accessibilityAction9 = null;
        }
        new csk(accessibilityAction9, R.id.accessibilityActionSetProgress, null, null, akr.class);
        new csk(i2 >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, cjo.class);
        if (i2 >= 28) {
            accessibilityAction21 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP;
            accessibilityAction10 = accessibilityAction21;
        } else {
            accessibilityAction10 = null;
        }
        new csk(accessibilityAction10, R.id.accessibilityActionShowTooltip, null, null, null);
        if (i2 >= 28) {
            accessibilityAction20 = AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP;
            accessibilityAction11 = accessibilityAction20;
        } else {
            accessibilityAction11 = null;
        }
        new csk(accessibilityAction11, R.id.accessibilityActionHideTooltip, null, null, null);
        new csk(i2 >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
        if (i2 >= 30) {
            accessibilityAction19 = AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER;
            accessibilityAction12 = accessibilityAction19;
        } else {
            accessibilityAction12 = null;
        }
        new csk(accessibilityAction12, R.id.accessibilityActionImeEnter, null, null, null);
        new csk(i2 >= 32 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_START : null, R.id.accessibilityActionDragStart, null, null, null);
        if (i2 >= 32) {
            accessibilityAction18 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_DROP;
            accessibilityAction13 = accessibilityAction18;
        } else {
            accessibilityAction13 = null;
        }
        new csk(accessibilityAction13, R.id.accessibilityActionDragDrop, null, null, null);
        if (i2 >= 32) {
            accessibilityAction17 = AccessibilityNodeInfo.AccessibilityAction.ACTION_DRAG_CANCEL;
            accessibilityAction14 = accessibilityAction17;
        } else {
            accessibilityAction14 = null;
        }
        new csk(accessibilityAction14, R.id.accessibilityActionDragCancel, null, null, null);
        if (i2 >= 33) {
            accessibilityAction16 = AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TEXT_SUGGESTIONS;
            accessibilityAction15 = accessibilityAction16;
        } else {
            accessibilityAction15 = null;
        }
        new csk(accessibilityAction15, R.id.accessibilityActionShowTextSuggestions, null, null, null);
        f13430c = new csk(i2 >= 34 ? bpm.d() : null, R.id.accessibilityActionScrollInDirection, null, null, null);
    }

    public csk(int i2, Class cls) {
        this(null, i2, null, null, cls);
    }

    public csk(int i2, String str) {
        this(null, i2, str, null, null);
    }

    public csk(Object obj, int i2, CharSequence charSequence, yt ytVar, Class cls) {
        this.m = i2;
        this.k = ytVar;
        if (obj == null) {
            this.l = new AccessibilityNodeInfo.AccessibilityAction(i2, charSequence);
        } else {
            this.l = obj;
        }
        this.n = cls;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof csk)) {
            return false;
        }
        Object obj2 = ((csk) obj).l;
        Object obj3 = this.l;
        return obj3 == null ? obj2 == null : obj3.equals(obj2);
    }

    public final int hashCode() {
        Object obj = this.l;
        if (obj != null) {
            return obj.hashCode();
        }
        return 0;
    }

    public final int o() {
        return ((AccessibilityNodeInfo.AccessibilityAction) this.l).getId();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AccessibilityActionCompat: ");
        String d2 = fnz.d(this.m);
        if (d2.equals("ACTION_UNKNOWN")) {
            Object obj = this.l;
            if (((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel() != null) {
                d2 = ((AccessibilityNodeInfo.AccessibilityAction) obj).getLabel().toString();
            }
        }
        sb.append(d2);
        return sb.toString();
    }
}

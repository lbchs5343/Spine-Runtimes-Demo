package g;

import android.os.Bundle;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeProvider;
import cn.trinea.android.developertools.R;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class amk {
    public static final View.AccessibilityDelegate l = new View.AccessibilityDelegate();
    public final View.AccessibilityDelegate m;
    public final dln n;

    public amk() {
        this(l);
    }

    public amk(View.AccessibilityDelegate accessibilityDelegate) {
        this.m = accessibilityDelegate;
        this.n = new dln(this);
    }

    public void c(View view, fnz fnzVar) {
        this.m.onInitializeAccessibilityNodeInfo(view, fnzVar.f17119b);
    }

    public void d(View view, AccessibilityEvent accessibilityEvent) {
        this.m.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean e(View view, int i, Bundle bundle) {
        boolean z;
        WeakReference weakReference;
        ClickableSpan clickableSpan;
        List list = (List) view.getTag(R.id.tag_accessibility_actions);
        if (list == null) {
            list = Collections.EMPTY_LIST;
        }
        boolean z2 = false;
        int i2 = 0;
        while (true) {
            if (i2 >= list.size()) {
                break;
            }
            csk cskVar = (csk) list.get(i2);
            if (cskVar.o() == i) {
                Class cls = cskVar.n;
                yt ytVar = cskVar.k;
                if (ytVar != null) {
                    if (cls != null) {
                        try {
                            if (cls.getDeclaredConstructor(null).newInstance(null) == null) {
                                throw null;
                            }
                            throw new ClassCastException();
                        } catch (Exception e2) {
                            Log.e("A11yActionCompat", "Failed to execute command with argument class ViewCommandArgument: ".concat(cls.getName()), e2);
                        }
                    }
                    z = ytVar.c(view);
                }
            } else {
                i2++;
            }
        }
        z = false;
        if (!z) {
            z = this.m.performAccessibilityAction(view, i, bundle);
        }
        if (z || i != R.id.accessibility_action_clickable_span || bundle == null) {
            return z;
        }
        int i3 = bundle.getInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", -1);
        SparseArray sparseArray = (SparseArray) view.getTag(R.id.tag_accessibility_clickable_spans);
        if (sparseArray != null && (weakReference = (WeakReference) sparseArray.get(i3)) != null && (clickableSpan = (ClickableSpan) weakReference.get()) != null) {
            CharSequence text = view.createAccessibilityNodeInfo().getText();
            ClickableSpan[] clickableSpanArr = text instanceof Spanned ? (ClickableSpan[]) ((Spanned) text).getSpans(0, text.length(), ClickableSpan.class) : null;
            int i4 = 0;
            while (true) {
                if (clickableSpanArr == null || i4 >= clickableSpanArr.length) {
                    break;
                }
                if (clickableSpan.equals(clickableSpanArr[i4])) {
                    clickableSpan.onClick(view);
                    z2 = true;
                    break;
                }
                i4++;
            }
        }
        return z2;
    }

    public void f(View view, int i) {
        this.m.sendAccessibilityEvent(view, i);
    }

    public void g(View view, AccessibilityEvent accessibilityEvent) {
        this.m.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean h(View view, AccessibilityEvent accessibilityEvent) {
        return this.m.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public boolean i(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return this.m.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public void j(View view, AccessibilityEvent accessibilityEvent) {
        this.m.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public evf k(View view) {
        AccessibilityNodeProvider accessibilityNodeProvider = this.m.getAccessibilityNodeProvider(view);
        if (accessibilityNodeProvider != null) {
            return new evf(1, accessibilityNodeProvider);
        }
        return null;
    }
}

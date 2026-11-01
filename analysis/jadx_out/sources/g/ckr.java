package g;

import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.List;

/* loaded from: classes.dex */
public class ckr extends AccessibilityNodeProvider {

    /* renamed from: a, reason: collision with root package name */
    public final evf f13038a;

    public ckr(evf evfVar) {
        this.f13038a = evfVar;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
        fnz c2 = this.f13038a.c(i);
        if (c2 == null) {
            return null;
        }
        return c2.f17119b;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final List findAccessibilityNodeInfosByText(String str, int i) {
        this.f13038a.getClass();
        return null;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final AccessibilityNodeInfo findFocus(int i) {
        fnz d2 = this.f13038a.d(i);
        if (d2 == null) {
            return null;
        }
        return d2.f17119b;
    }

    @Override // android.view.accessibility.AccessibilityNodeProvider
    public final boolean performAction(int i, int i2, Bundle bundle) {
        return this.f13038a.b(i, i2, bundle);
    }
}

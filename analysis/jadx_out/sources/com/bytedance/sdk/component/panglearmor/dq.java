package com.bytedance.sdk.component.panglearmor;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.reflect.Field;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public class dq extends View.AccessibilityDelegate {

    /* renamed from: d, reason: collision with root package name */
    public static Field f2173d;
    public static dq dq = new dq(null, null);
    public static int ox = 0;
    public static String p = "";
    public static Set<Integer> s = new HashSet();
    public View.AccessibilityDelegate iw;
    public View mn;

    static {
        f2173d = null;
        if (Build.VERSION.SDK_INT < 29) {
            try {
                Field declaredField = Class.forName("android.view.View").getDeclaredField("mAccessibilityDelegate");
                declaredField.setAccessible(true);
                f2173d = declaredField;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public dq(View.AccessibilityDelegate accessibilityDelegate, View view) {
        this.iw = accessibilityDelegate;
        this.mn = view;
        SoftDecTool.h = true;
    }

    public static void dq(View view) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (s.contains(Integer.valueOf(view.hashCode()))) {
            return;
        }
        boolean z = true;
        if (Build.VERSION.SDK_INT >= 29) {
            accessibilityDelegate = view.getAccessibilityDelegate();
        } else {
            try {
                Field field = f2173d;
                if (field != null) {
                    accessibilityDelegate = (View.AccessibilityDelegate) field.get(view);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            accessibilityDelegate = null;
            z = false;
        }
        if (!(accessibilityDelegate instanceof dq) && z) {
            view.setAccessibilityDelegate(new dq(accessibilityDelegate, view));
            s.add(Integer.valueOf(view.hashCode()));
        }
    }

    @Override // android.view.View.AccessibilityDelegate
    public void addExtraDataToAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
        ox = hashCode();
        p = String.valueOf(this.iw);
        view.setAccessibilityDelegate(this.iw);
        if (Build.VERSION.SDK_INT >= 26) {
            try {
                View.AccessibilityDelegate accessibilityDelegate = this.iw;
                if (accessibilityDelegate != null) {
                    accessibilityDelegate.addExtraDataToAccessibilityNodeInfo(view, accessibilityNodeInfo, str, bundle);
                } else {
                    super.addExtraDataToAccessibilityNodeInfo(view, accessibilityNodeInfo, str, bundle);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        ox = hashCode();
        p = String.valueOf(this.iw);
        view.setAccessibilityDelegate(this.iw);
        view.setAccessibilityDelegate(this.iw);
        View.AccessibilityDelegate accessibilityDelegate = this.iw;
        boolean dispatchPopulateAccessibilityEvent = accessibilityDelegate != null ? accessibilityDelegate.dispatchPopulateAccessibilityEvent(view, accessibilityEvent) : super.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        view.setAccessibilityDelegate(this);
        return dispatchPopulateAccessibilityEvent;
    }

    public boolean dq() {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 4 || (stackTraceElement = stackTrace[3]) == null) {
            return false;
        }
        for (int i = 4; i < stackTrace.length; i++) {
            if (stackTrace[i] != null && stackTraceElement.getMethodName().equals(stackTrace[i].getMethodName()) && stackTraceElement.getClassName().equals(stackTrace[i].getClassName())) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        ox = hashCode();
        p = String.valueOf(this.iw);
        view.setAccessibilityDelegate(this.iw);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.iw;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.onInitializeAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
        SoftDecTool.f2166f = true;
        ox = hashCode();
        p = String.valueOf(this.iw);
        view.setAccessibilityDelegate(this.iw);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.iw;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            } else {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        ox = hashCode();
        p = String.valueOf(this.iw);
        if (dq()) {
            return;
        }
        view.setAccessibilityDelegate(this.iw);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.iw;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.onPopulateAccessibilityEvent(view, accessibilityEvent);
            } else {
                super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        ox = hashCode();
        p = String.valueOf(this.iw);
        viewGroup.setAccessibilityDelegate(this.iw);
        View.AccessibilityDelegate accessibilityDelegate = this.iw;
        boolean onRequestSendAccessibilityEvent = accessibilityDelegate != null ? accessibilityDelegate.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent) : super.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        viewGroup.setAccessibilityDelegate(this);
        return onRequestSendAccessibilityEvent;
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        ox = hashCode();
        p = String.valueOf(this.iw);
        SoftDecTool.f2164a = true;
        view.setAccessibilityDelegate(this.iw);
        View.AccessibilityDelegate accessibilityDelegate = this.iw;
        boolean performAccessibilityAction = accessibilityDelegate != null ? accessibilityDelegate.performAccessibilityAction(view, i, bundle) : super.performAccessibilityAction(view, i, bundle);
        view.setAccessibilityDelegate(this);
        return performAccessibilityAction;
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEvent(View view, int i) {
        ox = hashCode();
        p = String.valueOf(this.iw);
        view.setAccessibilityDelegate(this.iw);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.iw;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.sendAccessibilityEvent(view, i);
            } else {
                super.sendAccessibilityEvent(view, i);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        view.setAccessibilityDelegate(this);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        ox = hashCode();
        p = String.valueOf(this.iw);
        view.setAccessibilityDelegate(this.iw);
        try {
            View.AccessibilityDelegate accessibilityDelegate = this.iw;
            if (accessibilityDelegate != null) {
                accessibilityDelegate.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            } else {
                super.sendAccessibilityEventUnchecked(view, accessibilityEvent);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        view.setAccessibilityDelegate(this);
    }
}

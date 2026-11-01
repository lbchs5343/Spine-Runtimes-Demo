package g;

import android.accessibilityservice.AccessibilityServiceInfo;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ServiceInfo;
import android.graphics.Rect;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ern {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f16035a;

    /* renamed from: b, reason: collision with root package name */
    public static boolean f16036b;

    /* renamed from: c, reason: collision with root package name */
    public static AccessibilityNodeInfo f16037c;

    /* renamed from: d, reason: collision with root package name */
    public static final Rect f16038d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public static CharSequence f16039e;

    /* renamed from: f, reason: collision with root package name */
    public static he f16040f;

    public static boolean g(Context context) {
        return fgj.e().g(context, new Intent("android.settings.ACCESSIBILITY_SETTINGS"), true, false, true);
    }

    public static boolean h(Context context, String str) {
        ServiceInfo serviceInfo;
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        String packageName = context.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            return false;
        }
        for (AccessibilityServiceInfo accessibilityServiceInfo : ((AccessibilityManager) context.getSystemService("accessibility")).getEnabledAccessibilityServiceList(-1)) {
            if (accessibilityServiceInfo != null && accessibilityServiceInfo.getResolveInfo() != null && (serviceInfo = accessibilityServiceInfo.getResolveInfo().serviceInfo) != null && packageName.equals(serviceInfo.packageName) && str.equals(serviceInfo.name)) {
                return true;
            }
        }
        return false;
    }

    public static boolean i(CharSequence charSequence) {
        return charSequence != null && hca.f19207a.contains(charSequence.toString());
    }

    public static List j(AccessibilityNodeInfo accessibilityNodeInfo, HashSet hashSet) {
        ArrayList arrayList = new ArrayList();
        if (acw.u(hashSet) || hashSet.contains(accessibilityNodeInfo.getClassName())) {
            arrayList.add(accessibilityNodeInfo);
        }
        for (int i = 0; i < accessibilityNodeInfo.getChildCount(); i++) {
            AccessibilityNodeInfo child = accessibilityNodeInfo.getChild(i);
            if (child != null) {
                arrayList.addAll(j(child, hashSet));
            }
        }
        return arrayList;
    }

    public static boolean k(Rect rect) {
        return (rect.left == 0 && rect.top == 0 && rect.right == 0 && rect.bottom == 0) || rect.width() <= 1 || rect.height() <= 1;
    }

    public static ArrayList l(Context context) {
        ServiceInfo serviceInfo;
        List<AccessibilityServiceInfo> installedAccessibilityServiceList = ((AccessibilityManager) context.getSystemService("accessibility")).getInstalledAccessibilityServiceList();
        ArrayList arrayList = new ArrayList();
        for (AccessibilityServiceInfo accessibilityServiceInfo : installedAccessibilityServiceList) {
            if (accessibilityServiceInfo != null && accessibilityServiceInfo.getResolveInfo() != null && (serviceInfo = accessibilityServiceInfo.getResolveInfo().serviceInfo) != null && context.getPackageName().equals(serviceInfo.packageName)) {
                arrayList.add(serviceInfo.name);
            }
        }
        return arrayList;
    }

    public static he m() {
        AccessibilityNodeInfo accessibilityNodeInfo;
        if (f16035a && !f16036b) {
            f16040f = null;
        }
        if (f16040f == null) {
            AccessibilityNodeInfo accessibilityNodeInfo2 = f16037c;
            f16040f = accessibilityNodeInfo2 != null ? he.fromAccessibilityNodeInfo(accessibilityNodeInfo2, 1, f16039e) : null;
            f16035a = false;
        } else if (!f16036b && (accessibilityNodeInfo = f16037c) != null && accessibilityNodeInfo.getChildCount() > 0 && f16037c.getChild(0) != null) {
            f16040f = he.fromAccessibilityNodeInfo(f16037c, 1, f16039e);
        }
        return f16040f;
    }

    public static void n(AccessibilityNodeInfo accessibilityNodeInfo, CharSequence charSequence) {
        if (accessibilityNodeInfo == null) {
            AccessibilityNodeInfo accessibilityNodeInfo2 = f16037c;
            if (accessibilityNodeInfo2 != null) {
                accessibilityNodeInfo2.recycle();
            }
            f16037c = null;
            f16039e = null;
            f16040f = null;
            f16035a = false;
            return;
        }
        if ("com.android.systemui".contentEquals(accessibilityNodeInfo.getPackageName() == null ? "" : accessibilityNodeInfo.getPackageName()) || i(accessibilityNodeInfo.getPackageName())) {
            return;
        }
        Rect rect = f16038d;
        accessibilityNodeInfo.getBoundsInScreen(rect);
        if (k(rect)) {
            return;
        }
        AccessibilityNodeInfo obtain = AccessibilityNodeInfo.obtain(accessibilityNodeInfo);
        AccessibilityNodeInfo accessibilityNodeInfo3 = f16037c;
        if (accessibilityNodeInfo3 != null) {
            accessibilityNodeInfo3.recycle();
        }
        f16037c = obtain;
        f16039e = charSequence;
        f16035a = true;
        if (f16036b) {
            return;
        }
        f16040f = null;
    }
}

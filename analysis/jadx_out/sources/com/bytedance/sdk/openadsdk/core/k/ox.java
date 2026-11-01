package com.bytedance.sdk.openadsdk.core.k;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import com.bytedance.sdk.component.utils.ig;

/* loaded from: classes3.dex */
public final class ox {
    private static final String dq = "ox";

    private ox() {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0092 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean d(Context context, String str) {
        char c2;
        int checkOp;
        String str2 = dq;
        ig.p(str2, "checkPermissinKITKATNew，permission：".concat(String.valueOf(str)));
        boolean z = true;
        try {
            int hashCode = str.hashCode();
            if (hashCode == -1888586689) {
                if (str.equals("android.permission.ACCESS_FINE_LOCATION")) {
                    c2 = 1;
                    if (c2 == 0) {
                    }
                    checkOp = ((AppOpsManager) context.getSystemService("appops")).checkOp(r7, Binder.getCallingUid(), context.getPackageName());
                    ig.p(str2, "checkPermissinKITKATNew，locationOp,permission：" + checkOp + "," + r7);
                    if (checkOp != 0) {
                    }
                }
                c2 = 65535;
                if (c2 == 0) {
                }
                checkOp = ((AppOpsManager) context.getSystemService("appops")).checkOp(r7, Binder.getCallingUid(), context.getPackageName());
                ig.p(str2, "checkPermissinKITKATNew，locationOp,permission：" + checkOp + "," + r7);
                if (checkOp != 0) {
                }
            } else if (hashCode != -63024214) {
                if (hashCode == -5573545 && str.equals("android.permission.READ_PHONE_STATE")) {
                    c2 = 2;
                    String lowerCase = c2 == 0 ? c2 != 1 ? c2 != 2 ? str.replaceFirst("android.permission.", "android:").toLowerCase() : "android:read_phone_state" : "android:fine_location" : "android:coarse_location";
                    checkOp = ((AppOpsManager) context.getSystemService("appops")).checkOp(lowerCase, Binder.getCallingUid(), context.getPackageName());
                    ig.p(str2, "checkPermissinKITKATNew，locationOp,permission：" + checkOp + "," + lowerCase);
                    if (checkOp != 0) {
                        return true;
                    }
                    try {
                        ig.p(str2, "checkPermissinKITKATNew，false,permission：".concat(String.valueOf(lowerCase)));
                        return false;
                    } catch (Exception e2) {
                        e = e2;
                        z = false;
                    }
                }
                c2 = 65535;
                if (c2 == 0) {
                }
                checkOp = ((AppOpsManager) context.getSystemService("appops")).checkOp(lowerCase, Binder.getCallingUid(), context.getPackageName());
                ig.p(str2, "checkPermissinKITKATNew，locationOp,permission：" + checkOp + "," + lowerCase);
                if (checkOp != 0) {
                }
            } else {
                if (str.equals("android.permission.ACCESS_COARSE_LOCATION")) {
                    c2 = 0;
                    if (c2 == 0) {
                    }
                    checkOp = ((AppOpsManager) context.getSystemService("appops")).checkOp(lowerCase, Binder.getCallingUid(), context.getPackageName());
                    ig.p(str2, "checkPermissinKITKATNew，locationOp,permission：" + checkOp + "," + lowerCase);
                    if (checkOp != 0) {
                    }
                }
                c2 = 65535;
                if (c2 == 0) {
                }
                checkOp = ((AppOpsManager) context.getSystemService("appops")).checkOp(lowerCase, Binder.getCallingUid(), context.getPackageName());
                ig.p(str2, "checkPermissinKITKATNew，locationOp,permission：" + checkOp + "," + lowerCase);
                if (checkOp != 0) {
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
        e = e3;
        ig.p(dq, "权限检查出错时默认返回有权限，异常代码：".concat(String.valueOf(e)));
        return z;
    }

    public static boolean dq(Context context, String str) {
        return d(context, str);
    }

    private static boolean ox(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}

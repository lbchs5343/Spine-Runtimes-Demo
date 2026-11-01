package com.bytedance.sdk.openadsdk.h;

import android.content.Context;
import android.os.Build;
import android.telephony.ServiceState;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.bytedance.sdk.component.utils.jy;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class s implements jy {
    private static boolean d(Context context, TelephonyManager telephonyManager) {
        int checkSelfPermission;
        ServiceState serviceState;
        if (context != null && Build.VERSION.SDK_INT >= 29) {
            checkSelfPermission = context.checkSelfPermission("android.permission.READ_PHONE_STATE");
            if (checkSelfPermission == 0) {
                try {
                    int dq = dq();
                    if (dq == -1) {
                        serviceState = telephonyManager.getServiceState();
                    } else {
                        Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getServiceStateForSubscriber", Integer.TYPE);
                        declaredMethod.setAccessible(true);
                        serviceState = (ServiceState) declaredMethod.invoke(telephonyManager, Integer.valueOf(dq));
                    }
                    return dq(serviceState);
                } catch (Exception unused) {
                }
            }
        }
        return false;
    }

    private static int dq() {
        int defaultDataSubscriptionId;
        if (Build.VERSION.SDK_INT < 24) {
            return -1;
        }
        defaultDataSubscriptionId = SubscriptionManager.getDefaultDataSubscriptionId();
        return defaultDataSubscriptionId;
    }

    private static boolean dq(ServiceState serviceState) {
        try {
            Method method = serviceState.getClass().getMethod("getNrState", null);
            if (method != null) {
                method.setAccessible(true);
                int intValue = ((Integer) method.invoke(serviceState, null)).intValue();
                return intValue == 3 || intValue == 2;
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.utils.jy
    public boolean dq(Context context, TelephonyManager telephonyManager) {
        return d(context, telephonyManager);
    }
}

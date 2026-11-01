package com.bytedance.sdk.component.kk.p;

import android.content.Context;
import com.bytedance.sdk.component.kk.ox.mn;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public class p {
    private static String dq(int i) {
        return "tnc_config".concat(String.valueOf(i));
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String dq(Context context, int i, int i2) {
        String dq;
        if (i == 1) {
            if (mn.dq().dq(i2).p() != null) {
                dq = mn.dq().dq(i2).p().dq(context, dq(i2), "");
                return dq == null ? String.valueOf(dq) : "";
            }
        }
        dq = "";
        if (dq == null) {
        }
    }

    public static void dq(Context context, int i, String str, int i2) {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (i == 1) {
                linkedHashMap.put(dq(i2), str);
            }
            ox.ox("MultiProcessFileUtils", "saveData = ".concat(String.valueOf(str)));
            if (mn.dq().dq(i2).p() != null) {
                mn.dq().dq(i2).p().dq(context, linkedHashMap);
            }
        } catch (Exception unused) {
        }
    }
}

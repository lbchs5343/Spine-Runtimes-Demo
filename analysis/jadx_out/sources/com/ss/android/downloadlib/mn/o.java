package com.ss.android.downloadlib.mn;

import android.text.TextUtils;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import g.awf;
import java.util.Map;

/* loaded from: classes.dex */
public class o {
    private static Map<String, dq> dq = awf.ab();

    public interface dq {
        void dq();

        void dq(String str);
    }

    public static boolean d(String str) {
        return com.ss.android.downloadlib.addownload.no.s().dq(com.ss.android.downloadlib.addownload.no.getContext(), str);
    }

    public static void dq(String str) {
        dq ox;
        if (TextUtils.isEmpty(str) || (ox = ox(str)) == null) {
            return;
        }
        ox.dq();
    }

    private static void dq(String str, dq dqVar) {
        if (TextUtils.isEmpty(str) || dqVar == null) {
            return;
        }
        dq.put(str, dqVar);
    }

    public static void dq(String str, String str2) {
        dq ox;
        if (TextUtils.isEmpty(str) || (ox = ox(str)) == null) {
            return;
        }
        ox.dq(str2);
    }

    public static void dq(String[] strArr, dq dqVar) {
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        String valueOf = String.valueOf(System.currentTimeMillis());
        dq(valueOf, dqVar);
        TTDelegateActivity.dq(valueOf, strArr);
    }

    private static dq ox(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return dq.remove(str);
    }
}

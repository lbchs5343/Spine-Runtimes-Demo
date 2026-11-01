package com.bytedance.msdk.core.q;

import android.text.TextUtils;
import g.awf;
import java.util.Map;

/* loaded from: classes.dex */
public class dq {
    private static final Map<String, InterfaceC0061dq> dq = awf.ab();

    /* renamed from: com.bytedance.msdk.core.q.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0061dq {
    }

    private static InterfaceC0061dq d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return dq.remove(str);
    }

    public static void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        d(str);
    }

    public static void dq(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        d(str);
    }
}

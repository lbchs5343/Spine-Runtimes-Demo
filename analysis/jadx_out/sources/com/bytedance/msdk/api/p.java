package com.bytedance.msdk.api;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.Toast;

/* loaded from: classes.dex */
public final class p {
    private static Toast dq;

    @SuppressLint({"ShowToast"})
    private static Toast dq(Context context) {
        if (context == null) {
            return dq;
        }
        Toast makeText = Toast.makeText(context.getApplicationContext(), "", 0);
        dq = makeText;
        return makeText;
    }

    public static void dq(Context context, String str) {
        dq(context, str, 0);
    }

    public static void dq(Context context, String str, int i) {
        Toast dq2 = dq(context);
        if (dq2 == null) {
            com.bytedance.msdk.dq.s.ox.d("TToast", "toast msg: ".concat(String.valueOf(str)));
            return;
        }
        dq2.setDuration(i);
        dq2.setText(String.valueOf(str));
        dq2.show();
    }
}

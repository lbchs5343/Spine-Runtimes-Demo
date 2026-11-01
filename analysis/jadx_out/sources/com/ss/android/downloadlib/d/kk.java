package com.ss.android.downloadlib.d;

import android.os.Build;
import com.ss.android.downloadlib.addownload.no;

/* loaded from: classes.dex */
public class kk {
    public static boolean dq(com.ss.android.downloadad.api.dq.dq dqVar) {
        return com.ss.android.socialbase.appdownloader.iw.s.s() && Build.VERSION.SDK_INT < 29 && no.ig() != null && no.ig().dq() && com.ss.android.downloadlib.mn.s.dq(dqVar).d("invoke_app_form_background_switch") == 1 && dqVar.fw();
    }
}

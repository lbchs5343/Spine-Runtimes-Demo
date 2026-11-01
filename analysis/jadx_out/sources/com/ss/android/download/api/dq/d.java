package com.ss.android.download.api.dq;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import com.ss.android.download.api.config.kk;
import com.ss.android.download.api.config.r;
import g.eyt;

/* loaded from: classes.dex */
public class d implements kk {
    private r dq;

    @Override // com.ss.android.download.api.config.kk
    public void dq(Activity activity, int i, String[] strArr, int[] iArr) {
        r rVar;
        if (iArr.length <= 0 || (rVar = this.dq) == null) {
            return;
        }
        int i2 = iArr[0];
        if (i2 == -1) {
            rVar.dq(strArr[0]);
        } else if (i2 == 0) {
            rVar.dq();
        }
    }

    @Override // com.ss.android.download.api.config.kk
    public void dq(Activity activity, String[] strArr, r rVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.dq = rVar;
            activity.requestPermissions(strArr, 1);
        } else if (rVar != null) {
            rVar.dq();
        }
    }

    @Override // com.ss.android.download.api.config.kk
    public boolean dq(Context context, String str) {
        return context != null && eyt.am(context, str) == 0;
    }
}

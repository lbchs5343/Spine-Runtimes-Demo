package com.bytedance.embedapplog;

import android.content.Context;
import android.os.Build;

/* loaded from: classes.dex */
final class ip {
    public static hy dq(Context context) {
        if (kk.iw()) {
            return new jn(new no());
        }
        if (kk.mn() && no.dq()) {
            return new no();
        }
        if (jv.dq()) {
            return new jv(context);
        }
        if (kk.ox() && kk.p()) {
            return new tv();
        }
        if (kk.ox() && !kk.p()) {
            return new dk();
        }
        if (kk.dq(context) || kk.ox()) {
            return new tv();
        }
        if (kk.kk()) {
            return new jn();
        }
        if (kk.ia()) {
            return new g();
        }
        if (Build.VERSION.SDK_INT <= 28) {
            if (kk.s() || !tv.ox(context)) {
                return null;
            }
            return new tv();
        }
        if (kk.o()) {
            return new y();
        }
        if (kk.ig()) {
            return new zi();
        }
        if (kk.no()) {
            return new sy();
        }
        if (kk.mp()) {
            return new er();
        }
        x xVar = new x(context);
        return xVar.dq(context) ? xVar : new bf();
    }
}

package com.bytedance.sdk.openadsdk.core.o.ox.ox;

import android.content.Context;
import android.widget.Toast;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;

/* loaded from: classes3.dex */
public abstract class dq {

    /* renamed from: d, reason: collision with root package name */
    protected j f3323d;
    protected Context dq;
    protected int ox;
    protected boolean p = true;

    public int d() {
        return this.ox;
    }

    public void dq(Context context) {
        this.dq = context;
    }

    public void dq(j jVar) {
        this.f3323d = jVar;
    }

    public void dq(boolean z) {
        this.p = z;
    }

    public boolean dq() {
        Context context;
        if (this.f3323d == null || (context = this.dq) == null) {
            return true;
        }
        if (!this.p) {
            return false;
        }
        if (q.ox(context) == 0) {
            try {
                Context context2 = this.dq;
                Toast.makeText(context2, r.dq(context2, "tt_no_network"), 0).show();
            } catch (Throwable unused) {
            }
        }
        boolean ox = ox();
        if (ox) {
            iw.dq = true;
            iw.ox = true;
        }
        return ox;
    }

    public abstract boolean ox();

    public boolean p() {
        int ox = q.ox(this.dq);
        j jVar = this.f3323d;
        if (jVar == null) {
            return false;
        }
        int jy = com.bytedance.sdk.openadsdk.core.r.r.jy(jVar);
        if (jy == -1) {
            return !no.ia().ox(ox);
        }
        if (jy != 0) {
            if (jy != 2) {
                if (jy == 3) {
                    return true;
                }
                if (!no.ia().ox(ox)) {
                    com.bytedance.sdk.openadsdk.core.r.p gm = this.f3323d.gm();
                    if (((gm == null || gm.mn() <= 0) ? 104857600 : gm.mn()) > com.bytedance.sdk.openadsdk.core.r.r.f(this.f3323d)) {
                        return true;
                    }
                }
                return false;
            }
            if (ox != 4) {
                return true;
            }
        }
        return false;
    }
}

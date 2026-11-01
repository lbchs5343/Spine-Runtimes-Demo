package com.bytedance.msdk.ox.p;

import android.content.Context;
import android.os.SystemClock;
import com.bytedance.msdk.core.s.d.p;
import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public class ox extends d implements com.bytedance.msdk.core.s.d.d {
    public ox(Context context) {
        super(context);
    }

    @Override // com.bytedance.msdk.core.s.d.d
    public int B_() {
        com.bytedance.msdk.ox.s.dq.d dVar = this.ox;
        if (dVar != null) {
            return dVar.kx();
        }
        return 0;
    }

    @Override // com.bytedance.msdk.core.s.d.d
    public void dq(Context context, com.bytedance.msdk.api.dq.d dVar, p.ox oxVar) {
        dq(dVar);
        this.ox.d(true);
        long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
        this.ox.dq(currentThreadTimeMillis);
        this.ox.dq(oxVar);
        com.bytedance.msdk.core.s.d.p.dq().dq(this.s, currentThreadTimeMillis);
        no();
    }

    @Override // com.bytedance.msdk.core.s.d.d
    public com.bytedance.msdk.ox.s.dq.d iw() {
        return this.ox;
    }

    @Override // com.bytedance.msdk.core.s.d.d
    public ConcurrentHashMap<String, com.bytedance.msdk.api.d> s() {
        com.bytedance.msdk.ox.s.dq.d dVar = this.ox;
        if (dVar != null) {
            return dVar.wp();
        }
        return null;
    }
}

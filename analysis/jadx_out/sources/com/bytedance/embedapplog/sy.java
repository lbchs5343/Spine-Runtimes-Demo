package com.bytedance.embedapplog;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.bytedance.embedapplog.o;
import com.bytedance.embedapplog.q;

/* loaded from: classes.dex */
final class sy extends tl<q> {
    public sy() {
        super("com.zui.deviceidservice");
    }

    @Override // com.bytedance.embedapplog.tl
    public o.d<q, String> dq() {
        return new o.d<q, String>() { // from class: com.bytedance.embedapplog.sy.1
            @Override // com.bytedance.embedapplog.o.d
            /* renamed from: d, reason: merged with bridge method [inline-methods] */
            public q dq(IBinder iBinder) {
                return q.dq.dq(iBinder);
            }

            @Override // com.bytedance.embedapplog.o.d
            public String dq(q qVar) {
                if (qVar == null) {
                    return null;
                }
                return qVar.dq();
            }
        };
    }

    @Override // com.bytedance.embedapplog.tl
    public Intent ox(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.zui.deviceidservice", "com.zui.deviceidservice.DeviceidService");
        return intent;
    }
}

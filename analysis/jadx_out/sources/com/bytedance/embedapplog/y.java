package com.bytedance.embedapplog;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.bytedance.embedapplog.mp;
import com.bytedance.embedapplog.o;

/* loaded from: classes.dex */
final class y extends tl<mp> {
    public y() {
        super("com.samsung.android.deviceidservice");
    }

    @Override // com.bytedance.embedapplog.tl
    public o.d<mp, String> dq() {
        return new o.d<mp, String>() { // from class: com.bytedance.embedapplog.y.1
            @Override // com.bytedance.embedapplog.o.d
            /* renamed from: d, reason: merged with bridge method [inline-methods] */
            public mp dq(IBinder iBinder) {
                return mp.dq.dq(iBinder);
            }

            @Override // com.bytedance.embedapplog.o.d
            public String dq(mp mpVar) {
                return mpVar.dq();
            }
        };
    }

    @Override // com.bytedance.embedapplog.tl
    public Intent ox(Context context) {
        Intent intent = new Intent();
        intent.setClassName("com.samsung.android.deviceidservice", "com.samsung.android.deviceidservice.DeviceIdService");
        return intent;
    }
}

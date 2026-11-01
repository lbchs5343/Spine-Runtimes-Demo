package com.bytedance.msdk.p;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.msdk.ia.p.ox;
import com.bytedance.sdk.component.d.dq.p;
import com.bytedance.sdk.component.kk.dq;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class d {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile d dq;

    /* renamed from: d, reason: collision with root package name */
    private Context f1241d;
    private final com.bytedance.sdk.component.kk.dq ox;

    private d(Context context) {
        Map<String, Object> map;
        this.f1241d = context == null ? com.bytedance.msdk.core.dq.getContext() : context.getApplicationContext();
        dq.C0121dq c0121dq = new dq.C0121dq();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        dq.C0121dq dq2 = c0121dq.dq(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, timeUnit).d(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, timeUnit).ox(ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT, timeUnit).dq(true);
        if (ox.dq() && (map = ox.dq) != null) {
            Object obj = map.get("case_id");
            if ((obj instanceof String) && !TextUtils.isEmpty((String) obj)) {
                dq2.dq(new ox.dq());
            }
        }
        com.bytedance.sdk.component.kk.dq dq3 = dq2.dq();
        this.ox = dq3;
        p dq4 = dq3.iw().dq();
        if (dq4 != null) {
            dq4.dq(16);
        }
    }

    public static d dq() {
        if (dq == null) {
            synchronized (d.class) {
                try {
                    if (dq == null) {
                        dq = new d(com.bytedance.msdk.core.dq.getContext());
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public com.bytedance.sdk.component.kk.dq d() {
        return this.ox;
    }
}

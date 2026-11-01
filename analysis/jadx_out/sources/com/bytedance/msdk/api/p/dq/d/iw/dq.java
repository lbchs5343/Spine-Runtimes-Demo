package com.bytedance.msdk.api.p.dq.d.iw;

import android.content.Context;
import com.bytedance.msdk.api.p.dq.d.ox.d;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class dq {
    private static final String ox = "TTMediationSDK_dq";
    private d p;
    private final AtomicBoolean s = new AtomicBoolean(false);
    protected long dq = 0;

    /* renamed from: d, reason: collision with root package name */
    protected int f769d = 0;

    public abstract String d();

    public String d(Context context, Map<String, Object> map) {
        return null;
    }

    public final void d(Context context, d dVar, Map<String, Object> map) {
        this.s.set(false);
        this.p = dVar;
        dq(context, dVar, map);
    }

    public abstract String dq();

    public String dq(Context context, Map<String, Object> map) {
        return null;
    }

    public abstract void dq(Context context, d dVar, Map<String, Object> map);

    public int iw() {
        return this.f769d;
    }

    public void mn() {
        this.f769d = 0;
        this.dq = 0L;
    }

    public final void ox() {
        this.s.set(true);
    }

    public final boolean p() {
        return this.s.get();
    }

    public long s() {
        return this.dq;
    }
}

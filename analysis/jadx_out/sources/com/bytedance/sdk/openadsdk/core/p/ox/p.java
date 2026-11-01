package com.bytedance.sdk.openadsdk.core.p.ox;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.p.ox.s;
import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p {
    private final s s;
    private static final p dq = new p(7);

    /* renamed from: d, reason: collision with root package name */
    private static final p f3375d = new p(8);
    private static final p ox = new p(3);
    private static final p p = new p(0);

    private p(int i) {
        this.s = new s(i);
    }

    public static p dq(int i) {
        return i != 3 ? i != 7 ? i != 8 ? p : f3375d : dq : ox;
    }

    public void d(String str) {
        this.s.d(str);
    }

    public j dq(String str, boolean z) {
        System.currentTimeMillis();
        s.d dq2 = this.s.dq(str, z);
        if (dq2 == null) {
            System.currentTimeMillis();
            return null;
        }
        System.currentTimeMillis();
        try {
            j dq3 = com.bytedance.sdk.openadsdk.core.d.dq(new JSONObject(com.bytedance.sdk.component.utils.dq.ox(dq2.ox)));
            dq3.iw(true);
            dq3.u(101);
            dq3.s(dq2.dq);
            dq3.wp(dq2.s);
            return dq3;
        } catch (Exception unused) {
            return null;
        }
    }

    public void dq() {
        this.s.dq();
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar, j jVar, boolean z) {
        if (dVar == null || jVar == null) {
            return;
        }
        String mn = dVar.mn();
        String d2 = com.bytedance.sdk.component.utils.dq.d(jVar.ve().toString());
        this.s.dq(mn, new s.d(d2, jVar.sp(), 1000 * jVar.ix(), jVar.xq()), z, ((((System.currentTimeMillis() / 1000) / 60) / 60) / 3) + c.jy(jVar));
    }

    public void dq(String str) {
        this.s.dq(str);
    }

    public void dq(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.s.dq(str, str2);
    }

    public void dq(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        this.s.dq(str, str2, z);
    }

    public void ox(String str) {
        this.s.ox(str);
    }

    public boolean p(String str) {
        return this.s.p(str);
    }
}

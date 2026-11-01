package com.bytedance.sdk.openadsdk.core.iw;

import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.tools.LogAdapter;

/* loaded from: classes3.dex */
public class p {
    private static p s = new p();

    /* renamed from: d, reason: collision with root package name */
    private int f3084d;
    private j dq;
    private int ox;
    private volatile com.bytedance.sdk.component.dq p;

    private boolean d() {
        this.p = LogAdapter.dq;
        return this.p != null;
    }

    public static p dq() {
        return s;
    }

    private String ox() {
        j jVar = this.dq;
        return jVar != null ? com.bytedance.sdk.component.utils.dq.dq(jVar.ve()).toString() : "";
    }

    public p d(int i) {
        if (d()) {
            this.ox = i;
        }
        return this;
    }

    public p dq(int i) {
        if (d()) {
            this.f3084d = i;
        }
        return this;
    }

    public p dq(j jVar) {
        if (d()) {
            this.dq = jVar;
        }
        return this;
    }

    public void dq(Thread thread, Throwable th) {
        String str;
        if (d()) {
            if (thread != null) {
                str = thread.getName() + "-" + thread.getId();
            } else {
                str = "";
            }
            this.p.dq(str, "-------fatal----------");
            this.p.dq(str, "last show rit:" + this.ox);
            this.p.dq(str, "last show adtype:" + this.f3084d);
            this.p.dq(str, ox());
            this.p.dq(str, th);
            this.p.dq(str, "-------finish----------");
            LogAdapter.dq.dq().flush();
        }
    }
}

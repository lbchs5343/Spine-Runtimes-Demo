package com.bytedance.sdk.openadsdk.core.d.dq;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.o;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class dq {

    /* renamed from: d, reason: collision with root package name */
    protected Context f2787d;
    protected j dq;
    protected o ox;
    protected View p;

    public abstract int dq(Map<String, Object> map, ox oxVar);

    public void dq(View view) {
        this.p = view;
    }

    public void dq(o oVar) {
        this.ox = oVar;
    }
}

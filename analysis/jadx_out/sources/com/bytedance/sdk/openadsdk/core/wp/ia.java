package com.bytedance.sdk.openadsdk.core.wp;

import com.bykv.vk.openvk.api.proto.Result;

/* loaded from: classes3.dex */
public class ia {

    /* renamed from: d, reason: collision with root package name */
    private Result f3722d;
    private int dq;

    public ia(Result result, int i) {
        this.dq = i;
        this.f3722d = result;
    }

    public int getType() {
        return this.dq;
    }

    public Result ox() {
        return this.f3722d;
    }

    public void setResult(Result result) {
        this.f3722d = result;
    }
}

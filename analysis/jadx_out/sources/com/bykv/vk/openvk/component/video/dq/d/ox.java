package com.bykv.vk.openvk.component.video.dq.d;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private final long f549d;
    private final long dq;
    private final long ox;

    public long dq(int i) {
        if (i <= 0) {
            return this.dq;
        }
        return Math.min((this.f549d * i) + this.dq, this.ox);
    }
}

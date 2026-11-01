package com.bytedance.sdk.gromore.init;

import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;

/* loaded from: classes.dex */
public class s implements EventListener {

    /* renamed from: d, reason: collision with root package name */
    private EventListener f2377d;
    private EventListener dq;

    public s(EventListener eventListener) {
        this.dq = eventListener;
    }

    public void dq(EventListener eventListener) {
        this.f2377d = eventListener;
    }

    @Override // com.bykv.vk.openvk.api.proto.EventListener
    public ValueSet onEvent(int i, Result result) {
        if (result != null) {
            if (result.isSuccess() && i == 8001) {
                EventListener eventListener = this.f2377d;
                if (eventListener != null) {
                    eventListener.onEvent(i, result);
                }
                return null;
            }
            EventListener eventListener2 = this.dq;
            if (eventListener2 != null) {
                eventListener2.onEvent(i, result);
            }
        }
        return null;
    }
}

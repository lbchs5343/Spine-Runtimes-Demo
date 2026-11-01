package com.bykv.vk.openvk.preload.dq.d.d;

import com.bykv.vk.openvk.preload.dq.d.s;
import java.lang.reflect.AccessibleObject;

/* loaded from: classes.dex */
public abstract class d {
    private static final d dq;

    static {
        dq = s.dq() < 9 ? new dq() : new ox();
    }

    public static d dq() {
        return dq;
    }

    public abstract void dq(AccessibleObject accessibleObject);
}

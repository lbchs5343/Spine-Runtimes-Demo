package com.bykv.vk.openvk.preload.d;

import com.bykv.vk.openvk.preload.d.s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ox {
    public static <IN> d<IN> dq(List<ia> list, s sVar, p pVar) {
        if (list == null) {
            throw new IllegalArgumentException("interceptors == null !");
        }
        if (sVar == null) {
            sVar = new s.dq();
        }
        return new kk(Collections.unmodifiableList(new ArrayList(list)), 0, sVar, pVar);
    }
}

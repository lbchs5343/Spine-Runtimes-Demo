package com.bytedance.msdk.ia;

import java.util.List;

/* loaded from: classes.dex */
public class n {
    public static <T> boolean d(List<T> list) {
        return list == null || list.size() == 0 || list.get(0) == null;
    }

    public static <T> boolean dq(List<T> list) {
        return list == null || list.size() == 0;
    }
}

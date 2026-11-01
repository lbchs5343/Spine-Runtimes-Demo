package com.bytedance.sdk.component.kk.ox;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes.dex */
public class mn {

    /* renamed from: d, reason: collision with root package name */
    private static HashMap<Integer, s> f1993d;
    private static volatile mn dq;
    private static HashMap<Integer, dq> ox;

    private mn() {
        f1993d = new HashMap<>();
        ox = new HashMap<>();
    }

    public static synchronized mn dq() {
        mn mnVar;
        synchronized (mn.class) {
            try {
                if (dq == null) {
                    synchronized (mn.class) {
                        try {
                            if (dq == null) {
                                dq = new mn();
                            }
                        } finally {
                        }
                    }
                }
                mnVar = dq;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mnVar;
    }

    public dq dq(int i, Context context) {
        dq dqVar = ox.get(Integer.valueOf(i));
        if (dqVar != null) {
            return dqVar;
        }
        dq dqVar2 = new dq(context, i);
        ox.put(Integer.valueOf(i), dqVar2);
        return dqVar2;
    }

    public s dq(int i) {
        s sVar = f1993d.get(Integer.valueOf(i));
        if (sVar != null) {
            return sVar;
        }
        s sVar2 = new s(i);
        f1993d.put(Integer.valueOf(i), sVar2);
        return sVar2;
    }
}

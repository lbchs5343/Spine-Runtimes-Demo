package com.bytedance.embedapplog;

import android.content.Context;
import com.bytedance.embedapplog.hy;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class no implements hy {

    /* renamed from: d, reason: collision with root package name */
    private static Class<?> f736d;
    private static Object dq;
    private static Method ox;

    static {
        try {
            Class<?> cls = Class.forName("com.android.id.impl.IdProviderImpl");
            f736d = cls;
            dq = cls.newInstance();
            ox = f736d.getMethod("getOAID", Context.class);
        } catch (Exception e2) {
            jo.dq("Api#static reflect exception! " + e2.getMessage());
        }
    }

    private static String dq(Context context, Method method) {
        Object obj = dq;
        if (obj == null || method == null) {
            return null;
        }
        try {
            Object invoke = method.invoke(obj, context);
            if (invoke != null) {
                return (String) invoke;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean dq() {
        return (f736d == null || dq == null || ox == null) ? false : true;
    }

    @Override // com.bytedance.embedapplog.hy
    public hy.dq d(Context context) {
        try {
            hy.dq dqVar = new hy.dq();
            dqVar.f721d = dq(context, ox);
            return dqVar;
        } catch (Exception e2) {
            jo.dq(e2);
            return null;
        }
    }

    @Override // com.bytedance.embedapplog.hy
    public boolean dq(Context context) {
        return dq();
    }
}

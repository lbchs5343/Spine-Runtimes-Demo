package com.bytedance.pangle.d;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.pangle.log.ZeusLogger;
import com.bytedance.pangle.util.MethodUtils;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Class f1325a;

    /* renamed from: b, reason: collision with root package name */
    private static Object f1326b;

    public static final Object a() {
        if (f1326b == null) {
            try {
                synchronized (a.class) {
                    try {
                        if (f1326b == null) {
                            if (f1325a == null) {
                                f1325a = Class.forName("android.app.ActivityThread");
                            }
                            f1326b = MethodUtils.invokeStaticMethod(f1325a, "currentActivityThread", new Object[0]);
                        }
                        if (f1326b == null && Looper.myLooper() != Looper.getMainLooper()) {
                            final Object obj = new Object();
                            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.pangle.d.a.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    try {
                                        try {
                                            Object unused = a.f1326b = MethodUtils.invokeStaticMethod(a.f1325a, "currentActivityThread", new Object[0]);
                                            synchronized (obj) {
                                                obj.notify();
                                            }
                                        } catch (Exception e2) {
                                            ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper main looper invoke currentActivityThread failed.", e2);
                                            synchronized (obj) {
                                                obj.notify();
                                            }
                                        }
                                    } catch (Throwable th) {
                                        synchronized (obj) {
                                            obj.notify();
                                            throw th;
                                        }
                                    }
                                }
                            });
                            if (f1326b == null) {
                                synchronized (obj) {
                                    try {
                                        obj.wait(PushUIConfig.dismissTime);
                                    } catch (InterruptedException e2) {
                                        ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper currentActivityThread interruptedException failed.", e2);
                                    }
                                }
                            }
                        }
                    } finally {
                    }
                }
            } catch (Exception e3) {
                ZeusLogger.errReport(ZeusLogger.TAG, "ActivityThreadHelper currentActivityThread failed.", e3);
            }
        }
        return f1326b;
    }
}

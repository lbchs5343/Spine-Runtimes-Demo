package com.bytedance.sdk.component.ox.d.dq.d;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class s extends RuntimeException {
    private static final Method dq;

    /* renamed from: d, reason: collision with root package name */
    private IOException f2051d;

    static {
        Method method;
        try {
            method = Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class);
        } catch (Exception unused) {
            method = null;
        }
        dq = method;
    }

    public s(IOException iOException) {
        super(iOException);
        this.f2051d = iOException;
    }

    private void dq(IOException iOException, IOException iOException2) {
        Method method = dq;
        if (method != null) {
            try {
                method.invoke(iOException, iOException2);
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
    }

    public IOException dq() {
        return this.f2051d;
    }

    public void dq(IOException iOException) {
        dq(iOException, this.f2051d);
        this.f2051d = iOException;
    }
}

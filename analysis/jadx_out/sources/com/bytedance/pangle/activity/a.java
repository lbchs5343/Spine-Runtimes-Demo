package com.bytedance.pangle.activity;

import android.app.Activity;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class a implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    private final Activity f1297a;

    /* renamed from: b, reason: collision with root package name */
    private final String f1298b;

    /* renamed from: c, reason: collision with root package name */
    private final int f1299c;

    /* renamed from: d, reason: collision with root package name */
    private Method f1300d;

    public a(Activity activity, int i, String str) {
        this.f1297a = activity;
        this.f1298b = str;
        this.f1299c = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f1300d == null) {
            try {
                Method method = this.f1297a.getClass().getMethod(this.f1298b, View.class);
                if (method != null) {
                    this.f1300d = method;
                }
            } catch (NoSuchMethodException unused) {
            }
            throw new IllegalStateException("Could not find method " + this.f1298b + "(View) in a parent or ancestor Context for android:onClick attribute defined on view " + this.f1299c);
        }
        try {
            this.f1300d.invoke(this.f1297a, view);
        } catch (IllegalAccessException e2) {
            throw new IllegalStateException("Could not execute non-public method for android:onClick", e2);
        } catch (InvocationTargetException e3) {
            throw new IllegalStateException("Could not execute method for android:onClick", e3);
        }
    }
}

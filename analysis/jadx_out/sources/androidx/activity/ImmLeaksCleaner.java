package androidx.activity;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import g.ajm;
import g.dtn;
import g.iz;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
final class ImmLeaksCleaner implements ajm {

    /* renamed from: a, reason: collision with root package name */
    public static Field f9a;

    /* renamed from: c, reason: collision with root package name */
    public static Field f10c;

    /* renamed from: d, reason: collision with root package name */
    public static Field f11d;

    /* renamed from: e, reason: collision with root package name */
    public static int f12e;

    /* renamed from: f, reason: collision with root package name */
    public ComponentActivity f13f;

    @Override // g.ajm
    public final void b(iz izVar, dtn dtnVar) {
        if (dtnVar != dtn.ON_DESTROY) {
            return;
        }
        if (f12e == 0) {
            try {
                f12e = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                f10c = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                f11d = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                f9a = declaredField3;
                declaredField3.setAccessible(true);
                f12e = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f12e == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f13f.getSystemService("input_method");
            try {
                Object obj = f9a.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        View view = (View) f10c.get(inputMethodManager);
                        if (view != null) {
                            if (!view.isAttachedToWindow()) {
                                f11d.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            }
                        }
                    } catch (IllegalAccessException unused2) {
                    } catch (ClassCastException unused3) {
                    } catch (IllegalAccessException unused4) {
                    } finally {
                    }
                }
            } catch (IllegalAccessException unused5) {
            }
        }
    }
}

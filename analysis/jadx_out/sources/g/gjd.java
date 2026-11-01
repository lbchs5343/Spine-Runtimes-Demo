package g;

import android.graphics.Rect;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class gjd extends ecs {

    /* renamed from: b, reason: collision with root package name */
    public static boolean f18240b;
    public static Field l;
    public static boolean m;
    public static Constructor n;
    public oi o;
    public WindowInsets p;

    public gjd() {
        this.p = q();
    }

    public gjd(anp anpVar) {
        super(anpVar);
        this.p = anpVar.j();
    }

    private static WindowInsets q() {
        if (!m) {
            try {
                l = WindowInsets.class.getDeclaredField("CONSUMED");
            } catch (ReflectiveOperationException unused) {
            }
            m = true;
        }
        Field field = l;
        if (field != null) {
            try {
                WindowInsets windowInsets = (WindowInsets) field.get(null);
                if (windowInsets != null) {
                    return new WindowInsets(windowInsets);
                }
            } catch (ReflectiveOperationException unused2) {
            }
        }
        if (!f18240b) {
            try {
                n = WindowInsets.class.getConstructor(Rect.class);
            } catch (ReflectiveOperationException unused3) {
            }
            f18240b = true;
        }
        Constructor constructor = n;
        if (constructor != null) {
            try {
                return (WindowInsets) constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException unused4) {
            }
        }
        return null;
    }

    @Override // g.ecs
    public void e(oi oiVar) {
        this.o = oiVar;
    }

    @Override // g.ecs
    public anp g() {
        k();
        anp c2 = anp.c(null, this.p);
        oi[] oiVarArr = this.j;
        dif difVar = c2.f10526b;
        difVar.s(oiVarArr);
        difVar.f(this.o);
        return c2;
    }

    @Override // g.ecs
    public void h(oi oiVar) {
        WindowInsets windowInsets = this.p;
        if (windowInsets != null) {
            this.p = windowInsets.replaceSystemWindowInsets(oiVar.f19759c, oiVar.f19760d, oiVar.f19761e, oiVar.f19758b);
        }
    }
}

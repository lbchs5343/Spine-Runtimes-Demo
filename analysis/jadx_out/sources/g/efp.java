package g;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class efp extends dif {
    public static boolean aa;

    /* renamed from: ab, reason: collision with root package name */
    public static Method f15451ab;
    public static Class x;
    public static Field y;
    public static Field z;
    public int ac;
    public oi[] ad;
    public oi ae;
    public anp af;
    public final WindowInsets ag;
    public oi ah;

    public efp(anp anpVar, WindowInsets windowInsets) {
        super(anpVar);
        this.ae = null;
        this.ag = windowInsets;
    }

    @SuppressLint({"PrivateApi"})
    private static void a() {
        try {
            f15451ab = View.class.getDeclaredMethod("getViewRootImpl", null);
            Class<?> cls = Class.forName("android.view.View$AttachInfo");
            x = cls;
            y = cls.getDeclaredField("mVisibleInsets");
            z = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
            y.setAccessible(true);
            z.setAccessible(true);
        } catch (ReflectiveOperationException e2) {
            Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e2.getMessage(), e2);
        }
        aa = true;
    }

    public static boolean ai(int i, int i2) {
        return (i & 6) == (i2 & 6);
    }

    private oi am(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
        }
        if (!aa) {
            a();
        }
        Method method = f15451ab;
        if (method != null && x != null && y != null) {
            try {
                Object invoke = method.invoke(view, null);
                if (invoke != null) {
                    Rect rect = (Rect) y.get(z.get(invoke));
                    if (rect != null) {
                        return oi.g(rect.left, rect.top, rect.right, rect.bottom);
                    }
                }
            } catch (ReflectiveOperationException e2) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e2.getMessage(), e2);
            }
        }
        return null;
    }

    @SuppressLint({"WrongConstant"})
    private oi an(int i, boolean z2) {
        oi oiVar = oi.f19757a;
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0) {
                oiVar = oi.f(oiVar, ak(i2, z2));
            }
        }
        return oiVar;
    }

    private oi g() {
        anp anpVar = this.af;
        return anpVar != null ? anpVar.f10526b.b() : oi.f19757a;
    }

    public void aj(oi oiVar) {
        this.ah = oiVar;
    }

    public oi ak(int i, boolean z2) {
        oi b2;
        int i2;
        oi oiVar = oi.f19757a;
        if (i != 1) {
            if (i != 2) {
                if (i == 8) {
                    oi[] oiVarArr = this.ad;
                    b2 = oiVarArr != null ? oiVarArr[cux.am(8)] : null;
                    if (b2 != null) {
                        return b2;
                    }
                    oi u = u();
                    oi g2 = g();
                    int i3 = u.f19758b;
                    if (i3 > g2.f19758b) {
                        return oi.g(0, 0, 0, i3);
                    }
                    oi oiVar2 = this.ah;
                    if (oiVar2 != null && !oiVar2.equals(oiVar) && (i2 = this.ah.f19758b) > g2.f19758b) {
                        return oi.g(0, 0, 0, i2);
                    }
                } else {
                    if (i == 16) {
                        return t();
                    }
                    if (i == 32) {
                        return w();
                    }
                    if (i == 64) {
                        return n();
                    }
                    if (i == 128) {
                        anp anpVar = this.af;
                        fve j = anpVar != null ? anpVar.f10526b.j() : j();
                        if (j != null) {
                            int i4 = Build.VERSION.SDK_INT;
                            return oi.g(i4 >= 28 ? eyo.m(j.f17472a) : 0, i4 >= 28 ? eyo.b(j.f17472a) : 0, i4 >= 28 ? eyo.o(j.f17472a) : 0, i4 >= 28 ? eyo.a(j.f17472a) : 0);
                        }
                    }
                }
            } else {
                if (z2) {
                    oi g3 = g();
                    oi b3 = b();
                    return oi.g(Math.max(g3.f19759c, b3.f19759c), 0, Math.max(g3.f19761e, b3.f19761e), Math.max(g3.f19758b, b3.f19758b));
                }
                if ((this.ac & 2) == 0) {
                    oi u2 = u();
                    anp anpVar2 = this.af;
                    b2 = anpVar2 != null ? anpVar2.f10526b.b() : null;
                    int i5 = u2.f19758b;
                    if (b2 != null) {
                        i5 = Math.min(i5, b2.f19758b);
                    }
                    return oi.g(u2.f19759c, 0, u2.f19761e, i5);
                }
            }
        } else {
            if (z2) {
                return oi.g(0, Math.max(g().f19760d, u().f19760d), 0, 0);
            }
            if ((this.ac & 4) == 0) {
                return oi.g(0, u().f19760d, 0, 0);
            }
        }
        return oiVar;
    }

    public boolean al(int i) {
        if (i != 1 && i != 2) {
            if (i == 4) {
                return false;
            }
            if (i != 8 && i != 128) {
                return true;
            }
        }
        return !ak(i, false).equals(oi.f19757a);
    }

    @Override // g.dif
    public boolean equals(Object obj) {
        if (!super.equals(obj)) {
            return false;
        }
        efp efpVar = (efp) obj;
        return Objects.equals(this.ah, efpVar.ah) && ai(this.ac, efpVar.ac);
    }

    @Override // g.dif
    @SuppressLint({"WrongConstant"})
    public boolean h(int i) {
        for (int i2 = 1; i2 <= 512; i2 <<= 1) {
            if ((i & i2) != 0 && !al(i2)) {
                return false;
            }
        }
        return true;
    }

    @Override // g.dif
    public oi i(int i) {
        return an(i, false);
    }

    @Override // g.dif
    public boolean o() {
        return this.ag.isRound();
    }

    @Override // g.dif
    public void p(View view) {
        oi am = am(view);
        if (am == null) {
            am = oi.f19757a;
        }
        aj(am);
    }

    @Override // g.dif
    public anp q(int i, int i2, int i3, int i4) {
        anp c2 = anp.c(null, this.ag);
        int i5 = Build.VERSION.SDK_INT;
        ecs bruVar = i5 >= 34 ? new bru(c2) : i5 >= 31 ? new ghh(c2) : i5 >= 30 ? new yd(c2) : i5 >= 29 ? new bbb(c2) : new gjd(c2);
        bruVar.h(anp.d(u(), i, i2, i3, i4));
        bruVar.e(anp.d(b(), i, i2, i3, i4));
        return bruVar.g();
    }

    @Override // g.dif
    public void r(int i) {
        this.ac = i;
    }

    @Override // g.dif
    public void s(oi[] oiVarArr) {
        this.ad = oiVarArr;
    }

    @Override // g.dif
    public final oi u() {
        if (this.ae == null) {
            WindowInsets windowInsets = this.ag;
            this.ae = oi.g(windowInsets.getSystemWindowInsetLeft(), windowInsets.getSystemWindowInsetTop(), windowInsets.getSystemWindowInsetRight(), windowInsets.getSystemWindowInsetBottom());
        }
        return this.ae;
    }

    @Override // g.dif
    public void v(anp anpVar) {
        this.af = anpVar;
    }
}

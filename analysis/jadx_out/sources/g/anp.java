package g;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class anp {

    /* renamed from: a, reason: collision with root package name */
    public static final anp f10525a;

    /* renamed from: b, reason: collision with root package name */
    public final dif f10526b;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            f10525a = aav.f9881g;
        } else if (i >= 30) {
            f10525a = gcc.ap;
        } else {
            f10525a = dif.l;
        }
    }

    public anp() {
        this.f10526b = new dif(this);
    }

    public anp(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 34) {
            this.f10526b = new aav(this, windowInsets);
            return;
        }
        if (i >= 31) {
            this.f10526b = new hch(this, windowInsets);
            return;
        }
        if (i >= 30) {
            this.f10526b = new gcc(this, windowInsets);
            return;
        }
        if (i >= 29) {
            this.f10526b = new faf(this, windowInsets);
        } else if (i >= 28) {
            this.f10526b = new ask(this, windowInsets);
        } else {
            this.f10526b = new u(this, windowInsets);
        }
    }

    public static anp c(View view, WindowInsets windowInsets) {
        windowInsets.getClass();
        anp anpVar = new anp(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            anp u = goi.u(view);
            dif difVar = anpVar.f10526b;
            difVar.v(u);
            difVar.p(view.getRootView());
            difVar.r(view.getWindowSystemUiVisibility());
        }
        return anpVar;
    }

    public static oi d(oi oiVar, int i, int i2, int i3, int i4) {
        int max = Math.max(0, oiVar.f19759c - i);
        int max2 = Math.max(0, oiVar.f19760d - i2);
        int max3 = Math.max(0, oiVar.f19761e - i3);
        int max4 = Math.max(0, oiVar.f19758b - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? oiVar : oi.g(max, max2, max3, max4);
    }

    public final int e() {
        return this.f10526b.u().f19760d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof anp) {
            return Objects.equals(this.f10526b, ((anp) obj).f10526b);
        }
        return false;
    }

    public final int f() {
        return this.f10526b.u().f19758b;
    }

    public final anp g(int i, int i2, int i3, int i4) {
        int i5 = Build.VERSION.SDK_INT;
        ecs bruVar = i5 >= 34 ? new bru(this) : i5 >= 31 ? new ghh(this) : i5 >= 30 ? new yd(this) : i5 >= 29 ? new bbb(this) : new gjd(this);
        bruVar.h(oi.g(i, i2, i3, i4));
        return bruVar.g();
    }

    public final int h() {
        return this.f10526b.u().f19759c;
    }

    public final int hashCode() {
        dif difVar = this.f10526b;
        if (difVar == null) {
            return 0;
        }
        return difVar.hashCode();
    }

    public final int i() {
        return this.f10526b.u().f19761e;
    }

    public final WindowInsets j() {
        dif difVar = this.f10526b;
        if (difVar instanceof efp) {
            return ((efp) difVar).ag;
        }
        return null;
    }
}

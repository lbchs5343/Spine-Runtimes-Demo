package g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import java.lang.reflect.Constructor;

/* loaded from: classes.dex */
public final class bpb {

    /* renamed from: a, reason: collision with root package name */
    public azw f11938a;

    /* renamed from: ab, reason: collision with root package name */
    public final /* synthetic */ cck f11939ab;
    public String ac;
    public int ae;

    /* renamed from: b, reason: collision with root package name */
    public boolean f11940b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f11941c;

    /* renamed from: d, reason: collision with root package name */
    public int f11942d;

    /* renamed from: e, reason: collision with root package name */
    public String f11943e;

    /* renamed from: f, reason: collision with root package name */
    public char f11944f;
    public CharSequence h;
    public CharSequence i;
    public final Menu k;
    public boolean l;
    public int o;
    public int p;
    public boolean r;
    public char s;
    public int t;
    public int u;
    public int w;
    public int x;
    public CharSequence y;
    public boolean z;
    public ColorStateList n = null;
    public PorterDuff.Mode m = null;
    public int v = 0;
    public int aa = 0;

    /* renamed from: g, reason: collision with root package name */
    public int f11945g = 0;
    public int j = 0;
    public boolean q = true;
    public boolean ad = true;

    public bpb(cck cckVar, Menu menu) {
        this.f11939ab = cckVar;
        this.k = menu;
    }

    public final Object af(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.f11939ab.f12641f.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception unused) {
            return null;
        }
    }

    public final void ag(MenuItem menuItem) {
        boolean z = false;
        menuItem.setChecked(this.r).setVisible(this.z).setEnabled(this.l).setCheckable(this.ae >= 1).setTitleCondensed(this.i).setIcon(this.t);
        int i = this.o;
        if (i >= 0) {
            menuItem.setShowAsAction(i);
        }
        String str = this.f11943e;
        cck cckVar = this.f11939ab;
        if (str != null) {
            if (cckVar.f12641f.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (cckVar.f12638c == null) {
                cckVar.f12638c = cck.g(cckVar.f12641f);
            }
            Object obj = cckVar.f12638c;
            String str2 = this.f11943e;
            flx flxVar = new flx();
            flxVar.f17019c = obj;
            Class<?> cls = obj.getClass();
            try {
                flxVar.f17020d = cls.getMethod(str2, flx.f17017a);
                menuItem.setOnMenuItemClickListener(flxVar);
            } catch (Exception e2) {
                StringBuilder p = awf.p("Couldn't resolve menu item onClick handler ", str2, " in class ");
                p.append(cls.getName());
                InflateException inflateException = new InflateException(p.toString());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }
        if (this.ae >= 2) {
            if (menuItem instanceof far) {
                far farVar = (far) menuItem;
                farVar.ac = (farVar.ac & (-5)) | 4;
            } else if (menuItem instanceof hcv) {
                hcv hcvVar = (hcv) menuItem;
                buc bucVar = hcvVar.h;
                try {
                    if (hcvVar.f19237d == null) {
                        hcvVar.f19237d = bucVar.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    hcvVar.f19237d.invoke(bucVar, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }
        String str3 = this.ac;
        if (str3 != null) {
            menuItem.setActionView((View) af(str3, cck.f12636a, cckVar.f12639d));
            z = true;
        }
        int i2 = this.p;
        if (i2 > 0 && !z) {
            menuItem.setActionView(i2);
        }
        azw azwVar = this.f11938a;
        if (azwVar != null && (menuItem instanceof buc)) {
            ((buc) menuItem).r(azwVar);
        }
        CharSequence charSequence = this.y;
        boolean z2 = menuItem instanceof buc;
        if (z2) {
            ((buc) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            cmb.c(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.h;
        if (z2) {
            ((buc) menuItem).setTooltipText(charSequence2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            cmb.z(menuItem, charSequence2);
        }
        char c2 = this.f11944f;
        int i3 = this.f11942d;
        if (z2) {
            ((buc) menuItem).setAlphabeticShortcut(c2, i3);
        } else if (Build.VERSION.SDK_INT >= 26) {
            cmb.s(menuItem, c2, i3);
        }
        char c3 = this.s;
        int i4 = this.x;
        if (z2) {
            ((buc) menuItem).setNumericShortcut(c3, i4);
        } else if (Build.VERSION.SDK_INT >= 26) {
            cmb.ab(menuItem, c3, i4);
        }
        PorterDuff.Mode mode = this.m;
        if (mode != null) {
            if (z2) {
                ((buc) menuItem).setIconTintMode(mode);
            } else if (Build.VERSION.SDK_INT >= 26) {
                cmb.q(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.n;
        if (colorStateList != null) {
            if (z2) {
                ((buc) menuItem).setIconTintList(colorStateList);
            } else if (Build.VERSION.SDK_INT >= 26) {
                cmb.d(menuItem, colorStateList);
            }
        }
    }
}

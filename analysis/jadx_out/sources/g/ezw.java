package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import cn.trinea.android.developertools.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class ezw {

    /* renamed from: b, reason: collision with root package name */
    public static ezw f16433b;

    /* renamed from: d, reason: collision with root package name */
    public final WeakHashMap f16435d = new WeakHashMap(0);

    /* renamed from: e, reason: collision with root package name */
    public TypedValue f16436e;

    /* renamed from: f, reason: collision with root package name */
    public WeakHashMap f16437f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f16438g;
    public bcp h;
    public gob i;
    public daw j;

    /* renamed from: a, reason: collision with root package name */
    public static final PorterDuff.Mode f16432a = PorterDuff.Mode.SRC_IN;

    /* renamed from: c, reason: collision with root package name */
    public static final zb f16434c = new zb(6);

    public static synchronized PorterDuffColorFilter k(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (ezw.class) {
            zb zbVar = f16434c;
            zbVar.getClass();
            int i2 = (31 + i) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) zbVar.x(Integer.valueOf(mode.hashCode() + i2));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
            }
        }
        return porterDuffColorFilter;
    }

    public static synchronized ezw l() {
        ezw ezwVar;
        synchronized (ezw.class) {
            try {
                if (f16433b == null) {
                    ezw ezwVar2 = new ezw();
                    f16433b = ezwVar2;
                    m(ezwVar2);
                }
                ezwVar = f16433b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ezwVar;
    }

    public static void m(ezw ezwVar) {
        if (Build.VERSION.SDK_INT < 24) {
            ezwVar.r("vector", new fnj(3));
            ezwVar.r("animated-vector", new fnj(2));
            ezwVar.r("animated-selector", new fnj(1));
            ezwVar.r("drawable", new fnj(0));
        }
    }

    public final Drawable n(Context context, int i) {
        int next;
        bcp bcpVar = this.h;
        if (bcpVar == null || bcpVar.isEmpty()) {
            return null;
        }
        gob gobVar = this.i;
        if (gobVar != null) {
            String str = (String) gobVar.f(i);
            if ("appcompat_skip_skip".equals(str)) {
                return null;
            }
            if (str != null && this.h.get(str) == null) {
                return null;
            }
        } else {
            this.i = new gob();
        }
        if (this.f16436e == null) {
            this.f16436e = new TypedValue();
        }
        TypedValue typedValue = this.f16436e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable q = q(context, j);
        if (q != null) {
            return q;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.i.g(i, name);
                fnj fnjVar = (fnj) this.h.get(name);
                if (fnjVar != null) {
                    q = fnjVar.b(context, xml, asAttributeSet, context.getTheme());
                }
                if (q != null) {
                    q.setChangingConfigurations(typedValue.changingConfigurations);
                    v(context, j, q);
                }
            } catch (Exception e2) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e2);
            }
        }
        if (q == null) {
            this.i.g(i, "appcompat_skip_skip");
        }
        return q;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Drawable o(Context context, int i, boolean z, Drawable drawable) {
        int i2;
        int i3;
        boolean z2;
        ColorStateList u = u(context, i);
        PorterDuff.Mode mode = null;
        if (u != null) {
            Drawable aw = dzm.aw(drawable.mutate());
            aw.setTintList(u);
            if (this.j != null && i == R.drawable.abc_switch_thumb_material) {
                mode = PorterDuff.Mode.MULTIPLY;
            }
            if (mode != null) {
                aw.setTintMode(mode);
            }
            return aw;
        }
        if (this.j != null) {
            if (i == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int k = fgt.k(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode2 = cfl.f12788a;
                daw.j(findDrawableByLayerId, k, mode2);
                daw.j(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), fgt.k(context, R.attr.colorControlNormal), mode2);
                daw.j(layerDrawable.findDrawableByLayerId(android.R.id.progress), fgt.k(context, R.attr.colorControlActivated), mode2);
                return drawable;
            }
            if (i == R.drawable.abc_ratingbar_material || i == R.drawable.abc_ratingbar_indicator_material || i == R.drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                Drawable findDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
                int j = fgt.j(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode3 = cfl.f12788a;
                daw.j(findDrawableByLayerId2, j, mode3);
                daw.j(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), fgt.k(context, R.attr.colorControlActivated), mode3);
                daw.j(layerDrawable2.findDrawableByLayerId(android.R.id.progress), fgt.k(context, R.attr.colorControlActivated), mode3);
                return drawable;
            }
        }
        daw dawVar = this.j;
        boolean z3 = false;
        if (dawVar != null) {
            PorterDuff.Mode mode4 = cfl.f12788a;
            if (daw.l(i, (int[]) dawVar.f13886e)) {
                i2 = R.attr.colorControlNormal;
            } else if (daw.l(i, (int[]) dawVar.f13882a)) {
                i2 = R.attr.colorControlActivated;
            } else {
                if (daw.l(i, (int[]) dawVar.f13883b)) {
                    mode4 = PorterDuff.Mode.MULTIPLY;
                } else if (i == R.drawable.abc_list_divider_mtrl_alpha) {
                    i3 = Math.round(40.8f);
                    i2 = android.R.attr.colorForeground;
                    z2 = true;
                    if (z2) {
                        Drawable mutate = drawable.mutate();
                        mutate.setColorFilter(cfl.g(fgt.k(context, i2), mode4));
                        if (i3 != -1) {
                            mutate.setAlpha(i3);
                        }
                        z3 = true;
                    }
                } else if (i != R.drawable.abc_dialog_material_background) {
                    i2 = 0;
                    i3 = -1;
                    z2 = false;
                    if (z2) {
                    }
                }
                i2 = android.R.attr.colorBackground;
            }
            i3 = -1;
            z2 = true;
            if (z2) {
            }
        }
        if (z3 || !z) {
            return drawable;
        }
        return null;
    }

    public final synchronized void p(Context context) {
        asv asvVar = (asv) this.f16435d.get(context);
        if (asvVar != null) {
            asvVar.e();
        }
    }

    public final synchronized Drawable q(Context context, long j) {
        asv asvVar = (asv) this.f16435d.get(context);
        if (asvVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) asvVar.i(j);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int as = erl.as(asvVar.f10776d, asvVar.f10774b, j);
            if (as >= 0) {
                Object[] objArr = asvVar.f10773a;
                Object obj = objArr[as];
                Object obj2 = dyd.r;
                if (obj != obj2) {
                    objArr[as] = obj2;
                    asvVar.f10775c = true;
                }
            }
        }
        return null;
    }

    public final void r(String str, fnj fnjVar) {
        if (this.h == null) {
            this.h = new bcp(0);
        }
        this.h.put(str, fnjVar);
    }

    public final synchronized Drawable s(Context context, int i) {
        return x(context, i, false);
    }

    public final synchronized void t(daw dawVar) {
        this.j = dawVar;
    }

    public final synchronized ColorStateList u(Context context, int i) {
        ColorStateList colorStateList;
        gob gobVar;
        WeakHashMap weakHashMap = this.f16437f;
        ColorStateList colorStateList2 = null;
        colorStateList = (weakHashMap == null || (gobVar = (gob) weakHashMap.get(context)) == null) ? null : (ColorStateList) gobVar.f(i);
        if (colorStateList == null) {
            daw dawVar = this.j;
            if (dawVar != null) {
                colorStateList2 = dawVar.o(context, i);
            }
            if (colorStateList2 != null) {
                if (this.f16437f == null) {
                    this.f16437f = new WeakHashMap();
                }
                gob gobVar2 = (gob) this.f16437f.get(context);
                if (gobVar2 == null) {
                    gobVar2 = new gob();
                    this.f16437f.put(context, gobVar2);
                }
                gobVar2.g(i, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    public final synchronized void v(Context context, long j, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                asv asvVar = (asv) this.f16435d.get(context);
                if (asvVar == null) {
                    asvVar = new asv();
                    this.f16435d.put(context, asvVar);
                }
                asvVar.l(j, new WeakReference(constantState));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Drawable w(Context context, int i) {
        if (this.f16436e == null) {
            this.f16436e = new TypedValue();
        }
        TypedValue typedValue = this.f16436e;
        context.getResources().getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable q = q(context, j);
        if (q != null) {
            return q;
        }
        LayerDrawable layerDrawable = null;
        if (this.j != null) {
            if (i == R.drawable.abc_cab_background_top_material) {
                layerDrawable = new LayerDrawable(new Drawable[]{s(context, R.drawable.abc_cab_background_internal_bg), s(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i == R.drawable.abc_ratingbar_material) {
                layerDrawable = daw.m(this, context, R.dimen.abc_star_big);
            } else if (i == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawable = daw.m(this, context, R.dimen.abc_star_medium);
            } else if (i == R.drawable.abc_ratingbar_small_material) {
                layerDrawable = daw.m(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            v(context, j, layerDrawable);
        }
        return layerDrawable;
    }

    public final synchronized Drawable x(Context context, int i, boolean z) {
        Drawable n;
        try {
            if (!this.f16438g) {
                this.f16438g = true;
                Drawable s = s(context, R.drawable.abc_vector_test);
                if (s == null || (!(s instanceof eia) && !"android.graphics.drawable.VectorDrawable".equals(s.getClass().getName()))) {
                    this.f16438g = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            n = n(context, i);
            if (n == null) {
                n = w(context, i);
            }
            if (n == null) {
                n = context.getDrawable(i);
            }
            if (n != null) {
                n = o(context, i, z, n);
            }
            if (n != null) {
                edd.d(n);
            }
        } catch (Throwable th) {
            throw th;
        }
        return n;
    }
}

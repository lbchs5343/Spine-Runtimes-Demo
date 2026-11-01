package g;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import com.bykv.vk.component.ttvideo.player.C;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class cfi implements erj {
    public static final Method m;
    public static final Method n;
    public static final Method o;
    public final Context af;
    public final ui ag;
    public Rect ah;
    public boolean ai;
    public ListAdapter aj;
    public bva ak;
    public AdapterView.OnItemSelectedListener am;
    public int ao;
    public AdapterView.OnItemClickListener q;
    public int s;
    public boolean t;
    public final Handler u;
    public View v;
    public boolean w;
    public bgv x;
    public boolean z;
    public final int ac = -2;
    public int ad = -2;
    public final int p = 1002;
    public int y = 0;
    public final int an = he.UNDEFINED_ITEM_ID;
    public final fll ae = new fll(this, 1);

    /* renamed from: ab, reason: collision with root package name */
    public final bcr f12781ab = new bcr(2, this);
    public final ebf r = new ebf(this);
    public final fll aa = new fll(this, 0);
    public final Rect al = new Rect();

    static {
        int i = Build.VERSION.SDK_INT;
        Class cls = Boolean.TYPE;
        if (i <= 28) {
            try {
                o = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", cls);
            } catch (NoSuchMethodException unused) {
            }
            try {
                m = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                n = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, cls);
            } catch (NoSuchMethodException unused3) {
            }
        }
    }

    public cfi(Context context, AttributeSet attributeSet, int i, int i2) {
        int resourceId;
        this.af = context;
        this.u = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, acs.f9998d, i, 0);
        this.ao = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.s = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.ai = true;
        }
        obtainStyledAttributes.recycle();
        ui uiVar = new ui(context, attributeSet, i, 0);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, acs.o, i, 0);
        if (obtainStyledAttributes2.hasValue(2)) {
            byh.ai(uiVar, obtainStyledAttributes2.getBoolean(2, false));
        }
        uiVar.setBackgroundDrawable((!obtainStyledAttributes2.hasValue(0) || (resourceId = obtainStyledAttributes2.getResourceId(0, 0)) == 0) ? obtainStyledAttributes2.getDrawable(0) : fso.ai(context, resourceId));
        obtainStyledAttributes2.recycle();
        this.ag = uiVar;
        uiVar.setInputMethodMode(1);
    }

    public final void a(Drawable drawable) {
        this.ag.setBackgroundDrawable(drawable);
    }

    public final void ap(int i) {
        Drawable background = this.ag.getBackground();
        if (background == null) {
            this.ad = i;
            return;
        }
        Rect rect = this.al;
        background.getPadding(rect);
        this.ad = rect.left + rect.right + i;
    }

    @Override // g.erj
    public final bgv aq() {
        return this.x;
    }

    public final int d() {
        if (this.ai) {
            return this.s;
        }
        return 0;
    }

    @Override // g.erj
    public final void dismiss() {
        ui uiVar = this.ag;
        uiVar.dismiss();
        uiVar.setContentView(null);
        this.x = null;
        this.u.removeCallbacks(this.ae);
    }

    public final Drawable e() {
        return this.ag.getBackground();
    }

    public final int f() {
        return this.ao;
    }

    public bgv g(Context context, boolean z) {
        return new bgv(context, z);
    }

    public void h(ListAdapter listAdapter) {
        bva bvaVar = this.ak;
        if (bvaVar == null) {
            this.ak = new bva(0, this);
        } else {
            ListAdapter listAdapter2 = this.aj;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(bvaVar);
            }
        }
        this.aj = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.ak);
        }
        bgv bgvVar = this.x;
        if (bgvVar != null) {
            bgvVar.setAdapter(this.aj);
        }
    }

    public final void i(int i) {
        this.s = i;
        this.ai = true;
    }

    @Override // g.erj
    public final boolean isShowing() {
        return this.ag.isShowing();
    }

    public final void k(int i) {
        this.ao = i;
    }

    @Override // g.erj
    public final void show() {
        int i;
        int a2;
        int paddingBottom;
        bgv bgvVar;
        bgv bgvVar2 = this.x;
        Context context = this.af;
        ui uiVar = this.ag;
        if (bgvVar2 == null) {
            bgv g2 = g(context, !this.t);
            this.x = g2;
            g2.setAdapter(this.aj);
            this.x.setOnItemClickListener(this.q);
            this.x.setFocusable(true);
            this.x.setFocusableInTouchMode(true);
            this.x.setOnItemSelectedListener(new fgc(this));
            this.x.setOnScrollListener(this.r);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.am;
            if (onItemSelectedListener != null) {
                this.x.setOnItemSelectedListener(onItemSelectedListener);
            }
            uiVar.setContentView(this.x);
        }
        Drawable background = uiVar.getBackground();
        Rect rect = this.al;
        if (background != null) {
            background.getPadding(rect);
            int i2 = rect.top;
            i = rect.bottom + i2;
            if (!this.ai) {
                this.s = -i2;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        boolean z = uiVar.getInputMethodMode() == 2;
        View view = this.v;
        int i3 = this.s;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = n;
            if (method != null) {
                try {
                    a2 = ((Integer) method.invoke(uiVar, view, Integer.valueOf(i3), Boolean.valueOf(z))).intValue();
                } catch (Exception unused) {
                }
            }
            a2 = uiVar.getMaxAvailableHeight(view, i3);
        } else {
            a2 = gqb.a(uiVar, view, i3, z);
        }
        int i4 = this.ac;
        if (i4 == -1) {
            paddingBottom = a2 + i;
        } else {
            int i5 = this.ad;
            int m2 = this.x.m(i5 != -2 ? i5 != -1 ? View.MeasureSpec.makeMeasureSpec(i5, C.ENCODING_PCM_32BIT) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), C.ENCODING_PCM_32BIT) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), a2);
            paddingBottom = m2 + (m2 > 0 ? this.x.getPaddingBottom() + this.x.getPaddingTop() + i : 0);
        }
        boolean z2 = this.ag.getInputMethodMode() == 2;
        byh.ag(uiVar, this.p);
        if (uiVar.isShowing()) {
            if (this.v.isAttachedToWindow()) {
                int i6 = this.ad;
                if (i6 == -1) {
                    i6 = -1;
                } else if (i6 == -2) {
                    i6 = this.v.getWidth();
                }
                if (i4 == -1) {
                    i4 = z2 ? paddingBottom : -1;
                    if (z2) {
                        uiVar.setWidth(this.ad == -1 ? -1 : 0);
                        uiVar.setHeight(0);
                    } else {
                        uiVar.setWidth(this.ad == -1 ? -1 : 0);
                        uiVar.setHeight(-1);
                    }
                } else if (i4 == -2) {
                    i4 = paddingBottom;
                }
                uiVar.setOutsideTouchable(true);
                int i7 = i6;
                View view2 = this.v;
                int i8 = this.ao;
                int i9 = this.s;
                int i10 = i7 < 0 ? -1 : i7;
                if (i4 < 0) {
                    i4 = -1;
                }
                uiVar.update(view2, i8, i9, i10, i4);
                return;
            }
            return;
        }
        int i11 = this.ad;
        if (i11 == -1) {
            i11 = -1;
        } else if (i11 == -2) {
            i11 = this.v.getWidth();
        }
        if (i4 == -1) {
            i4 = -1;
        } else if (i4 == -2) {
            i4 = paddingBottom;
        }
        uiVar.setWidth(i11);
        uiVar.setHeight(i4);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = o;
            if (method2 != null) {
                try {
                    method2.invoke(uiVar, Boolean.TRUE);
                } catch (Exception unused2) {
                }
            }
        } else {
            dzi.b(uiVar, true);
        }
        uiVar.setOutsideTouchable(true);
        uiVar.setTouchInterceptor(this.f12781ab);
        if (this.z) {
            byh.ai(uiVar, this.w);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = m;
            if (method3 != null) {
                try {
                    method3.invoke(uiVar, this.ah);
                } catch (Exception e2) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e2);
                }
            }
        } else {
            dzi.a(uiVar, this.ah);
        }
        uiVar.showAsDropDown(this.v, this.ao, this.s, this.y);
        this.x.setSelection(-1);
        if ((!this.t || this.x.isInTouchMode()) && (bgvVar = this.x) != null) {
            bgvVar.setListSelectionHidden(true);
            bgvVar.requestLayout();
        }
        if (this.t) {
            return;
        }
        this.u.post(this.aa);
    }
}

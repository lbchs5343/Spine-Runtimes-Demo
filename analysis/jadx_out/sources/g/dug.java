package g;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import android.util.StateSet;

/* loaded from: classes.dex */
public final class dug extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public int f14815a;
    public int aa;

    /* renamed from: ab, reason: collision with root package name */
    public boolean f14816ab;
    public boolean ac;
    public boolean ad;
    public int ae;
    public asv af;
    public PorterDuff.Mode ag;
    public int ah;
    public Drawable[] ai;
    public boolean aj;

    /* renamed from: b, reason: collision with root package name */
    public int f14817b;

    /* renamed from: c, reason: collision with root package name */
    public Rect f14818c;

    /* renamed from: d, reason: collision with root package name */
    public int[][] f14819d;

    /* renamed from: e, reason: collision with root package name */
    public int f14820e;

    /* renamed from: f, reason: collision with root package name */
    public int f14821f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f14822g;
    public int h;
    public int i;
    public ColorFilter j;
    public boolean k;
    public int l;
    public final cpy m;
    public boolean n;
    public ColorStateList o;
    public boolean p;
    public boolean q;
    public boolean r;
    public SparseArray s;
    public gob t;
    public int u;
    public int v;
    public boolean w;
    public boolean x;
    public Resources y;
    public boolean z;

    public dug(dug dugVar, fam famVar, Resources resources) {
        this.x = false;
        this.k = false;
        this.r = true;
        this.f14821f = 0;
        this.f14815a = 0;
        this.m = famVar;
        this.y = resources != null ? resources : dugVar != null ? dugVar.y : null;
        int i = dugVar != null ? dugVar.ae : 0;
        int i2 = cpy.f13305a;
        i = resources != null ? resources.getDisplayMetrics().densityDpi : i;
        i = i == 0 ? 160 : i;
        this.ae = i;
        if (dugVar != null) {
            this.i = dugVar.i;
            this.l = dugVar.l;
            this.n = true;
            this.q = true;
            this.x = dugVar.x;
            this.k = dugVar.k;
            this.r = dugVar.r;
            this.ah = dugVar.ah;
            this.f14821f = dugVar.f14821f;
            this.f14815a = dugVar.f14815a;
            this.f14816ab = dugVar.f14816ab;
            this.j = dugVar.j;
            this.p = dugVar.p;
            this.o = dugVar.o;
            this.ag = dugVar.ag;
            this.ad = dugVar.ad;
            this.f14822g = dugVar.f14822g;
            if (dugVar.ae == i) {
                if (dugVar.z) {
                    this.f14818c = dugVar.f14818c != null ? new Rect(dugVar.f14818c) : null;
                    this.z = true;
                }
                if (dugVar.w) {
                    this.h = dugVar.h;
                    this.f14820e = dugVar.f14820e;
                    this.v = dugVar.v;
                    this.aa = dugVar.aa;
                    this.w = true;
                }
            }
            if (dugVar.aj) {
                this.u = dugVar.u;
                this.aj = true;
            }
            if (dugVar.ac) {
                this.ac = true;
            }
            Drawable[] drawableArr = dugVar.ai;
            this.ai = new Drawable[drawableArr.length];
            this.f14817b = dugVar.f14817b;
            SparseArray sparseArray = dugVar.s;
            if (sparseArray != null) {
                this.s = sparseArray.clone();
            } else {
                this.s = new SparseArray(this.f14817b);
            }
            int i3 = this.f14817b;
            for (int i4 = 0; i4 < i3; i4++) {
                Drawable drawable = drawableArr[i4];
                if (drawable != null) {
                    Drawable.ConstantState constantState = drawable.getConstantState();
                    if (constantState != null) {
                        this.s.put(i4, constantState);
                    } else {
                        this.ai[i4] = drawableArr[i4];
                    }
                }
            }
        } else {
            this.ai = new Drawable[10];
            this.f14817b = 0;
        }
        if (dugVar != null) {
            this.f14819d = dugVar.f14819d;
        } else {
            this.f14819d = new int[this.ai.length][];
        }
        if (dugVar != null) {
            this.af = dugVar.af;
            this.t = dugVar.t;
        } else {
            this.af = new asv();
            this.t = new gob();
        }
    }

    public final Drawable ak(int i) {
        int indexOfKey;
        Drawable drawable = this.ai[i];
        if (drawable != null) {
            return drawable;
        }
        SparseArray sparseArray = this.s;
        if (sparseArray == null || (indexOfKey = sparseArray.indexOfKey(i)) < 0) {
            return null;
        }
        Drawable newDrawable = ((Drawable.ConstantState) this.s.valueAt(indexOfKey)).newDrawable(this.y);
        if (Build.VERSION.SDK_INT >= 23) {
            dzm.bb(newDrawable, this.ah);
        }
        Drawable mutate = newDrawable.mutate();
        mutate.setCallback(this.m);
        this.ai[i] = mutate;
        this.s.removeAt(indexOfKey);
        if (this.s.size() == 0) {
            this.s = null;
        }
        return mutate;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public final int al(int i) {
        ?? r5;
        if (i < 0) {
            return 0;
        }
        gob gobVar = this.t;
        int i2 = 0;
        int w = erl.w(gobVar.f18483b, i, gobVar.f18485d);
        if (w >= 0 && (r5 = gobVar.f18482a[w]) != bfc.f11438c) {
            i2 = r5;
        }
        return i2.intValue();
    }

    public final int am(Drawable drawable) {
        int i = this.f14817b;
        if (i >= this.ai.length) {
            int i2 = i + 10;
            Drawable[] drawableArr = new Drawable[i2];
            Drawable[] drawableArr2 = this.ai;
            if (drawableArr2 != null) {
                System.arraycopy(drawableArr2, 0, drawableArr, 0, i);
            }
            this.ai = drawableArr;
            int[][] iArr = new int[i2][];
            System.arraycopy(this.f14819d, 0, iArr, 0, i);
            this.f14819d = iArr;
        }
        drawable.mutate();
        drawable.setVisible(false, true);
        drawable.setCallback(this.m);
        this.ai[i] = drawable;
        this.f14817b++;
        this.l = drawable.getChangingConfigurations() | this.l;
        this.aj = false;
        this.ac = false;
        this.f14818c = null;
        this.z = false;
        this.w = false;
        this.n = false;
        return i;
    }

    public final int an(int[] iArr) {
        int[][] iArr2 = this.f14819d;
        int i = this.f14817b;
        for (int i2 = 0; i2 < i; i2++) {
            if (StateSet.stateSetMatches(iArr2[i2], iArr)) {
                return i2;
            }
        }
        return -1;
    }

    public final void ao() {
        this.w = true;
        ap();
        int i = this.f14817b;
        Drawable[] drawableArr = this.ai;
        this.f14820e = -1;
        this.h = -1;
        this.aa = 0;
        this.v = 0;
        for (int i2 = 0; i2 < i; i2++) {
            Drawable drawable = drawableArr[i2];
            int intrinsicWidth = drawable.getIntrinsicWidth();
            if (intrinsicWidth > this.h) {
                this.h = intrinsicWidth;
            }
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicHeight > this.f14820e) {
                this.f14820e = intrinsicHeight;
            }
            int minimumWidth = drawable.getMinimumWidth();
            if (minimumWidth > this.v) {
                this.v = minimumWidth;
            }
            int minimumHeight = drawable.getMinimumHeight();
            if (minimumHeight > this.aa) {
                this.aa = minimumHeight;
            }
        }
    }

    public final void ap() {
        SparseArray sparseArray = this.s;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i = 0; i < size; i++) {
                int keyAt = this.s.keyAt(i);
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.s.valueAt(i);
                Drawable[] drawableArr = this.ai;
                Drawable newDrawable = constantState.newDrawable(this.y);
                if (Build.VERSION.SDK_INT >= 23) {
                    dzm.bb(newDrawable, this.ah);
                }
                Drawable mutate = newDrawable.mutate();
                mutate.setCallback(this.m);
                drawableArr[keyAt] = mutate;
            }
            this.s = null;
        }
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final boolean canApplyTheme() {
        int i = this.f14817b;
        Drawable[] drawableArr = this.ai;
        for (int i2 = 0; i2 < i; i2++) {
            Drawable drawable = drawableArr[i2];
            if (drawable == null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) this.s.get(i2);
                if (constantState != null && constantState.canApplyTheme()) {
                    return true;
                }
            } else if (drawable.canApplyTheme()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return this.i | this.l;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable() {
        return new fam(this, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final Drawable newDrawable(Resources resources) {
        return new fam(this, resources);
    }
}

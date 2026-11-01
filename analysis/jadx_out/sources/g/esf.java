package g;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import cn.trinea.android.developertools.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class esf implements us {
    public int aa;
    public boolean ac;
    public boolean ad;
    public eao i;
    public int j;
    public csq k;
    public fhk m;
    public int n;
    public Drawable o;
    public ftn p;
    public boolean q;
    public boolean r;
    public gfh s;
    public csq t;
    public final LayoutInflater u;
    public caf v;
    public final Context x;
    public ena y;
    public Context z;
    public final int ae = R.layout.abc_action_menu_layout;
    public final int l = R.layout.abc_action_menu_item_layout;
    public final SparseBooleanArray w = new SparseBooleanArray();

    /* renamed from: ab, reason: collision with root package name */
    public final emr f16080ab = new emr(2, this);

    public esf(Context context) {
        this.x = context;
        this.u = LayoutInflater.from(context);
    }

    @Override // g.us
    public final boolean a(far farVar) {
        return false;
    }

    public final boolean af() {
        csq csqVar = this.t;
        return csqVar != null && csqVar.n();
    }

    public final boolean ag() {
        ftn ftnVar;
        if (!this.q || af() || (ftnVar = this.p) == null || this.i == null || this.s != null) {
            return false;
        }
        ftnVar.ao();
        if (ftnVar.s.isEmpty()) {
            return false;
        }
        gfh gfhVar = new gfh(4, this, new csq(this, this.z, this.p, this.y), false);
        this.s = gfhVar;
        ((View) this.i).post(gfhVar);
        return true;
    }

    public final boolean ah() {
        Object obj;
        gfh gfhVar = this.s;
        if (gfhVar != null && (obj = this.i) != null) {
            ((View) obj).removeCallbacks(gfhVar);
            this.s = null;
            return true;
        }
        csq csqVar = this.t;
        if (csqVar == null) {
            return false;
        }
        if (csqVar.n()) {
            csqVar.f12458g.dismiss();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r5v4, types: [g.ebq] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8 */
    public final View ai(far farVar, View view, ViewGroup viewGroup) {
        View actionView = farVar.getActionView();
        if (actionView == null || farVar.ah()) {
            ActionMenuItemView actionMenuItemView = view instanceof ebq ? (ebq) view : (ebq) this.u.inflate(this.l, viewGroup, false);
            actionMenuItemView.p(farVar);
            ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
            actionMenuItemView2.setItemInvoker((ActionMenuView) this.i);
            if (this.m == null) {
                this.m = new fhk(this);
            }
            actionMenuItemView2.setPopupCallback(this.m);
            actionView = actionMenuItemView;
        }
        actionView.setVisibility(farVar.m ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof jc)) {
            actionView.setLayoutParams(ActionMenuView.o(layoutParams));
        }
        return actionView;
    }

    @Override // g.us
    public final void b(caf cafVar) {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.us
    public final void c() {
        int i;
        ViewGroup viewGroup = (ViewGroup) this.i;
        ArrayList arrayList = null;
        boolean z = false;
        if (viewGroup != null) {
            ftn ftnVar = this.p;
            if (ftnVar != null) {
                ftnVar.ao();
                ArrayList ae = this.p.ae();
                int size = ae.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    far farVar = (far) ae.get(i2);
                    if ((farVar.ac & 32) == 32) {
                        View childAt = viewGroup.getChildAt(i);
                        far itemData = childAt instanceof ebq ? ((ebq) childAt).getItemData() : null;
                        View ai = ai(farVar, childAt, viewGroup);
                        if (farVar != itemData) {
                            ai.setPressed(false);
                            ai.jumpDrawablesToCurrentState();
                        }
                        if (ai != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) ai.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(ai);
                            }
                            ((ViewGroup) this.i).addView(ai, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.y) {
                    i++;
                } else {
                    viewGroup.removeViewAt(i);
                }
            }
        }
        ((View) this.i).requestLayout();
        ftn ftnVar2 = this.p;
        if (ftnVar2 != null) {
            ftnVar2.ao();
            ArrayList arrayList2 = ftnVar2.q;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                azw azwVar = ((far) arrayList2.get(i3)).z;
            }
        }
        ftn ftnVar3 = this.p;
        if (ftnVar3 != null) {
            ftnVar3.ao();
            arrayList = ftnVar3.s;
        }
        if (this.q && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z = !((far) arrayList.get(0)).m;
            } else if (size3 > 0) {
                z = true;
            }
        }
        if (z) {
            if (this.y == null) {
                this.y = new ena(this, this.x);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.y.getParent();
            if (viewGroup3 != this.i) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.y);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.i;
                ena enaVar = this.y;
                actionMenuView.getClass();
                jc p = ActionMenuView.p();
                p.f19465c = true;
                actionMenuView.addView(enaVar, p);
            }
        } else {
            ena enaVar2 = this.y;
            if (enaVar2 != null) {
                Object parent = enaVar2.getParent();
                Object obj = this.i;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.y);
                }
            }
        }
        ((ActionMenuView) this.i).setOverflowReserved(this.q);
    }

    @Override // g.us
    public final void d(ftn ftnVar, boolean z) {
        ah();
        csq csqVar = this.k;
        if (csqVar != null && csqVar.n()) {
            csqVar.f12458g.dismiss();
        }
        caf cafVar = this.v;
        if (cafVar != null) {
            cafVar.x(ftnVar, z);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // g.us
    public final boolean e(gyg gygVar) {
        boolean z;
        if (gygVar.hasVisibleItems()) {
            gyg gygVar2 = gygVar;
            while (true) {
                ftn ftnVar = gygVar2.aw;
                if (ftnVar == this.p) {
                    break;
                }
                gygVar2 = (gyg) ftnVar;
            }
            far farVar = gygVar2.ax;
            ViewGroup viewGroup = (ViewGroup) this.i;
            View view = null;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = viewGroup.getChildAt(i);
                    if ((childAt instanceof ebq) && ((ebq) childAt).getItemData() == farVar) {
                        view = childAt;
                        break;
                    }
                    i++;
                }
            }
            if (view != null) {
                gygVar.ax.getClass();
                int size = gygVar.m.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        z = false;
                        break;
                    }
                    MenuItem item = gygVar.getItem(i2);
                    if (item.isVisible() && item.getIcon() != null) {
                        z = true;
                        break;
                    }
                    i2++;
                }
                csq csqVar = new csq(this, this.z, gygVar, view);
                this.k = csqVar;
                csqVar.k = z;
                gox goxVar = csqVar.f12458g;
                if (goxVar != null) {
                    goxVar.af(z);
                }
                csq csqVar2 = this.k;
                if (!csqVar2.n()) {
                    if (csqVar2.f12455d == null) {
                        throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
                    }
                    csqVar2.l(0, 0, false, false);
                }
                caf cafVar = this.v;
                if (cafVar != null) {
                    cafVar.r(gygVar);
                }
                return true;
            }
        }
        return false;
    }

    @Override // g.us
    public final void f(Context context, ftn ftnVar) {
        this.z = context;
        LayoutInflater.from(context);
        this.p = ftnVar;
        Resources resources = context.getResources();
        if (!this.ad) {
            this.q = true;
        }
        int i = 2;
        this.aa = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
            i = 5;
        } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
            i = 4;
        } else if (i2 >= 360) {
            i = 3;
        }
        this.j = i;
        int i4 = this.aa;
        if (this.q) {
            if (this.y == null) {
                ena enaVar = new ena(this, this.x);
                this.y = enaVar;
                if (this.r) {
                    enaVar.setImageDrawable(this.o);
                    this.o = null;
                    this.r = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.y.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i4 -= this.y.getMeasuredWidth();
        } else {
            this.y = null;
        }
        this.n = i4;
        float f2 = resources.getDisplayMetrics().density;
    }

    @Override // g.us
    public final boolean g(far farVar) {
        return false;
    }

    @Override // g.us
    public final boolean h() {
        ArrayList arrayList;
        int i;
        int i2;
        boolean z;
        esf esfVar = this;
        ftn ftnVar = esfVar.p;
        if (ftnVar != null) {
            arrayList = ftnVar.ae();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i3 = esfVar.j;
        int i4 = esfVar.n;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) esfVar.i;
        int i5 = 0;
        boolean z2 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z = true;
            if (i5 >= i) {
                break;
            }
            far farVar = (far) arrayList.get(i5);
            int i8 = farVar.f16488e;
            if ((i8 & 2) == 2) {
                i6++;
            } else if ((i8 & 1) == 1) {
                i7++;
            } else {
                z2 = true;
            }
            if (esfVar.ac && farVar.m) {
                i3 = 0;
            }
            i5++;
        }
        if (esfVar.q && (z2 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = esfVar.w;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i) {
            far farVar2 = (far) arrayList.get(i10);
            int i12 = farVar2.f16488e;
            boolean z3 = (i12 & 2) == i2;
            int i13 = farVar2.w;
            if (z3) {
                View ai = esfVar.ai(farVar2, null, viewGroup);
                ai.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = ai.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z);
                }
                farVar2.ai(z);
            } else if ((i12 & 1) == z) {
                boolean z4 = sparseBooleanArray.get(i13);
                boolean z5 = (i9 > 0 || z4) && i4 > 0;
                if (z5) {
                    View ai2 = esfVar.ai(farVar2, null, viewGroup);
                    ai2.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = ai2.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i11 == 0) {
                        i11 = measuredWidth2;
                    }
                    z5 &= i4 + i11 > 0;
                }
                if (z5 && i13 != 0) {
                    sparseBooleanArray.put(i13, true);
                } else if (z4) {
                    sparseBooleanArray.put(i13, false);
                    for (int i14 = 0; i14 < i10; i14++) {
                        far farVar3 = (far) arrayList.get(i14);
                        if (farVar3.w == i13) {
                            if ((farVar3.ac & 32) == 32) {
                                i9++;
                            }
                            farVar3.ai(false);
                        }
                    }
                }
                if (z5) {
                    i9--;
                }
                farVar2.ai(z5);
            } else {
                farVar2.ai(false);
                i10++;
                i2 = 2;
                esfVar = this;
                z = true;
            }
            i10++;
            i2 = 2;
            esfVar = this;
            z = true;
        }
        return true;
    }
}

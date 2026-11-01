package g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class ctb extends gox implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public final int aa;
    public final alt i;
    public boolean j;
    public boolean k;
    public final int l;
    public ViewTreeObserver m;
    public final ftn o;
    public View p;
    public PopupWindow.OnDismissListener q;
    public final hen s;
    public final boolean t;
    public int u;
    public final Context w;
    public caf x;
    public boolean y;
    public View z;
    public final fhv v = new fhv(4, this);
    public final bwh n = new bwh(6, this);
    public int r = 0;

    public ctb(Context context, ftn ftnVar, View view, int i, boolean z) {
        this.w = context;
        this.o = ftnVar;
        this.t = z;
        this.s = new hen(ftnVar, LayoutInflater.from(context), z, R.layout.abc_popup_menu_item_layout);
        this.l = i;
        Resources resources = context.getResources();
        this.aa = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.p = view;
        this.i = new alt(context, null, i, 0);
        ftnVar.ap(this, context);
    }

    @Override // g.gox
    public final void ab(int i) {
        this.i.ao = i;
    }

    @Override // g.gox
    public final void ac(int i) {
        this.r = i;
    }

    @Override // g.gox
    public final void ad(View view) {
        this.p = view;
    }

    @Override // g.gox
    public final void ae(PopupWindow.OnDismissListener onDismissListener) {
        this.q = onDismissListener;
    }

    @Override // g.gox
    public final void af(boolean z) {
        this.s.f19345f = z;
    }

    @Override // g.gox
    public final void ag(ftn ftnVar) {
    }

    @Override // g.gox
    public final void ah(boolean z) {
        this.k = z;
    }

    @Override // g.gox
    public final void ai(int i) {
        this.i.i(i);
    }

    @Override // g.erj
    public final bgv aq() {
        return this.i.x;
    }

    @Override // g.us
    public final void b(caf cafVar) {
        this.x = cafVar;
    }

    @Override // g.us
    public final void c() {
        this.y = false;
        hen henVar = this.s;
        if (henVar != null) {
            henVar.notifyDataSetChanged();
        }
    }

    @Override // g.us
    public final void d(ftn ftnVar, boolean z) {
        if (ftnVar != this.o) {
            return;
        }
        dismiss();
        caf cafVar = this.x;
        if (cafVar != null) {
            cafVar.x(ftnVar, z);
        }
    }

    @Override // g.erj
    public final void dismiss() {
        if (isShowing()) {
            this.i.dismiss();
        }
    }

    @Override // g.us
    public final boolean e(gyg gygVar) {
        boolean z;
        if (gygVar.hasVisibleItems()) {
            byn bynVar = new byn(this.w, gygVar, this.z, this.t, this.l, 0);
            caf cafVar = this.x;
            bynVar.f12452a = cafVar;
            gox goxVar = bynVar.f12458g;
            if (goxVar != null) {
                goxVar.b(cafVar);
            }
            int size = gygVar.m.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    z = false;
                    break;
                }
                MenuItem item = gygVar.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                }
                i++;
            }
            bynVar.k = z;
            gox goxVar2 = bynVar.f12458g;
            if (goxVar2 != null) {
                goxVar2.af(z);
            }
            bynVar.i = this.q;
            this.q = null;
            this.o.at(false);
            alt altVar = this.i;
            int i2 = altVar.ao;
            int d2 = altVar.d();
            if ((Gravity.getAbsoluteGravity(this.r, this.p.getLayoutDirection()) & 7) == 5) {
                i2 += this.p.getWidth();
            }
            if (!bynVar.n()) {
                if (bynVar.f12455d != null) {
                    bynVar.l(i2, d2, true, true);
                }
            }
            caf cafVar2 = this.x;
            if (cafVar2 != null) {
                cafVar2.r(gygVar);
            }
            return true;
        }
        return false;
    }

    @Override // g.us
    public final boolean h() {
        return false;
    }

    @Override // g.erj
    public final boolean isShowing() {
        return !this.j && this.i.ag.isShowing();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.j = true;
        this.o.at(true);
        ViewTreeObserver viewTreeObserver = this.m;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.m = this.z.getViewTreeObserver();
            }
            this.m.removeGlobalOnLayoutListener(this.v);
            this.m = null;
        }
        this.z.removeOnAttachStateChangeListener(this.n);
        PopupWindow.OnDismissListener onDismissListener = this.q;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // g.erj
    public final void show() {
        View view;
        if (isShowing()) {
            return;
        }
        if (this.j || (view = this.p) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.z = view;
        alt altVar = this.i;
        altVar.ag.setOnDismissListener(this);
        altVar.q = this;
        altVar.t = true;
        altVar.ag.setFocusable(true);
        View view2 = this.z;
        boolean z = this.m == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.m = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.v);
        }
        view2.addOnAttachStateChangeListener(this.n);
        altVar.v = view2;
        altVar.y = this.r;
        boolean z2 = this.y;
        Context context = this.w;
        hen henVar = this.s;
        if (!z2) {
            this.u = gox.as(henVar, context, this.aa);
            this.y = true;
        }
        altVar.ap(this.u);
        altVar.ag.setInputMethodMode(2);
        Rect rect = this.ar;
        altVar.ah = rect != null ? new Rect(rect) : null;
        altVar.show();
        bgv bgvVar = altVar.x;
        bgvVar.setOnKeyListener(this);
        if (this.k) {
            ftn ftnVar = this.o;
            if (ftnVar.p != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) bgvVar, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(ftnVar.p);
                }
                frameLayout.setEnabled(false);
                bgvVar.addHeaderView(frameLayout, null, false);
            }
        }
        altVar.h(henVar);
        altVar.show();
    }
}

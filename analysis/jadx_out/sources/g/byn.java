package g;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public class byn {

    /* renamed from: a, reason: collision with root package name */
    public caf f12452a;

    /* renamed from: c, reason: collision with root package name */
    public final int f12454c;

    /* renamed from: d, reason: collision with root package name */
    public View f12455d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f12456e;

    /* renamed from: g, reason: collision with root package name */
    public gox f12458g;
    public final ftn h;
    public PopupWindow.OnDismissListener i;
    public final boolean j;
    public boolean k;

    /* renamed from: f, reason: collision with root package name */
    public int f12457f = 8388611;

    /* renamed from: b, reason: collision with root package name */
    public final awq f12453b = new awq(0, this);

    public byn(Context context, ftn ftnVar, View view, boolean z, int i, int i2) {
        this.f12456e = context;
        this.h = ftnVar;
        this.f12455d = view;
        this.j = z;
        this.f12454c = i;
    }

    public final void l(int i, int i2, boolean z, boolean z2) {
        gox m = m();
        m.ah(z2);
        if (z) {
            if ((Gravity.getAbsoluteGravity(this.f12457f, this.f12455d.getLayoutDirection()) & 7) == 5) {
                i -= this.f12455d.getWidth();
            }
            m.ab(i);
            m.ai(i2);
            int i3 = (int) ((this.f12456e.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            m.ar = new Rect(i - i3, i2 - i3, i + i3, i2 + i3);
        }
        m.show();
    }

    public final gox m() {
        gox ctbVar;
        if (this.f12458g == null) {
            Context context = this.f12456e;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                ctbVar = new ezq(context, this.f12455d, this.f12454c, this.j);
            } else {
                ctbVar = new ctb(this.f12456e, this.h, this.f12455d, this.f12454c, this.j);
            }
            ctbVar.ag(this.h);
            ctbVar.ae(this.f12453b);
            ctbVar.ad(this.f12455d);
            ctbVar.b(this.f12452a);
            ctbVar.af(this.k);
            ctbVar.ac(this.f12457f);
            this.f12458g = ctbVar;
        }
        return this.f12458g;
    }

    public final boolean n() {
        gox goxVar = this.f12458g;
        return goxVar != null && goxVar.isShowing();
    }

    public void o() {
        this.f12458g = null;
        PopupWindow.OnDismissListener onDismissListener = this.i;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }
}

package g;

import android.content.Context;
import android.os.Build;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class alt extends cfi implements apv {

    /* renamed from: b, reason: collision with root package name */
    public static final Method f10455b;

    /* renamed from: c, reason: collision with root package name */
    public aoy f10456c;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f10455b = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    @Override // g.cfi
    public final bgv g(Context context, boolean z) {
        els elsVar = new els(context, z);
        elsVar.setHoverListener(this);
        return elsVar;
    }

    @Override // g.apv
    public final void j(ftn ftnVar, far farVar) {
        aoy aoyVar = this.f10456c;
        if (aoyVar != null) {
            aoyVar.j(ftnVar, farVar);
        }
    }

    @Override // g.apv
    public final void l(ftn ftnVar, MenuItem menuItem) {
        aoy aoyVar = this.f10456c;
        if (aoyVar != null) {
            aoyVar.l(ftnVar, menuItem);
        }
    }
}

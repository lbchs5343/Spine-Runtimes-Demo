package g;

import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public abstract class guy extends dms implements fcd {
    public guy k;
    public boolean l = false;

    public abstract String g();

    public final void m() {
        synchronized (guy.class) {
            try {
                if (this.l) {
                    return;
                }
                if (bfc.ac(this)) {
                    h("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                    return;
                }
                synchronized (guy.class) {
                    this.l = true;
                }
                CharSequence e2 = fyt.e(this.k, "android.permission.SYSTEM_ALERT_WINDOW");
                guy guyVar = this.k;
                gqc gqcVar = new gqc(this);
                gqcVar.am(R.string.title_request_permission);
                ((die) gqcVar.z).m = getString(R.string.content_request_permission2, e2, g());
                gqcVar.ay(R.string.alert_dialog_ok, new gdc(this, 1));
                gqcVar.x(R.string.alert_dialog_cancel, new gdc(this, 0));
                ((die) gqcVar.z).f14220e = new du(3, this);
                eyt.ay(guyVar, gqcVar.r());
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

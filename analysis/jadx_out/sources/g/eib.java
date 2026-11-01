package g;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.TextView;
import cn.trinea.android.developertools.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class eib extends dms {
    public boolean ay = false;
    public boolean az = false;
    public boolean ba = true;
    public String bb;
    public eib bc;

    public static gqo bd(Activity activity, CharSequence charSequence, String str, DialogInterface.OnClickListener onClickListener, bxf bxfVar, du duVar) {
        Bundle bundle = new Bundle();
        bundle.putString(abn.EXTRA_TITLE, activity.getString(R.string.accessibility_permission_title));
        bundle.putString("message", eyt.bp(charSequence));
        bundle.putBoolean("message_is_html", true);
        int i = !fso.ar(activity) ? 1 : 0;
        dxu dxuVar = new dxu(onClickListener, activity, 1);
        String string = activity.getString(R.string.accessibility_by_manual);
        ads adsVar = new ads(activity, 0);
        String string2 = activity.getString(R.string.accessibility_by_root);
        dxu dxuVar2 = new dxu(bxfVar, activity, 0);
        String string3 = activity.getString(R.string.alert_dialog_cancel);
        if (!TextUtils.isEmpty(str)) {
            bundle.putString("adUnitId", eyt.bp(str));
        }
        du duVar2 = duVar != null ? new du(2, duVar) : null;
        gqo gqoVar = new gqo();
        TextView textView = gqoVar.f18592f;
        if (textView != null) {
            textView.setVisibility(0);
        }
        gqoVar.x(R.color.gray, dxuVar2, string3);
        gqoVar.h = 0;
        TextView textView2 = gqoVar.l;
        if (textView2 != null) {
            textView2.setVisibility(0);
        }
        gqoVar.z(R.color.gray, adsVar, string2);
        TextView textView3 = gqoVar.f18590d;
        if (textView3 != null) {
            textView3.setVisibility(0);
        }
        gqoVar.y(R.color.colorPrimary, dxuVar, string);
        gqoVar.f18591e = duVar2;
        gqoVar.m = 0;
        if (i >= 0) {
            gqoVar.w = i;
        }
        kj.t(activity, gqoVar, bundle, false);
        return gqoVar;
    }

    public abstract String aa();

    public abstract void ab();

    public void initData() {
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("accessibilityClassName");
            this.bb = stringExtra;
            if (TextUtils.isEmpty(stringExtra)) {
                ArrayList l = ern.l(this);
                if (acw.u(l)) {
                    erl.y("No accessibilityClassName");
                } else {
                    this.bb = (String) l.get(0);
                }
            }
        }
    }

    public boolean w() {
        synchronized (eib.class) {
            try {
                if (this.ay) {
                    return false;
                }
                if (ern.h(this, this.bb)) {
                    synchronized (eib.class) {
                        this.ay = false;
                    }
                    ab();
                    return true;
                }
                z();
                synchronized (eib.class) {
                    try {
                        this.ay = true;
                        this.az = true;
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                }
                this.ba = true;
                bd(this, aa(), "", new fgw(0, this), null, new du(1, this));
                return false;
            } catch (Throwable th3) {
                th = th3;
                while (true) {
                    try {
                        throw th;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
            }
        }
    }

    public abstract void z();
}

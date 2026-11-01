package g;

import android.content.Context;
import android.text.TextUtils;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import java.util.Iterator;
import ms.bz.bd.c.Pgl.pblb;
import ms.bz.bd.c.Pgl.pgla;
import ms.bz.bd.c.Pgl.r0;

/* loaded from: classes.dex */
public final class afn extends pblb.pgla {
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    public final Object a(Object obj, String str) {
        Context context = pgla.f21199a.f21200b;
        if (context == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(r0.b(context));
        try {
            Iterator<InputMethodInfo> it = ((InputMethodManager) context.getSystemService("input_method")).getInputMethodList().iterator();
            while (it.hasNext()) {
                String packageName = it.next().getPackageName();
                String str2 = context.getPackageManager().getApplicationInfo(packageName, 0).sourceDir;
                if (!TextUtils.isEmpty(packageName) && sb.indexOf(packageName) < 0) {
                    sb.append("[<!>]");
                    sb.append(str2);
                }
            }
        } catch (Throwable unused) {
        }
        return sb.toString();
    }
}

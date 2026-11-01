package c.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import g.fzn;

/* loaded from: classes.dex */
public class o0 extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (TextUtils.isEmpty(action)) {
                return;
            }
            if ("c.t.d.t.c.e".equals(action) || "c.t.d.l.v.e".equals(action)) {
                fzn.l(context).q(new Intent(action));
            }
        }
    }
}

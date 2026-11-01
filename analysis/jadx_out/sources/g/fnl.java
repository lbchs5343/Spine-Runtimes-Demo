package g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public abstract class fnl extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            gm.g(context, R.string.create_shortcut_success, intent.getStringExtra("shortcut_name"));
        }
    }
}

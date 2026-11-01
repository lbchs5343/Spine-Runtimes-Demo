package g;

import android.app.Service;
import android.content.Context;

/* loaded from: classes.dex */
public abstract class ghz extends Service {
    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(eg.ad(context));
    }
}

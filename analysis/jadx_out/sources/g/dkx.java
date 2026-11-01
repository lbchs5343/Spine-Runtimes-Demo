package g;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;

/* loaded from: classes.dex */
public abstract /* synthetic */ class dkx {
    public static /* bridge */ /* synthetic */ Class b() {
        return ShortcutManager.class;
    }

    public static /* synthetic */ void d() {
    }

    public static /* synthetic */ ShortcutInfo.Builder e(Context context, String str) {
        return new ShortcutInfo.Builder(context, str);
    }

    public static /* bridge */ /* synthetic */ ShortcutInfo o(Object obj) {
        return (ShortcutInfo) obj;
    }

    public static /* bridge */ /* synthetic */ ShortcutManager q(Object obj) {
        return (ShortcutManager) obj;
    }

    public static /* synthetic */ ShortcutInfo.Builder t(Activity activity, String str) {
        return new ShortcutInfo.Builder(activity, str);
    }
}

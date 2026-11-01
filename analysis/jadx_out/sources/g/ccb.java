package g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Binder;
import android.os.Process;

/* loaded from: classes3.dex */
public final class ccb {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12624a;

    public /* synthetic */ ccb(Context context) {
        this.f12624a = context;
    }

    public ApplicationInfo b(int i, String str) {
        return this.f12624a.getPackageManager().getApplicationInfo(str, i);
    }

    public PackageInfo c(int i, String str) {
        return this.f12624a.getPackageManager().getPackageInfo(str, i);
    }

    public boolean d() {
        String nameForUid;
        boolean isInstantApp;
        int callingUid = Binder.getCallingUid();
        int myUid = Process.myUid();
        Context context = this.f12624a;
        if (callingUid == myUid) {
            return ckd.bd(context);
        }
        if (!dyd.bj() || (nameForUid = context.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        isInstantApp = context.getPackageManager().isInstantApp(nameForUid);
        return isInstantApp;
    }
}

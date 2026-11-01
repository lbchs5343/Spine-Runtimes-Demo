package g;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.RemoteException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class eab {

    /* renamed from: a, reason: collision with root package name */
    public final byi f15169a;

    /* renamed from: b, reason: collision with root package name */
    public final ComponentName f15170b;

    public eab(byi byiVar, ComponentName componentName) {
        this.f15169a = byiVar;
        this.f15170b = componentName;
    }

    public static String c(Context context) {
        PackageManager packageManager = context.getPackageManager();
        ArrayList<String> arrayList = new ArrayList();
        ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://")), 0);
        if (resolveActivity != null) {
            String str = resolveActivity.activityInfo.packageName;
            ArrayList arrayList2 = new ArrayList(arrayList.size() + 1);
            arrayList2.add(str);
            arrayList = arrayList2;
        }
        Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
        for (String str2 : arrayList) {
            intent.setPackage(str2);
            if (packageManager.resolveService(intent, 0) != null) {
                return str2;
            }
        }
        return null;
    }

    public final bpr d(gwy gwyVar) {
        byi byiVar = this.f15169a;
        cfo cfoVar = new cfo(gwyVar);
        try {
            if (((hds) byiVar).f(cfoVar)) {
                return new bpr(byiVar, cfoVar, this.f15170b);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }
}

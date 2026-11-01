package g;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class xu extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ gqc f20321a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ cwz f20322b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f20323c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f20324d;

    public xu(cwz cwzVar, int i, boolean z, gqc gqcVar) {
        this.f20322b = cwzVar;
        this.f20323c = i;
        this.f20324d = z;
        this.f20321a = gqcVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        PackageManager packageManager = this.f20322b.x;
        if (packageManager != null) {
            List<PackageInfo> installedPackages = packageManager.getInstalledPackages(0);
            if (!acw.u(installedPackages)) {
                HashMap hashMap = new HashMap();
                try {
                    for (PackageInfo packageInfo : installedPackages) {
                        if (this.f20323c != this.f20322b.m) {
                            break;
                        }
                        auj ab2 = this.f20322b.ab(packageInfo, this.f20324d, false);
                        if (ab2 != null && !TextUtils.isEmpty(ab2.h)) {
                            hashMap.put(ab2.h, ab2);
                        }
                    }
                } catch (Exception unused) {
                }
                this.f20322b.o = hashMap;
                synchronized (haz.class) {
                    this.f20322b.w = false;
                    this.f20321a.onSuccess(null);
                }
                return;
            }
        }
        synchronized (haz.class) {
            this.f20322b.w = false;
            this.f20321a.a(null);
        }
    }
}

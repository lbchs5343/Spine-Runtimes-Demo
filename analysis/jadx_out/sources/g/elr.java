package g;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.os.Build;
import java.io.File;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class elr {

    /* renamed from: a, reason: collision with root package name */
    public static final frr f15772a = new frr();

    /* renamed from: b, reason: collision with root package name */
    public static final Object f15773b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static cuf f15774c = null;

    public static long d(Context context) {
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        return Build.VERSION.SDK_INT >= 33 ? crm.a(packageManager, context).lastUpdateTime : packageManager.getPackageInfo(context.getPackageName(), 0).lastUpdateTime;
    }

    public static cuf e() {
        cuf cufVar = new cuf(9);
        f15774c = cufVar;
        f15772a.p(cufVar);
        return f15774c;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(22:23|(1:92)(1:27)|28|(1:91)(1:32)|33|34|35|(2:76|77)(1:37)|38|(9:45|(1:49)|(1:69)(1:56)|57|(2:65|66)|61|62|63|64)|(1:73)(1:(1:75))|(1:49)|(1:51)|69|57|(1:59)|65|66|61|62|63|64) */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00c5, code lost:
    
        r5 = 327680;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void f(Context context, boolean z) {
        boolean z2;
        gwb e2;
        gwb gwbVar;
        int i;
        if (z || f15774c == null) {
            synchronized (f15773b) {
                if (!z) {
                    if (f15774c != null) {
                        return;
                    }
                }
                int i2 = 0;
                try {
                    AssetFileDescriptor openFd = context.getAssets().openFd("dexopt/baseline.prof");
                    try {
                        z2 = openFd.getLength() > 0;
                        openFd.close();
                    } finally {
                    }
                } catch (IOException unused) {
                    z2 = false;
                }
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 28 && i3 != 30) {
                    File file = new File(new File("/data/misc/profiles/ref/", context.getPackageName()), "primary.prof");
                    long length = file.length();
                    boolean z3 = file.exists() && length > 0;
                    File file2 = new File(new File("/data/misc/profiles/cur/0/", context.getPackageName()), "primary.prof");
                    long length2 = file2.length();
                    boolean z4 = file2.exists() && length2 > 0;
                    try {
                        long d2 = d(context);
                        File file3 = new File(context.getFilesDir(), "profileInstalled");
                        if (file3.exists()) {
                            try {
                                e2 = gwb.e(file3);
                            } catch (IOException unused2) {
                                e();
                                return;
                            }
                        } else {
                            e2 = null;
                        }
                        if (e2 != null && e2.f18859d == d2 && (i = e2.f18858c) != 2) {
                            i2 = i;
                            if (z && z4 && i2 != 1) {
                                i2 = 2;
                            }
                            gwbVar = new gwb(d2, 1, length2, (e2 == null && e2.f18858c == 2 && i2 == 1 && length < e2.f18856a) ? 3 : i2);
                            if (e2 != null || !e2.equals(gwbVar)) {
                                gwbVar.f(file3);
                            }
                            e();
                            return;
                        }
                        if (z3) {
                            i2 = 1;
                        } else if (z4) {
                            i2 = 2;
                        }
                        if (z) {
                            i2 = 2;
                        }
                        gwbVar = new gwb(d2, 1, length2, (e2 == null && e2.f18858c == 2 && i2 == 1 && length < e2.f18856a) ? 3 : i2);
                        if (e2 != null) {
                        }
                        gwbVar.f(file3);
                        e();
                        return;
                    } catch (PackageManager.NameNotFoundException unused3) {
                        e();
                        return;
                    }
                }
                e();
            }
        }
    }
}

package g;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes3.dex */
public final class awm {

    /* renamed from: a, reason: collision with root package name */
    public static awm f10975a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f10976b;

    /* renamed from: c, reason: collision with root package name */
    public volatile String f10977c;

    public awm(Context context) {
        this.f10976b = context.getApplicationContext();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0047 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean d(PackageInfo packageInfo, boolean z) {
        PackageInfo packageInfo2;
        if (z) {
            if (packageInfo == null) {
                packageInfo2 = null;
                if (packageInfo != null && packageInfo2.signatures != null) {
                    if ((!z ? f(packageInfo2, cze.f13804a) : f(packageInfo2, cze.f13804a[0])) == null) {
                        return true;
                    }
                }
                return false;
            }
            if ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName)) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z = (applicationInfo == null || (applicationInfo.flags & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA) == 0) ? false : true;
            }
        }
        packageInfo2 = packageInfo;
        if (packageInfo != null) {
            if ((!z ? f(packageInfo2, cze.f13804a) : f(packageInfo2, cze.f13804a[0])) == null) {
            }
        }
        return false;
    }

    public static awm e(Context context) {
        ckd.k(context);
        synchronized (awm.class) {
            try {
                if (f10975a == null) {
                    bq.f(context);
                    f10975a = new awm(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f10975a;
    }

    public static final cxm f(PackageInfo packageInfo, cxm... cxmVarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length != 1) {
            return null;
        }
        dig digVar = new dig(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < cxmVarArr.length; i++) {
            if (cxmVarArr[i].equals(digVar)) {
                return cxmVarArr[i];
            }
        }
        return null;
    }

    public final boolean g(int i) {
        gez gezVar;
        int length;
        boolean z;
        gez gezVar2;
        ApplicationInfo applicationInfo;
        gez gezVar3;
        ekj ekjVar;
        String[] packagesForUid = this.f10976b.getPackageManager().getPackagesForUid(i);
        if (packagesForUid == null || (length = packagesForUid.length) == 0) {
            gezVar = new gez(false, "no pkgs", (Exception) null);
        } else {
            gezVar = null;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    ckd.k(gezVar);
                    break;
                }
                String str = packagesForUid[i2];
                if (str == null) {
                    gezVar = new gez(false, "null pkg", (Exception) null);
                } else if (str.equals(this.f10977c)) {
                    gezVar = gez.f18007d;
                } else {
                    chc chcVar = bq.f11991c;
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            bq.h();
                            z = ((exy) bq.f11993e).zzi();
                        } finally {
                        }
                    } catch (RemoteException | eps e2) {
                        Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                        z = false;
                    }
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    if (z) {
                        boolean f2 = evp.f(this.f10976b);
                        allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            ckd.k(bq.f11990b);
                            try {
                                bq.h();
                                env envVar = new env(str, f2, false, new bpp(bq.f11990b), false, true);
                                try {
                                    exy exyVar = (exy) bq.f11993e;
                                    Parcel _cd = exyVar._cd();
                                    int i3 = bon.f11910a;
                                    _cd.writeInt(1);
                                    envVar.writeToParcel(_cd, 0);
                                    Parcel _ce = exyVar._ce(_cd, 6);
                                    ekjVar = (ekj) bon.b(_ce, ekj.CREATOR);
                                    _ce.recycle();
                                } catch (RemoteException e3) {
                                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e3);
                                    gezVar3 = new gez(false, "module call", (Exception) e3);
                                }
                            } catch (eps e4) {
                                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e4);
                                gezVar3 = new gez(false, "module init: ".concat(String.valueOf(e4.getMessage())), (Exception) e4);
                            }
                            if (ekjVar.zzb()) {
                                ekjVar.zzc();
                                gezVar2 = new gez(true, (String) null, (Exception) null);
                            } else {
                                String zza = ekjVar.zza();
                                PackageManager.NameNotFoundException nameNotFoundException = ekjVar.zzd() == 4 ? new PackageManager.NameNotFoundException() : null;
                                if (zza == null) {
                                    zza = "error checking package certificate";
                                }
                                ekjVar.zzc();
                                ekjVar.zzd();
                                gezVar3 = new gez(false, zza, (Exception) nameNotFoundException);
                                gezVar2 = gezVar3;
                            }
                        } finally {
                        }
                    } else {
                        try {
                            PackageInfo packageInfo = this.f10976b.getPackageManager().getPackageInfo(str, 64);
                            boolean f3 = evp.f(this.f10976b);
                            if (packageInfo == null) {
                                gezVar2 = new gez(false, "null pkg", (Exception) null);
                            } else {
                                Signature[] signatureArr = packageInfo.signatures;
                                if (signatureArr == null || signatureArr.length != 1) {
                                    gezVar2 = new gez(false, "single cert required", (Exception) null);
                                } else {
                                    dig digVar = new dig(packageInfo.signatures[0].toByteArray());
                                    String str2 = packageInfo.packageName;
                                    allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                                    try {
                                        gez g2 = bq.g(str2, digVar, f3, false);
                                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                                        if (g2.f18010g && (applicationInfo = packageInfo.applicationInfo) != null && (applicationInfo.flags & 2) != 0) {
                                            allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                                            try {
                                                gez g3 = bq.g(str2, digVar, false, true);
                                                StrictMode.setThreadPolicy(allowThreadDiskReads);
                                                if (g3.f18010g) {
                                                    gezVar2 = new gez(false, "debuggable release cert app rejected", (Exception) null);
                                                }
                                            } finally {
                                            }
                                        }
                                        gezVar2 = g2;
                                    } finally {
                                    }
                                }
                            }
                        } catch (PackageManager.NameNotFoundException e5) {
                            gezVar = new gez(false, "no pkg ".concat(str), (Exception) e5);
                        }
                    }
                    if (gezVar2.f18010g) {
                        this.f10977c = str;
                    }
                    gezVar = gezVar2;
                }
                if (gezVar.f18010g) {
                    break;
                }
                i2++;
            }
        }
        if (!gezVar.f18010g && Log.isLoggable("GoogleCertificatesRslt", 3)) {
            if (((Throwable) gezVar.f18008e) != null) {
                gezVar.c();
            } else {
                gezVar.c();
            }
        }
        return gezVar.f18010g;
    }
}

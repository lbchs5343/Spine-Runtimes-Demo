package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import g.acw;
import g.cro;
import g.cux;
import g.eie;
import g.elr;
import g.erl;
import g.fao;
import g.xh;
import g.xj;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {
    /* JADX WARN: Removed duplicated region for block: B:103:0x0271  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x00b4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x017c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0183 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.content.BroadcastReceiver
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        File codeCacheDir;
        Context createDeviceProtectedStorageContext;
        Context createDeviceProtectedStorageContext2;
        FileInputStream fileInputStream;
        xj[] xjVarArr;
        xj[] xjVarArr2;
        xj[] xjVarArr3;
        byte[] bArr;
        Object obj;
        ByteArrayInputStream byteArrayInputStream;
        FileOutputStream fileOutputStream;
        FileChannel channel;
        FileLock tryLock;
        boolean z;
        ByteArrayOutputStream byteArrayOutputStream;
        int i;
        fao faoVar;
        FileInputStream r;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (!"androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
                Bundle extras2 = intent.getExtras();
                if (extras2 != null) {
                    String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                    if (!"WRITE_SKIP_FILE".equals(string)) {
                        if ("DELETE_SKIP_FILE".equals(string)) {
                            new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                            setResultCode(11);
                            return;
                        }
                        return;
                    }
                    eie eieVar = new eie(15, this);
                    try {
                        cro.au(context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0), context.getFilesDir());
                        eieVar.r(10, null);
                        return;
                    } catch (PackageManager.NameNotFoundException e2) {
                        eieVar.r(7, e2);
                        return;
                    }
                }
                return;
            }
            if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
                eie eieVar2 = new eie(15, this);
                if (Build.VERSION.SDK_INT < 24) {
                    eieVar2.r(13, null);
                    return;
                } else {
                    Process.sendSignal(Process.myPid(), 10);
                    eieVar2.r(12, null);
                    return;
                }
            }
            if (!"androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) || (extras = intent.getExtras()) == null) {
                return;
            }
            String string2 = extras.getString("EXTRA_BENCHMARK_OPERATION");
            eie eieVar3 = new eie(15, this);
            if (!"DROP_SHADER_CACHE".equals(string2)) {
                eieVar3.r(16, null);
                return;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 34) {
                createDeviceProtectedStorageContext2 = context.createDeviceProtectedStorageContext();
                codeCacheDir = createDeviceProtectedStorageContext2.getCacheDir();
            } else if (i2 >= 24) {
                createDeviceProtectedStorageContext = context.createDeviceProtectedStorageContext();
                codeCacheDir = createDeviceProtectedStorageContext.getCodeCacheDir();
            } else {
                codeCacheDir = i2 == 23 ? context.getCodeCacheDir() : context.getCacheDir();
            }
            if (cux.al(codeCacheDir)) {
                eieVar3.r(14, null);
                return;
            } else {
                eieVar3.r(15, null);
                return;
            }
        }
        xh xhVar = new xh(1);
        eie eieVar4 = new eie(15, this);
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
        AssetManager assets = applicationContext.getAssets();
        String name = new File(applicationInfo.sourceDir).getName();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            File filesDir = context.getFilesDir();
            context.getPackageName();
            byte[] bArr2 = erl.u;
            File file = new File(new File("/data/misc/profiles/cur/0", packageName), "primary.prof");
            fao faoVar2 = new fao(assets, xhVar, eieVar4, name, file);
            byte[] bArr3 = (byte[]) faoVar2.f16479f;
            if (bArr3 == null) {
                faoVar2.s(3, Integer.valueOf(Build.VERSION.SDK_INT));
            } else {
                if (!file.exists()) {
                    try {
                        if (!file.createNewFile()) {
                            faoVar2.s(4, null);
                        }
                    } catch (IOException unused) {
                        faoVar2.s(4, null);
                    }
                } else if (!file.canWrite()) {
                    faoVar2.s(4, null);
                }
                faoVar2.f16476c = true;
                try {
                    try {
                        fileInputStream = faoVar2.r(assets, "dexopt/baseline.prof");
                    } catch (FileNotFoundException e3) {
                        eieVar4.r(6, e3);
                        fileInputStream = null;
                        if (fileInputStream != null) {
                        }
                        xjVarArr2 = (xj[]) faoVar2.f16477d;
                        if (xjVarArr2 != null) {
                        }
                        eie eieVar5 = (eie) faoVar2.f16478e;
                        xjVarArr3 = (xj[]) faoVar2.f16477d;
                        byte[] bArr4 = (byte[]) faoVar2.f16479f;
                        if (xjVarArr3 != null) {
                        }
                        bArr = (byte[]) faoVar2.f16480g;
                        if (bArr != null) {
                        }
                        z = false;
                        if (z) {
                        }
                        elr.f(context, z);
                    } catch (IOException e4) {
                        eieVar4.r(7, e4);
                        fileInputStream = null;
                        if (fileInputStream != null) {
                        }
                        xjVarArr2 = (xj[]) faoVar2.f16477d;
                        if (xjVarArr2 != null) {
                        }
                        eie eieVar52 = (eie) faoVar2.f16478e;
                        xjVarArr3 = (xj[]) faoVar2.f16477d;
                        byte[] bArr42 = (byte[]) faoVar2.f16479f;
                        if (xjVarArr3 != null) {
                        }
                        bArr = (byte[]) faoVar2.f16480g;
                        if (bArr != null) {
                        }
                        z = false;
                        if (z) {
                        }
                        elr.f(context, z);
                    }
                    if (fileInputStream != null) {
                        try {
                        } catch (IOException e5) {
                            eieVar4.r(7, e5);
                            try {
                                fileInputStream.close();
                            } catch (IOException e6) {
                                eieVar4.r(7, e6);
                            }
                            xjVarArr = null;
                            faoVar2.f16477d = xjVarArr;
                            xjVarArr2 = (xj[]) faoVar2.f16477d;
                            if (xjVarArr2 != null) {
                                try {
                                    r = faoVar2.r(assets, "dexopt/baseline.profm");
                                    if (r == null) {
                                    }
                                } catch (FileNotFoundException e7) {
                                    eieVar4.r(9, e7);
                                } catch (IOException e8) {
                                    eieVar4.r(7, e8);
                                } catch (IllegalStateException e9) {
                                    faoVar2.f16477d = null;
                                    eieVar4.r(8, e9);
                                }
                            }
                            eie eieVar522 = (eie) faoVar2.f16478e;
                            xjVarArr3 = (xj[]) faoVar2.f16477d;
                            byte[] bArr422 = (byte[]) faoVar2.f16479f;
                            if (xjVarArr3 != null) {
                                if (faoVar2.f16476c) {
                                }
                            }
                            bArr = (byte[]) faoVar2.f16480g;
                            if (bArr != null) {
                            }
                            z = false;
                            if (z) {
                            }
                            elr.f(context, z);
                        } catch (IllegalStateException e10) {
                            eieVar4.r(8, e10);
                            fileInputStream.close();
                            xjVarArr = null;
                            faoVar2.f16477d = xjVarArr;
                            xjVarArr2 = (xj[]) faoVar2.f16477d;
                            if (xjVarArr2 != null) {
                            }
                            eie eieVar5222 = (eie) faoVar2.f16478e;
                            xjVarArr3 = (xj[]) faoVar2.f16477d;
                            byte[] bArr4222 = (byte[]) faoVar2.f16479f;
                            if (xjVarArr3 != null) {
                            }
                            bArr = (byte[]) faoVar2.f16480g;
                            if (bArr != null) {
                            }
                            z = false;
                            if (z) {
                            }
                            elr.f(context, z);
                        }
                        if (!Arrays.equals(bArr2, acw.bg(fileInputStream, 4))) {
                            throw new IllegalStateException("Invalid magic");
                        }
                        xjVarArr = erl.an(fileInputStream, acw.bg(fileInputStream, 4), (String) faoVar2.f16475b);
                        try {
                            fileInputStream.close();
                        } catch (IOException e11) {
                            eieVar4.r(7, e11);
                        }
                        faoVar2.f16477d = xjVarArr;
                    }
                    xjVarArr2 = (xj[]) faoVar2.f16477d;
                    if (xjVarArr2 != null && (i = Build.VERSION.SDK_INT) >= 24 && (i >= 31 || i == 24 || i == 25)) {
                        r = faoVar2.r(assets, "dexopt/baseline.profm");
                        if (r == null) {
                            try {
                                if (!Arrays.equals(erl.p, acw.bg(r, 4))) {
                                    throw new IllegalStateException("Invalid magic");
                                }
                                faoVar2.f16477d = erl.ad(r, acw.bg(r, 4), bArr3, xjVarArr2);
                                r.close();
                                faoVar = faoVar2;
                                if (faoVar != null) {
                                    faoVar2 = faoVar;
                                }
                            } finally {
                            }
                        } else {
                            if (r != null) {
                                r.close();
                            }
                            faoVar = null;
                            if (faoVar != null) {
                            }
                        }
                    }
                    eie eieVar52222 = (eie) faoVar2.f16478e;
                    xjVarArr3 = (xj[]) faoVar2.f16477d;
                    byte[] bArr42222 = (byte[]) faoVar2.f16479f;
                    if (xjVarArr3 != null && bArr42222 != null) {
                        if (faoVar2.f16476c) {
                            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                        }
                        try {
                            byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                byteArrayOutputStream.write(bArr2);
                                byteArrayOutputStream.write(bArr42222);
                            } finally {
                            }
                        } catch (IOException e12) {
                            eieVar52222.r(7, e12);
                        } catch (IllegalStateException e13) {
                            eieVar52222.r(8, e13);
                        }
                        if (erl.at(byteArrayOutputStream, bArr42222, xjVarArr3)) {
                            faoVar2.f16480g = byteArrayOutputStream.toByteArray();
                            byteArrayOutputStream.close();
                            faoVar2.f16477d = null;
                        } else {
                            eieVar52222.r(5, null);
                            faoVar2.f16477d = null;
                            byteArrayOutputStream.close();
                        }
                    }
                    bArr = (byte[]) faoVar2.f16480g;
                    if (bArr != null) {
                        try {
                            if (!faoVar2.f16476c) {
                                throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                            }
                            try {
                                byteArrayInputStream = new ByteArrayInputStream(bArr);
                                try {
                                    fileOutputStream = new FileOutputStream((File) faoVar2.f16474a);
                                    try {
                                        channel = fileOutputStream.getChannel();
                                        try {
                                            tryLock = channel.tryLock();
                                        } finally {
                                        }
                                    } finally {
                                    }
                                } finally {
                                }
                            } catch (FileNotFoundException e14) {
                                obj = null;
                                try {
                                    faoVar2.s(6, e14);
                                    faoVar2.f16480g = obj;
                                    faoVar2.f16477d = obj;
                                    z = false;
                                    if (z) {
                                    }
                                    elr.f(context, z);
                                } catch (Throwable th) {
                                    th = th;
                                    faoVar2.f16480g = obj;
                                    faoVar2.f16477d = obj;
                                    throw th;
                                }
                            } catch (IOException e15) {
                                faoVar2.s(7, e15);
                                obj = null;
                                faoVar2.f16480g = obj;
                                faoVar2.f16477d = obj;
                                z = false;
                                if (z) {
                                }
                                elr.f(context, z);
                            }
                            if (tryLock != null) {
                                try {
                                    if (tryLock.isValid()) {
                                        byte[] bArr5 = new byte[512];
                                        while (true) {
                                            int read = byteArrayInputStream.read(bArr5);
                                            if (read <= 0) {
                                                break;
                                            } else {
                                                fileOutputStream.write(bArr5, 0, read);
                                            }
                                        }
                                        faoVar2.s(1, null);
                                        tryLock.close();
                                        channel.close();
                                        fileOutputStream.close();
                                        byteArrayInputStream.close();
                                        faoVar2.f16480g = null;
                                        faoVar2.f16477d = null;
                                        z = true;
                                        if (z) {
                                            cro.au(packageInfo, filesDir);
                                        }
                                        elr.f(context, z);
                                    }
                                } finally {
                                }
                            }
                            throw new IOException("Unable to acquire a lock on the underlying file channel.");
                        } catch (Throwable th2) {
                            th = th2;
                            obj = null;
                        }
                    }
                    z = false;
                    if (z) {
                    }
                    elr.f(context, z);
                } finally {
                }
            }
            z = false;
            elr.f(context, z);
        } catch (PackageManager.NameNotFoundException e16) {
            eieVar4.r(7, e16);
            elr.f(context, false);
        }
    }
}

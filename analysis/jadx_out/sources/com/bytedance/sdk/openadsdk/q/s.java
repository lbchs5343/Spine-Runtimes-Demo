package com.bytedance.sdk.openadsdk.q;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Environment;
import android.util.Base64;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;

/* loaded from: classes3.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    protected static String f3862d = null;
    protected static String dq = "images";
    public static int ia = 2;
    public static int ig = 32;
    public static int iw = 0;
    public static int kk = 4;
    public static int mn = 1;
    public static int no = 16;
    public static int o = 8;
    protected static int ox = 1;
    protected static int p = 30;
    protected static long s = 15360;

    public static Bitmap d(String str) {
        byte[] decode = Base64.decode(str, 2);
        return BitmapFactory.decodeByteArray(decode, 0, decode.length);
    }

    public static boolean d(Context context, String str) {
        int checkSelfPermission;
        checkSelfPermission = context.checkSelfPermission(str);
        return checkSelfPermission == 0;
    }

    public static File dq() {
        try {
            File file = new File(Environment.getExternalStorageDirectory(), Environment.DIRECTORY_DCIM + File.separator + dq);
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, "JPG_Playable_Photo.jpg");
            if (!file2.exists()) {
                file2.createNewFile();
            }
            f3862d = file2.getAbsolutePath();
            return file2;
        } catch (IOException unused) {
            return null;
        }
    }

    public static File dq(String str) {
        try {
            File file = new File(Environment.getExternalStorageDirectory(), Environment.DIRECTORY_DCIM + File.separator + "Camera");
            if (!file.exists()) {
                file.mkdirs();
            }
            Calendar calendar = Calendar.getInstance();
            File file2 = new File(file, (calendar.get(12) + "_" + calendar.get(13) + "_" + calendar.get(14)) + "_" + str);
            if (!file2.exists()) {
                file2.createNewFile();
            }
            return file2;
        } catch (IOException unused) {
            return null;
        }
    }

    public static File dq(String str, String str2) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        try {
            File dq2 = dq(str);
            if (dq2 != null && dq2.exists()) {
                byte[] decode = Base64.decode(str2, 2);
                fileOutputStream = new FileOutputStream(dq2);
                try {
                    fileOutputStream.write(decode, 0, decode.length);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    try {
                        fileOutputStream.close();
                        return dq2;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        return dq2;
                    }
                } catch (IOException unused) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream2 = fileOutputStream;
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
            return null;
        } catch (IOException unused2) {
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean dq(Context context) {
        int checkSelfPermission;
        boolean z;
        int checkSelfPermission2;
        boolean z2;
        int checkSelfPermission3;
        if (Build.VERSION.SDK_INT >= 33) {
            checkSelfPermission3 = context.checkSelfPermission("android.permission.READ_MEDIA_IMAGES");
            z = checkSelfPermission3 == 0;
        } else {
            checkSelfPermission = context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE");
            z = checkSelfPermission == 0;
            checkSelfPermission2 = context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE");
            if (checkSelfPermission2 != 0) {
                z2 = false;
                return !z2 && z;
            }
        }
        z2 = true;
        if (z2) {
        }
    }

    public static boolean dq(Context context, int i) {
        boolean dq2;
        boolean dq3;
        if (iw == 0) {
            if (Build.VERSION.SDK_INT >= 33) {
                dq2 = dq(context, "android.permission.READ_MEDIA_IMAGES");
                dq3 = true;
            } else {
                dq2 = dq(context, "android.permission.READ_EXTERNAL_STORAGE");
                dq3 = dq(context, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            boolean dq4 = dq(context, "android.permission.CAMERA");
            boolean dq5 = dq(context, "android.permission.RECORD_AUDIO");
            PackageManager packageManager = context.getPackageManager();
            if (dq2 && dq3) {
                iw |= mn;
            }
            if (dq4 && packageManager.hasSystemFeature("android.hardware.camera")) {
                iw |= ia;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.gyroscope")) {
                iw |= kk;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.accelerometer")) {
                iw |= o;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.compass")) {
                iw |= no;
            }
            if (dq5 && packageManager.hasSystemFeature("android.hardware.microphone")) {
                iw |= ig;
            }
        }
        return (iw & i) != 0;
    }

    public static boolean dq(Context context, String str) {
        try {
            String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
            if (strArr.length > 0) {
                for (String str2 : strArr) {
                    if (str.equals(str2)) {
                        return true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }
}

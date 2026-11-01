package com.bykv.vk.component.ttvideo.utils;

import android.os.Build;
import java.io.BufferedReader;
import java.io.FileReader;

/* loaded from: classes.dex */
public class VersionInfo {
    private static String[] mVersion;

    /* JADX WARN: Code restructure failed: missing block: B:35:0x006d, code lost:
    
        if (r7 != null) goto L56;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String[] getVersion() {
        FileReader fileReader;
        BufferedReader bufferedReader;
        if (mVersion == null) {
            String[] strArr = {"null", "null", "null", "null"};
            BufferedReader bufferedReader2 = null;
            try {
                fileReader = new FileReader("/proc/version");
                try {
                    bufferedReader = new BufferedReader(fileReader, 8192);
                } catch (Throwable unused) {
                }
            } catch (Throwable unused2) {
                fileReader = null;
            }
            try {
                strArr[0] = bufferedReader.readLine().split("\\s+")[2];
                try {
                    bufferedReader.close();
                } finally {
                    try {
                    } finally {
                    }
                }
            } catch (Throwable unused3) {
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (Throwable th) {
                        try {
                            th.printStackTrace();
                        } finally {
                            if (fileReader != null) {
                            }
                        }
                    }
                }
            }
            strArr[1] = Build.VERSION.RELEASE;
            strArr[2] = Build.MODEL;
            strArr[3] = Build.DISPLAY;
            mVersion = strArr;
        }
        return mVersion;
    }
}

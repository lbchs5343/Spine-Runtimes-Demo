package com.bykv.vk.component.ttvideo.utils;

import android.content.Context;
import g.awf;
import g.tn;
import java.util.Locale;

/* loaded from: classes.dex */
public class AVErrorInfo {
    public static final String CRASH = "crash";
    public static final String ERROR = "error";
    private static StringBuilder PHONE_INFO;

    public static void setupErrorInfo(Context context, StringBuilder sb, String str, String str2, String str3) {
        if (PHONE_INFO == null) {
            StringBuilder sb2 = new StringBuilder();
            PHONE_INFO = sb2;
            setupPhoneInfo(context, sb2);
        }
        sb.append((CharSequence) PHONE_INFO);
        sb.append("\r\n");
        sb.append(str);
        sb.append(":");
        sb.append(str2);
    }

    public static final void setupPhoneInfo(Context context, StringBuilder sb) {
        String[] version = VersionInfo.getVersion();
        if (version != null) {
            String str = version[0];
            String str2 = version[1];
            String str3 = version[2];
            StringBuilder o = tn.o("version:", str, ",", str2, ",");
            o.append(str3);
            o.append("\r\n");
            sb.append(o.toString());
            sb.append("\r\n");
        }
        long[] romMemroy = MemoryInfo.getRomMemroy();
        if (romMemroy != null) {
            Locale locale = Locale.US;
            long j = romMemroy[0];
            long j2 = romMemroy[1];
            StringBuilder l = awf.l(j, "rom memory totle:", ",availe:");
            l.append(j2);
            l.append("\r\n");
            sb.append(l.toString());
            sb.append("\r\n");
        }
        long availMemory = MemoryInfo.getAvailMemory(context);
        long tolalMemory = MemoryInfo.getTolalMemory();
        Locale locale2 = Locale.US;
        StringBuilder l2 = awf.l(tolalMemory, "ram memory totle:", ",availe:");
        l2.append(availMemory);
        l2.append("\r\n");
        sb.append(l2.toString());
        sb.append("\r\n");
        long[] sDCardSize = HardWareInfo.getSDCardSize(context);
        if (sDCardSize != null) {
            long j3 = sDCardSize[0];
            long j4 = sDCardSize[1];
            StringBuilder l3 = awf.l(j3, "sdcard totle:", ",availe:");
            l3.append(j4);
            l3.append("\r\n");
            sb.append(l3.toString());
            sb.append("\r\n");
        }
    }
}

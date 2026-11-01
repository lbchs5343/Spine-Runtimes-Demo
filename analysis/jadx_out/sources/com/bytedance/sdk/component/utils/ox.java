package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.content.pm.Signature;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ox {
    private static HashMap<String, ArrayList<String>> dq = new HashMap<>();

    private static Signature[] d(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 64).signatures;
        } catch (Exception e2) {
            ig.d(e2.toString());
            return null;
        }
    }

    public static String dq(Context context) {
        StringBuilder sb = new StringBuilder();
        ArrayList<String> dq2 = dq(context, "SHA1");
        if (dq2 != null && dq2.size() != 0) {
            for (int i = 0; i < dq2.size(); i++) {
                sb.append(dq2.get(i));
                if (i < dq2.size() - 1) {
                    sb.append(",");
                }
            }
        }
        return sb.toString();
    }

    private static String dq(Signature signature, String str) {
        byte[] byteArray = signature.toByteArray();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (messageDigest == null) {
                return "error!";
            }
            byte[] digest = messageDigest.digest(byteArray);
            StringBuilder sb = new StringBuilder();
            for (byte b2 : digest) {
                sb.append(Integer.toHexString((b2 & 255) | 256).substring(1, 3).toUpperCase());
                sb.append(":");
            }
            return sb.substring(0, sb.length() - 1).toString();
        } catch (Exception e2) {
            ig.d(e2.toString());
            return "error!";
        }
    }

    public static ArrayList<String> dq(Context context, String str) {
        ArrayList<String> arrayList = null;
        if (context != null && str != null) {
            String packageName = context.getPackageName();
            if (packageName == null) {
                return null;
            }
            if (dq.get(str) != null) {
                return dq.get(str);
            }
            arrayList = new ArrayList<>();
            try {
                for (Signature signature : d(context, packageName)) {
                    String str2 = "error!";
                    if ("MD5".equals(str)) {
                        str2 = dq(signature, "MD5");
                    } else if ("SHA1".equals(str)) {
                        str2 = dq(signature, "SHA1");
                    } else if ("SHA256".equals(str)) {
                        str2 = dq(signature, "SHA256");
                    }
                    arrayList.add(str2);
                }
            } catch (Exception e2) {
                ig.d(e2.toString());
            }
            dq.put(str, arrayList);
        }
        return arrayList;
    }
}

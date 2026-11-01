package com.bykv.vk.component.ttvideo.utils;

import android.text.TextUtils;
import android.util.Base64;
import g.awf;
import java.util.Random;

/* loaded from: classes.dex */
public class b {
    public static String a(String str) {
        String str2 = new String();
        if (str != null) {
            str2 = str2.concat(str);
        }
        Random random = new Random();
        StringBuilder o = awf.o(str2);
        o.append(random.nextInt());
        StringBuilder o2 = awf.o(o.toString());
        o2.append(System.currentTimeMillis());
        return Base64.encodeToString(o2.toString().getBytes(), 2);
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            sb.append("T");
        }
        sb.append(Long.toString(System.currentTimeMillis()));
        sb.append("T");
        sb.append(Integer.toString((int) (Math.random() * 65535.0d)));
        return sb.toString();
    }
}

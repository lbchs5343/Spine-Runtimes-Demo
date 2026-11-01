package com.bytedance.sdk.component.adexpress.p;

import android.net.Uri;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class kk {

    public enum dq {
        HTML("text/html"),
        CSS("text/css"),
        JS("application/x-javascript"),
        IMAGE("image/*");

        private String s;

        dq(String str) {
            this.s = str;
        }

        public String getType() {
            return this.s;
        }
    }

    public static boolean d(String str) {
        Uri parse;
        if (TextUtils.isEmpty(str) || (parse = Uri.parse(str)) == null) {
            return false;
        }
        String path = parse.getPath();
        if (TextUtils.isEmpty(path)) {
            return false;
        }
        return path.endsWith(".gif");
    }

    public static dq dq(String str) {
        dq dqVar = dq.IMAGE;
        if (!TextUtils.isEmpty(str)) {
            try {
                String path = Uri.parse(str).getPath();
                if (path != null) {
                    if (path.endsWith(".css")) {
                        return dq.CSS;
                    }
                    if (path.endsWith(".js")) {
                        return dq.JS;
                    }
                    if (!path.endsWith(".jpg") && !path.endsWith(".gif") && !path.endsWith(".png") && !path.endsWith(".jpeg") && !path.endsWith(".webp") && !path.endsWith(".bmp") && !path.endsWith(".ico") && path.endsWith(".html")) {
                        return dq.HTML;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return dqVar;
    }
}

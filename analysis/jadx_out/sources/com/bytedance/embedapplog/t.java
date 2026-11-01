package com.bytedance.embedapplog;

import android.os.Build;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import org.json.JSONObject;

/* loaded from: classes.dex */
class t extends ji {
    public t() {
        super(true, false);
    }

    private boolean d() {
        String str = Build.DISPLAY;
        return (!TextUtils.isEmpty(str) && str.contains("Flyme")) || "flyme".equals(Build.USER);
    }

    private boolean dq() {
        try {
            return Class.forName("miui.os.Build").getName().length() > 0;
        } catch (Exception unused) {
            return false;
        }
    }

    private String ox() {
        Throwable th;
        String str;
        BufferedReader bufferedReader = null;
        String str2 = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.build.version.emui").getInputStream()), 1024);
            try {
                str2 = bufferedReader2.readLine();
                bufferedReader2.close();
                try {
                    bufferedReader2.close();
                } catch (IOException unused) {
                }
                return str2;
            } catch (Throwable th2) {
                str = str2;
                bufferedReader = bufferedReader2;
                th = th2;
                try {
                    jo.d(th);
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return str;
                } catch (Throwable th3) {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            str = null;
        }
    }

    @Override // com.bytedance.embedapplog.ji
    public boolean dq(JSONObject jSONObject) {
        StringBuilder sb = new StringBuilder(16);
        if (dq()) {
            sb.append("MIUI-");
        } else if (d()) {
            sb.append("FLYME-");
        } else {
            String ox = ox();
            if (kk.dq(ox)) {
                sb.append("EMUI-");
            }
            if (!TextUtils.isEmpty(ox)) {
                sb.append(ox);
                sb.append("-");
            }
        }
        sb.append(Build.VERSION.INCREMENTAL);
        jSONObject.put("rom", sb.toString());
        return true;
    }
}

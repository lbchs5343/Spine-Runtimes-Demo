package g;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import java.io.BufferedReader;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class cei {

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f12736a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f12737b;

    /* renamed from: c, reason: collision with root package name */
    public volatile long f12738c;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f12739d = false;

    public cei(Context context) {
        if (context == null || !(context instanceof Application)) {
            throw new IllegalArgumentException("context must not be null or not application");
        }
        this.f12737b = context;
        SharedPreferences d2 = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, "anr_monitor_table", 0);
        this.f12736a = d2;
        this.f12738c = d2.getLong("trace_anr_happen_time", 0L);
    }

    public static String e(BufferedReader bufferedReader) {
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null || readLine.trim().length() <= 0) {
                break;
            }
            sb.append(readLine);
            sb.append("\n");
        }
        return sb.toString();
    }

    public static Object[] f(BufferedReader bufferedReader, Pattern... patternArr) {
        if (patternArr.length <= 0) {
            return null;
        }
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return null;
                }
                for (Pattern pattern : patternArr) {
                    if (pattern.matcher(readLine).matches()) {
                        return new Object[]{pattern, readLine};
                    }
                }
            } catch (Throwable unused) {
                return null;
            }
        }
    }
}

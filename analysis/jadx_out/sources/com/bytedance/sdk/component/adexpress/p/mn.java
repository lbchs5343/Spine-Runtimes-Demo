package com.bytedance.sdk.component.adexpress.p;

import android.content.Context;
import android.os.Build;
import android.os.LocaleList;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Locale;

/* loaded from: classes.dex */
public class mn {
    private static boolean dq;

    public static int d(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().getContext();
        }
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static int d(Context context, float f2) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().getContext();
        }
        float s = s(context);
        if (s <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            s = 1.0f;
        }
        return (int) ((f2 / s) + 0.5f);
    }

    public static float dq(Context context, float f2) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().getContext();
        }
        return (f2 * s(context)) + 0.5f;
    }

    public static int dq(float f2, float f3, float f4, float f5) {
        return (((int) ((f2 * 255.0f) + 0.5f)) << 24) | (((int) ((f3 * 255.0f) + 0.5f)) << 16) | (((int) ((f4 * 255.0f) + 0.5f)) << 8) | ((int) ((f5 * 255.0f) + 0.5f));
    }

    public static int dq(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().getContext();
        }
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    private static String dq(String str) {
        str.getClass();
        switch (str) {
            case "ar":
                return "aa";
            case "ja":
                return "japan";
            case "ko":
                return "korea";
            case "ms":
                return "my";
            case "zh":
                return "cn";
            default:
                return str;
        }
    }

    public static float ox(Context context, float f2) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().getContext();
        }
        return f2 * s(context);
    }

    public static int ox(Context context) {
        if (context == null) {
            context = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().getContext();
        }
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static String p(Context context) {
        String str;
        Locale locale;
        LocaleList locales;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                locales = r.dq(context).getConfiguration().getLocales();
                locale = locales.get(0);
            } else {
                locale = Locale.getDefault();
            }
            str = locale.getLanguage();
            try {
                if (locale.getCountry().equals("TW")) {
                    str = "zhHant";
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            str = "";
        }
        return dq(str);
    }

    private static float s(Context context) {
        try {
            if (dq) {
                context.getClassLoader().loadClass("android.util.DisplayMetrics").getDeclaredMethod("getDeviceDensity", null).setAccessible(true);
                return ((Integer) r1.invoke(r0, null)).intValue() / 160.0f;
            }
        } catch (Exception unused) {
        }
        return context.getResources().getDisplayMetrics().density;
    }
}

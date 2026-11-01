package g;

import android.app.Activity;
import android.app.AppOpsManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import com.ss.android.download.api.constant.BaseConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class fnp {

    /* renamed from: a, reason: collision with root package name */
    public static HashMap f17094a;

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f17095b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public static final HashMap f17096c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public static final HashMap f17097d;

    static {
        HashMap hashMap = new HashMap();
        f17097d = hashMap;
        hashMap.put("miui".toLowerCase(), "com.android.settings/com.android.settings.Settings$MyDeviceInfoActivity");
        hashMap.put("hyperos".toLowerCase(), "com.android.settings/com.android.settings.Settings$MyDeviceInfoActivity");
        hashMap.put("xiaomi".toLowerCase(), "com.android.settings/com.android.settings.Settings$MyDeviceInfoActivity");
    }

    public static String e(Activity activity) {
        String r = r(activity);
        if (!TextUtils.isEmpty(r)) {
            return r;
        }
        return Build.MANUFACTURER + " " + Build.MODEL;
    }

    public static boolean f() {
        return "vivo".equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static void g(Context context, String str) {
        Boolean aw = eyt.aw(context);
        if ((aw == null || !aw.booleanValue()) && dyd.bp(19) && m()) {
            try {
                AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
                Class<?> cls = appOpsManager.getClass();
                Class<?> cls2 = Integer.TYPE;
                if (((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, 10021, Integer.valueOf(Process.myUid()), context.getPackageName())).intValue() == 0) {
                    return;
                }
                gm.h(context, R.string.xiaomi_open_back_window, str);
            } catch (Exception e2) {
                erl.ai("isCanBeStartedFromBackground", e2);
            }
        }
    }

    public static String h() {
        return (!m() || TextUtils.isEmpty(aky.h("ro.mi.os.version.name"))) ? m() ? "miui" : Build.MANUFACTURER : "hyperos";
    }

    public static boolean i() {
        return "vivo".equalsIgnoreCase(Build.MANUFACTURER) && dyd.ar(23);
    }

    public static String j(Context context) {
        HashMap hashMap = f17095b;
        if (afo.at(hashMap)) {
            hashMap.put("miui".toLowerCase(), Integer.valueOf(R.string.dev_options_path_miui));
            hashMap.put("hyperos".toLowerCase(), Integer.valueOf(R.string.dev_options_path_hyperos));
            hashMap.put("huawei".toLowerCase(), Integer.valueOf(R.string.dev_options_path_huawei));
            hashMap.put("honor".toLowerCase(), Integer.valueOf(R.string.dev_options_path_honor));
            hashMap.put("oppo".toLowerCase(), Integer.valueOf(R.string.dev_options_path_oppo));
            hashMap.put("vivo".toLowerCase(), Integer.valueOf(R.string.dev_options_path_vivo));
            hashMap.put("Samsung".toLowerCase(), Integer.valueOf(R.string.dev_options_path_samsung));
            hashMap.put("OnePlus".toLowerCase(), Integer.valueOf(R.string.dev_options_path_oneplus));
            hashMap.put("realme".toLowerCase(), Integer.valueOf(R.string.dev_options_path_realme));
        }
        Integer num = (Integer) hashMap.get(h().toLowerCase());
        return context.getString(num != null ? num.intValue() : R.string.dev_options_path_default);
    }

    public static String k(long j) {
        if (j <= 0) {
            return "0 M";
        }
        if (j >= 1073741824) {
            return erl.ax(j / 1.073741824E9d, 2) + " GB";
        }
        if (j >= BaseConstants.MB_VALUE) {
            return erl.ax(j / 1048576.0d, 2) + " MB";
        }
        if (j >= 1024) {
            return erl.ax(j / 1024.0d, 2) + " KB";
        }
        return j + " B";
    }

    public static String l(Context context) {
        HashMap hashMap = f17096c;
        if (afo.at(hashMap)) {
            hashMap.put("miui".toLowerCase(), Integer.valueOf(R.string.dev_options_page_miui));
            hashMap.put("hyperos".toLowerCase(), Integer.valueOf(R.string.dev_options_page_hyperos));
            hashMap.put("huawei".toLowerCase(), Integer.valueOf(R.string.dev_options_page_huawei));
            hashMap.put("honor".toLowerCase(), Integer.valueOf(R.string.dev_options_page_honor));
            hashMap.put("oppo".toLowerCase(), Integer.valueOf(R.string.dev_options_page_oppo));
            hashMap.put("vivo".toLowerCase(), Integer.valueOf(R.string.dev_options_page_vivo));
            hashMap.put("Samsung".toLowerCase(), Integer.valueOf(R.string.dev_options_page_samsung));
            hashMap.put("OnePlus".toLowerCase(), Integer.valueOf(R.string.dev_options_page_oneplus));
            hashMap.put("realme".toLowerCase(), Integer.valueOf(R.string.dev_options_page_realme));
        }
        Configuration configuration = context.getResources().getConfiguration();
        boolean z = configuration != null && (configuration.screenLayout & 15) >= 3;
        String lowerCase = h().toLowerCase();
        if (z) {
            if ("miui".toLowerCase().equals(lowerCase)) {
                return context.getString(R.string.dev_options_page_miui_tablet);
            }
            if ("hyperos".toLowerCase().equals(lowerCase)) {
                return context.getString(R.string.dev_options_page_hyperos_tablet);
            }
            if ("vivo".toLowerCase().equals(lowerCase)) {
                return context.getString(R.string.dev_options_page_vivo_tablet);
            }
            if ("huawei".toLowerCase().equals(lowerCase)) {
                return context.getString(R.string.dev_options_page_huawei_tablet);
            }
            if ("Samsung".toLowerCase().equals(lowerCase)) {
                return context.getString(R.string.dev_options_page_samsung_tablet);
            }
        }
        Integer num = (Integer) hashMap.get(lowerCase);
        if (num != null) {
            return context.getString(num.intValue());
        }
        return context.getString(z ? R.string.dev_options_page_default_tablet : R.string.dev_options_page_default);
    }

    public static boolean m() {
        return "xiaomi".equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static boolean n() {
        return "smartisan".equalsIgnoreCase(Build.MANUFACTURER);
    }

    public static String o() {
        int indexOf;
        if (TextUtils.isEmpty("Hardware")) {
            return null;
        }
        HashMap hashMap = f17094a;
        if (hashMap != null && hashMap.containsKey("Hardware")) {
            return (String) f17094a.get("Hardware");
        }
        try {
            ArrayList w = buj.w("/proc/cpuinfo");
            if (acw.u(w)) {
                return null;
            }
            Iterator it = w.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (str != null && (indexOf = str.indexOf(":")) >= 0 && "Hardware".equals(str.substring(0, indexOf).trim())) {
                    String trim = indexOf >= str.length() + (-1) ? "" : str.substring(indexOf + 1).trim();
                    if (f17094a == null) {
                        f17094a = new HashMap();
                    }
                    f17094a.put("Hardware", trim);
                    return trim;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean p() {
        String h;
        String str = Build.MANUFACTURER;
        if ("huawei".equalsIgnoreCase(str) || "xiaomi".equalsIgnoreCase(str) || "Samsung".equalsIgnoreCase(str)) {
            return false;
        }
        String str2 = "";
        if ("xiaomi".equalsIgnoreCase(str)) {
            if (TextUtils.isEmpty(aky.h("ro.mi.os.version.name"))) {
                String h2 = aky.h("ro.miui.ui.version.code");
                if (!TextUtils.isEmpty(h2)) {
                    str2 = tn.x("MIUI ", h2);
                }
            } else {
                str2 = "Hyper" + aky.h("ro.mi.os.version.name");
            }
        } else if ("oppo".equalsIgnoreCase(str)) {
            String h3 = aky.h("ro.build.version.oplusrom.display");
            if (TextUtils.isEmpty(h3)) {
                h3 = aky.h("ro.build.version.opporom");
            }
            if (!TextUtils.isEmpty(h3)) {
                str2 = tn.x("ColorOS ", h3);
            }
        } else {
            if ("vivo".equalsIgnoreCase(str)) {
                h = aky.h("ro.vivo.os.build.display.id");
                if (TextUtils.isEmpty(h)) {
                    h = aky.h("ro.build.version.ftouch");
                }
            } else if ("huawei".equalsIgnoreCase(str) || "honor".equalsIgnoreCase(str)) {
                h = Build.DISPLAY.contains("HarmonyOS") ? aky.h("ro.build.version.harmonyos") : aky.h("ro.build.version.emui");
            } else if ("Samsung".equalsIgnoreCase(str)) {
                str2 = aky.h("ro.build.version.oneui");
            } else if ("OnePlus".equalsIgnoreCase(str)) {
                String h4 = aky.h("ro.build.version.oplusrom.display");
                if (TextUtils.isEmpty(h4)) {
                    h4 = aky.h("ro.build.version.opporom");
                }
                if (!TextUtils.isEmpty(h4)) {
                    str2 = tn.x("ColorOS ", h4);
                }
            } else {
                "realme".equalsIgnoreCase(str);
            }
            str2 = h;
        }
        if ("vivo".equalsIgnoreCase(str) && !TextUtils.isEmpty(str2)) {
            return str2.toLowerCase().trim().indexOf("funtouch") != 0;
        }
        if (!"oppo".equalsIgnoreCase(str) || TextUtils.isEmpty(str2)) {
            return true;
        }
        String trim = str2.toLowerCase().trim();
        return (trim.indexOf("coloros v6.") == 0 || trim.indexOf("coloros v5.") == 0 || trim.indexOf("coloros v4.") == 0 || trim.indexOf("coloros v3.") == 0 || trim.indexOf("coloros v2.") == 0 || trim.indexOf("coloros v1.") == 0) ? false : true;
    }

    public static String q() {
        String h = aky.h("ro.build.version.oplusrom.display");
        if (TextUtils.isEmpty(h)) {
            h = aky.h("ro.build.version.opporom");
        }
        if (TextUtils.isEmpty(h)) {
            return "";
        }
        String h2 = aky.h("ro.build.version.oplusrom");
        StringBuilder sb = new StringBuilder("ColorOS ");
        sb.append(h);
        sb.append(TextUtils.isEmpty(h2) ? "" : tn.ad("(", h2, ")"));
        return sb.toString();
    }

    public static String r(Activity activity) {
        ContentResolver contentResolver = activity.getContentResolver();
        String string = Settings.Global.getString(contentResolver, "device_name");
        String str = Build.MANUFACTURER;
        if (str.toUpperCase().contains(BaseConstants.ROM_OPPO_UPPER_CONSTANT)) {
            string = Settings.Secure.getString(contentResolver, "oppo_device_name");
        } else if (str.toUpperCase().contains("HUAWEI")) {
            string = Settings.Global.getString(contentResolver, "unified_device_name");
        }
        if (TextUtils.isEmpty(string)) {
            try {
                return Settings.Secure.getString(contentResolver, "bluetooth_name");
            } catch (Exception unused) {
            }
        }
        return string;
    }
}

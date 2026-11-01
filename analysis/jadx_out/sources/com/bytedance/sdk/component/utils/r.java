package com.bytedance.sdk.component.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: d, reason: collision with root package name */
    private static String f2197d;

    @SuppressLint({"StaticFieldLeak"})
    private static Context dq;
    private static boolean iw;
    private static Resources ox;
    private static String p;
    private static boolean s;

    public static int d(Context context, String str) {
        return dq(context, str, "string");
    }

    private static AssetManager d(AssetManager assetManager, String str) {
        try {
            AssetManager assetManager2 = assetManager.getClass().getName().equals("android.content.res.BaiduAssetManager") ? (AssetManager) Class.forName("android.content.res.BaiduAssetManager").getConstructor(null).newInstance(null) : (AssetManager) AssetManager.class.newInstance();
            dq(assetManager2, str);
            assetManager = assetManager2;
        } catch (Exception unused) {
            dq(assetManager, str);
        }
        try {
            kx.dq(assetManager, "ensureStringBlocks", new Object[0]);
        } catch (Exception unused2) {
        }
        return assetManager;
    }

    public static synchronized void d(Context context) {
        synchronized (r.class) {
            try {
                if (TextUtils.isEmpty(f2197d)) {
                    return;
                }
                Resources resources = context.getResources();
                ox = new Resources(d(resources.getAssets(), f2197d + "/apk/base-1.apk"), resources.getDisplayMetrics(), resources.getConfiguration());
                p = context.getPackageName();
                s = true;
            } catch (Throwable th) {
                Log.e("ResourceHelp", "makePluginResources failed", th);
            }
        }
    }

    private static int dq(Context context, String str, String str2) {
        int identifier = dq(context).getIdentifier(str, str2, ox(context));
        if (identifier != 0) {
            return identifier;
        }
        if (s) {
            return context.getResources().getIdentifier(str, str2, ox(context));
        }
        d(context);
        return dq(context).getIdentifier(str, str2, ox(context));
    }

    public static Resources dq(Context context) {
        Resources resources = ox;
        if (resources == null) {
            resources = null;
        }
        Context context2 = dq;
        if (context2 != null) {
            resources = context2.getResources();
        }
        return resources == null ? context.getResources() : resources;
    }

    public static String dq(Context context, String str) {
        return dq(context).getString(d(context, str));
    }

    public static void dq(String str, boolean z, Context context) {
        if (!TextUtils.isEmpty(str)) {
            f2197d = str;
        }
        iw = z;
        if (z) {
            d(context);
        }
    }

    public static boolean dq(AssetManager assetManager, String str) {
        Method dq2 = kx.dq((Class<?>) AssetManager.class, "addAssetPath", (Class<?>[]) new Class[]{String.class});
        if (dq2 == null) {
            dq2 = kx.dq((Class<?>) AssetManager.class, "addAssetPath", (Class<?>[]) new Class[]{String.class});
        }
        if (dq2 != null) {
            int i = 3;
            while (true) {
                int i2 = i - 1;
                if (i < 0) {
                    break;
                }
                if (((Integer) dq2.invoke(assetManager, str)).intValue() != 0) {
                    return true;
                }
                i = i2;
            }
        }
        return false;
    }

    public static int ia(Context context, String str) {
        return dq(context, str, "dimen");
    }

    public static int iw(Context context, String str) {
        return dq(context, str, TTDownloadField.TT_ID);
    }

    public static int kk(Context context, String str) {
        return dq(context).getColor(o(context, str));
    }

    public static int mn(Context context, String str) {
        return dq(context, str, "style");
    }

    public static int no(Context context, String str) {
        return dq(context, str, "anim");
    }

    public static int o(Context context, String str) {
        return dq(context, str, "color");
    }

    public static Drawable ox(Context context, String str) {
        try {
            return dq(context).getDrawable(s(context, str));
        } catch (Exception unused) {
            return null;
        }
    }

    private static String ox(Context context) {
        if (p == null) {
            p = context.getPackageName();
        }
        return p;
    }

    public static Bitmap p(Context context, String str) {
        return BitmapFactory.decodeResource(dq(context), s(context, str));
    }

    public static int s(Context context, String str) {
        try {
            return dq(context, str, "drawable");
        } catch (Exception unused) {
            return 0;
        }
    }
}

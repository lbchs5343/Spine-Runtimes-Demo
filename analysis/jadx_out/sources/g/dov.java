package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.webkit.WebView;
import cn.trinea.android.developertools.R;
import com.bykv.vk.component.ttvideo.player.C;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public abstract class dov {
    public static int a(Context context, Class cls, Bundle bundle, boolean z) {
        if (z) {
            SimpleDateFormat simpleDateFormat = dlb.f14354a;
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - acw.k(context, "webview_available_time", 0L).longValue() > AdBaseConstants.DEFAULT_DELAY_TIMESTAMP) {
                WebView webView = null;
                try {
                    WebView webView2 = new WebView(context);
                    try {
                        acw.s(context, "webview_available_time", currentTimeMillis);
                        try {
                            webView2.destroy();
                        } catch (Exception unused) {
                        }
                    } catch (Exception unused2) {
                        webView = webView2;
                        if (webView == null) {
                            return 1;
                        }
                        try {
                            webView.destroy();
                            return 1;
                        } catch (Exception unused3) {
                            return 1;
                        }
                    } catch (Throwable th) {
                        th = th;
                        webView = webView2;
                        if (webView != null) {
                            try {
                                webView.destroy();
                            } catch (Exception unused4) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception unused5) {
                } catch (Throwable th2) {
                    th = th2;
                }
            }
            if (dyd.bq(17)) {
                AccessibilityNodeInfo accessibilityNodeInfo = ern.f16037c;
                AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
                if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                    return 2;
                }
            }
        }
        if (cls == null) {
            cls = a.a.a.class;
        }
        Intent intent = new Intent(context, (Class<?>) cls);
        intent.putExtras(bundle);
        if (!(context instanceof Activity)) {
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
        }
        fgj.e().f(context, intent);
        return 0;
    }

    public static void b(Activity activity, Class cls, Bundle bundle) {
        int i = 1;
        int a2 = a(activity, cls, bundle, true);
        if (a2 == 0) {
            return;
        }
        String string = bundle.getString(abn.EXTRA_URL);
        if (a2 == 1) {
            erl.ai("check webview start fail manually", new IllegalArgumentException());
            fgj.e().f(activity, new Intent("android.intent.action.VIEW", Uri.parse(string)));
        } else if (a2 == 2) {
            gmn z = ckd.z(activity);
            z.p(R.string.webview_not_exist_title);
            ((die) z.z).m = activity.getString(R.string.webview_api_17_accessibility_enabled, Build.VERSION.RELEASE, Integer.toString(Build.VERSION.SDK_INT));
            z.s(R.string.webview_open_continue, new bcf(activity, cls, bundle, i));
            z.y(R.string.webview_disable_accessibility, new bcf(activity, cls, bundle, 0));
            z.t(R.string.webview_open_by_other_app, new frl(activity, 0, string));
            eyt.ay(activity, z.r());
        }
    }

    public static Bundle c(String str, String str2, String str3, String str4, String str5) {
        Bundle bundle = new Bundle();
        bundle.putString(abn.EXTRA_URL, str);
        if (!TextUtils.isEmpty(str2)) {
            bundle.putString(abn.EXTRA_TITLE, str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            bundle.putString(abn.EXTRA_SUB_TITLE, str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            bundle.putString(abn.EXTRA_SHARE_ATTACHMENT_TEXT, str4);
        }
        if (!TextUtils.isEmpty(str5)) {
            bundle.putString(abn.EXTRA_UA_APP_NAME, str5);
        }
        return bundle;
    }

    public static boolean d(Activity activity, String str, String str2, String str3, String str4, String str5) {
        int a2 = a(activity, null, c(str, str2, str3, str4, str5), true);
        if (a2 == 0) {
            return true;
        }
        if (a2 == 1) {
            erl.ai("check webview start fail manually", new IllegalArgumentException());
            fgj.e().f(activity, new Intent("android.intent.action.VIEW", Uri.parse(str)));
        } else if (a2 == 2) {
            gmn z = ckd.z(activity);
            z.p(R.string.webview_not_exist_title);
            ((die) z.z).m = activity.getString(R.string.webview_api_17_accessibility_enabled, Build.VERSION.RELEASE, Integer.toString(Build.VERSION.SDK_INT));
            z.s(R.string.webview_open_by_other_app, new frl(activity, 1, str));
            z.y(R.string.webview_disable_accessibility, new xg(activity, str, str2, str3, str4, str5, 1));
            z.t(R.string.webview_open_continue, new xg(activity, str, str2, str3, str4, str5, 0));
            eyt.ay(activity, z.r());
        }
        return false;
    }

    public static Intent e(Context context, String str) {
        Intent intent = new Intent(fgj.d(context), (Class<?>) a.a.aa.class);
        intent.putExtra(bid.EXTRA_FILE_PATH, str);
        intent.putExtra(bid.EXTRA_NEED_STORAGE_PERMISSION, false);
        intent.setAction("android.intent.action.VIEW");
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        return intent;
    }

    public static Intent f(Context context, String str, String str2, String str3, String str4, Class cls) {
        Intent intent = new Intent(fgj.d(context), (Class<?>) cls);
        intent.putExtra(abn.EXTRA_URL, str);
        if (!TextUtils.isEmpty(str2)) {
            intent.putExtra(abn.EXTRA_TITLE, str2);
        }
        if (!TextUtils.isEmpty(str3)) {
            intent.putExtra(abn.EXTRA_SUB_TITLE, str3);
        }
        if (!TextUtils.isEmpty(str4)) {
            intent.putExtra(abn.EXTRA_SHARE_ATTACHMENT_TEXT, str4);
        }
        intent.setAction("android.intent.action.VIEW");
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        return intent;
    }
}

package com.ss.android.downloadlib.mn;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.config.cd;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import com.ss.android.downloadad.api.download.AdDownloadController;
import com.ss.android.downloadlib.activity.JumpKllkActivity;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import g.ada;
import g.awf;
import g.tn;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ia {
    private static final String dq = "ia";

    private static com.ss.android.downloadlib.addownload.d.mn d(Context context, com.ss.android.downloadlib.addownload.d.s sVar, String str) {
        Intent intent = new Intent(context, (Class<?>) JumpKllkActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("p", str);
        intent.putExtra(TTDownloadField.TT_ID, sVar.dq);
        intent.putExtra("start_only_for_android", true);
        JSONObject jSONObject = new JSONObject();
        try {
            context.startActivity(intent);
            return new com.ss.android.downloadlib.addownload.d.mn(7, "am_kllk2");
        } catch (Throwable unused) {
            d(sVar, jSONObject, 1, 3, tn.x("market://details?id=", str));
            return dq(context, Uri.parse("market://details?id=" + str));
        }
    }

    public static com.ss.android.downloadlib.addownload.d.mn d(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return new com.ss.android.downloadlib.addownload.d.mn(4, 11);
        }
        if (context == null) {
            context = com.ss.android.downloadlib.addownload.no.getContext();
        }
        Intent mn = mp.mn(context, str);
        if (mn == null) {
            return new com.ss.android.downloadlib.addownload.d.mn(4, 22);
        }
        mn.putExtra("start_only_for_android", true);
        try {
            context.startActivity(mn);
            return new com.ss.android.downloadlib.addownload.d.mn(3);
        } catch (Exception unused) {
            return new com.ss.android.downloadlib.addownload.d.mn(4, 23);
        }
    }

    public static com.ss.android.downloadlib.addownload.d.mn d(String str, com.ss.android.downloadad.api.dq.dq dqVar) {
        Intent intent;
        if (TextUtils.isEmpty(str)) {
            return new com.ss.android.downloadlib.addownload.d.mn(2, 21);
        }
        Context context = com.ss.android.downloadlib.addownload.no.getContext();
        String packageName = dqVar.i().getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            intent = null;
        } else {
            ig.dq().dq(dq, "tryOpenByUrl", "获取到跳转中转Activity的intent");
            intent = dq(context, dqVar, packageName, 2, str);
            if (intent != null) {
                com.ss.android.downloadlib.addownload.d.mn dq2 = dq(context, intent, dqVar, true, str);
                if (dq2.getType() == 1) {
                    return dq2;
                }
            }
        }
        intent.setData(Uri.parse(str));
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
        intent.putExtra("start_only_for_android", true);
        if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_app_link_flag")) {
            intent.addFlags(TTAdConstant.KEY_CLICK_AREA);
        }
        return dq(context, intent, dqVar, false, str);
    }

    public static void d(Activity activity, String str, long j) {
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        JSONObject jSONObject = new JSONObject();
        boolean enableOppoAutoDownload = ((AdDownloadController) s.p).enableOppoAutoDownload();
        HashMap hashMap = new HashMap();
        hashMap.put("is_button", Boolean.valueOf(enableOppoAutoDownload));
        mp.dq(jSONObject, "is_button", Boolean.valueOf(enableOppoAutoDownload));
        Map<String, Object> interceptObmMarket = ((AdDownloadController) s.p).getDownloadMarketInterceptor().interceptObmMarket(hashMap);
        if (interceptObmMarket != null && interceptObmMarket.get("convert_result") != null && Boolean.parseBoolean(interceptObmMarket.get("convert_result").toString())) {
            d(s, jSONObject, -1, 11, tn.x("market://details?id=", str));
            com.ss.android.downloadlib.d.dq.dq("am_kllk4", jSONObject, s, true);
        } else {
            d(s, jSONObject, 15, 11, tn.x("market://details?id=", str));
            com.ss.android.downloadlib.d.dq.dq(dq((Context) activity, Uri.parse("market://details?id=" + str)), s, true);
        }
    }

    public static void d(Activity activity, String str, long j, String str2) {
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        JSONObject jSONObject = new JSONObject();
        JSONObject kk = com.ss.android.downloadlib.addownload.no.kk();
        String optString = kk.optString("s");
        String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("bz"), optString);
        String dq3 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("ca"), optString);
        String dq4 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("cb"), optString);
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("hiapplink").authority("com.huawei.appmarket");
        if (!TextUtils.isEmpty(dq2)) {
            builder.appendQueryParameter(dq2, str2);
        }
        if (!TextUtils.isEmpty(dq3) && !TextUtils.isEmpty(dq4)) {
            builder.appendQueryParameter(dq3, dq4);
        }
        if (d(activity, builder.build())) {
            d(s, jSONObject, -1, 9, tn.x("market://details?id=", str));
            com.ss.android.downloadlib.d.dq.dq("am_hr", jSONObject, s, true);
        } else {
            d(s, jSONObject, 2, 9, tn.x("market://details?id=", str));
            com.ss.android.downloadlib.d.dq.dq(dq((Context) activity, Uri.parse("market://details?id=" + str)), s, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, com.ss.android.downloadlib.addownload.d.s sVar, String str, String str2) {
        JSONObject jSONObject = new JSONObject();
        try {
            TTDelegateActivity.d(str, sVar.dq, str2);
        } catch (Exception unused) {
            com.ss.android.downloadlib.d.dq.dq(dq(context, Uri.parse("market://details?id=" + str)), sVar, true);
            d(sVar, jSONObject, 12, 9, tn.x("market://details?id=", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, String str, String str2, com.ss.android.downloadlib.addownload.d.s sVar, JSONObject jSONObject) {
        mp.dq(jSONObject, "ttdownloader_type", (Object) 5);
        try {
            String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(new JSONObject(str2).optString("a"));
            if (!TextUtils.isEmpty(dq2)) {
                TTDelegateActivity.dq(str, sVar.dq, dq2, jSONObject);
                return;
            }
            com.ss.android.downloadlib.d.dq.dq(dq(context, Uri.parse("market://details?id=" + str)), sVar, true);
            d(sVar, jSONObject, 5, 5, "market://details?id=" + str);
        } catch (Exception unused) {
            com.ss.android.downloadlib.d.dq.dq(dq(context, Uri.parse("market://details?id=" + str)), sVar, true);
            d(sVar, jSONObject, 6, 5, tn.x("market://details?id=", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(com.ss.android.downloadlib.addownload.d.s sVar, JSONObject jSONObject, int i, int i2, String str) {
        mp.dq(jSONObject, "error_code", Integer.valueOf(i));
        mp.dq(jSONObject, "ttdownloader_type", Integer.valueOf(i2));
        mp.dq(jSONObject, "rmu", str);
        mp.dq(jSONObject, com.ss.android.socialbase.appdownloader.iw.s.o(), Integer.valueOf(mp.d(com.ss.android.downloadlib.addownload.no.getContext(), com.ss.android.socialbase.appdownloader.iw.s.o())));
        com.ss.android.downloadlib.p.dq.dq().d("am_result", jSONObject, sVar);
    }

    public static boolean d(Activity activity, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.putExtra("start_only_for_android", true);
        String o = com.ss.android.socialbase.appdownloader.iw.s.o();
        if (mp.s(com.ss.android.downloadlib.addownload.no.getContext(), o)) {
            intent.setPackage(o);
        }
        if (!mp.dq(com.ss.android.downloadlib.addownload.no.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e2) {
            com.ss.android.downloadlib.s.ox.dq().dq(e2, "start HM1");
            return false;
        }
    }

    private static Intent dq(Context context, com.ss.android.downloadad.api.dq.dq dqVar, String str, int i, String str2) {
        if (!dqVar.ox() || dqVar.k() == null || dqVar.k().getDownloadMode() != 2 || dqVar.i() == null || s.dq(dqVar).dq("app_link_market_open_add_info", 0) != 1) {
            return null;
        }
        String ox = com.ss.android.downloadlib.addownload.kk.ox(dqVar.i());
        String p = com.ss.android.downloadlib.addownload.kk.p(dqVar.i());
        Intent intent = new Intent();
        intent.setClassName(str, AdBaseConstants.MARKET_OPEN_BRIDGE_ACTIVITY);
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        if (TextUtils.isEmpty(ox) || resolveActivity == null) {
            return null;
        }
        intent.putExtra(AdBaseConstants.MARKET_OPEN_CLICK_ID, ox);
        if (!(context instanceof Activity)) {
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
        }
        if (!TextUtils.isEmpty(p)) {
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_EXTRA, p);
        }
        if (i == 2 && !TextUtils.isEmpty(str2)) {
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str2);
        }
        return intent;
    }

    private static com.ss.android.downloadlib.addownload.d.mn dq(Context context, Intent intent, com.ss.android.downloadad.api.dq.dq dqVar, boolean z, String str) {
        if (context == null) {
            context = com.ss.android.downloadlib.addownload.no.getContext();
        }
        if (!mp.d(context, intent)) {
            return new com.ss.android.downloadlib.addownload.d.mn(2, 24);
        }
        if (com.ss.android.downloadlib.addownload.no.kk().optInt("open_url_mode") == 0 && com.ss.android.downloadlib.addownload.no.ig() != null && com.ss.android.downloadlib.addownload.no.ig().dq() && Build.VERSION.SDK_INT >= 26 && dqVar.fw() && !z) {
            TTDelegateActivity.dq(str, dqVar);
            return new com.ss.android.downloadlib.addownload.d.mn(1);
        }
        try {
            context.startActivity(intent);
            return new com.ss.android.downloadlib.addownload.d.mn(1);
        } catch (Exception e2) {
            if (z) {
                ig.dq().d(dq, "realTryOpenByUrl", "商店直投注入clickId优化url调起场景，抛出异常，没接转化SDK，回退普通调起" + e2.getMessage());
                return new com.ss.android.downloadlib.addownload.d.mn(9);
            }
            ig.dq().d(dq, "realTryOpenByUrl", "url调起失败了，抛出异常" + e2.getMessage());
            return new com.ss.android.downloadlib.addownload.d.mn(2);
        }
    }

    public static com.ss.android.downloadlib.addownload.d.mn dq(Context context, Uri uri) {
        Intent intent;
        if (!com.ss.android.socialbase.appdownloader.iw.s.ox() && (context == null || uri == null || !"market".equals(uri.getScheme()))) {
            return new com.ss.android.downloadlib.addownload.d.mn(6, 12);
        }
        try {
            String o = com.ss.android.socialbase.appdownloader.iw.s.o();
            if (!com.ss.android.socialbase.appdownloader.iw.s.fw() || (!TextUtils.isEmpty(o) && mp.s(context, o))) {
                intent = new Intent("android.intent.action.VIEW", uri);
            } else {
                o = "com.huawei.appmarket";
                Uri.Builder buildUpon = uri.buildUpon();
                buildUpon.scheme("market");
                intent = new Intent("android.intent.action.VIEW", buildUpon.build());
            }
            if (!mp.dq(context, intent)) {
                return new com.ss.android.downloadlib.addownload.d.mn(6, 13);
            }
            if (mp.s(context, o) && !com.ss.android.socialbase.appdownloader.iw.s.mn()) {
                intent.setPackage(o);
            }
            if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_jump_market")) {
                intent.addFlags(335544320);
            } else if (!(context instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            if (com.ss.android.socialbase.downloader.mn.dq.ox().d("test_jump_market_failed") == 1) {
                com.ss.android.downloadlib.s.ox.dq().dq(false, "jump market error");
                return new com.ss.android.downloadlib.addownload.d.mn(6, 25);
            }
            intent.putExtra("start_only_for_android", true);
            context.startActivity(intent);
            return new com.ss.android.downloadlib.addownload.d.mn(5);
        } catch (Exception unused) {
            return new com.ss.android.downloadlib.addownload.d.mn(6, 14);
        }
    }

    public static com.ss.android.downloadlib.addownload.d.mn dq(final Context context, Uri uri, com.ss.android.downloadlib.addownload.d.s sVar) {
        com.ss.android.downloadad.api.dq.d dVar;
        if (context == null || !com.ss.android.downloadlib.d.o.dq(uri)) {
            return new com.ss.android.downloadlib.addownload.d.mn(6, 12);
        }
        try {
            final Intent intent = new Intent("android.intent.action.VIEW", uri);
            if (!mp.dq(context, intent)) {
                return new com.ss.android.downloadlib.addownload.d.mn(6, 13);
            }
            String o = com.ss.android.socialbase.appdownloader.iw.s.o();
            if (mp.s(context, o)) {
                intent.setPackage(o);
            }
            intent.addFlags(335544320);
            if (com.ss.android.socialbase.downloader.mn.dq.ox().d("test_jump_market_failed") == 1 && "local_test".equals(com.ss.android.downloadlib.addownload.no.o().ox)) {
                com.ss.android.downloadlib.s.ox.dq().dq(false, "jump market error");
                return new com.ss.android.downloadlib.addownload.d.mn(6, 25);
            }
            intent.putExtra("start_only_for_android", true);
            long optLong = com.ss.android.downloadlib.addownload.no.kk().optLong("market_jump_delay", 1000L);
            if (optLong > 0 && sVar != null && (dVar = sVar.s) != null && !dVar.bu()) {
                com.ss.android.downloadlib.ia.dq().d().post(new Runnable() { // from class: com.ss.android.downloadlib.mn.ia.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.ss.android.downloadlib.addownload.no.ox().dq(8, com.ss.android.downloadlib.addownload.no.getContext(), null, "浏览器跳转失败，正在前往应用商店", null, 0);
                    }
                });
            }
            com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.mn.ia.2
                @Override // java.lang.Runnable
                public void run() {
                    context.startActivity(intent);
                }
            }, optLong);
            return new com.ss.android.downloadlib.addownload.d.mn(5);
        } catch (Exception unused) {
            return new com.ss.android.downloadlib.addownload.d.mn(6, 14);
        }
    }

    public static com.ss.android.downloadlib.addownload.d.mn dq(Context context, com.ss.android.downloadlib.addownload.d.s sVar, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return new com.ss.android.downloadlib.addownload.d.mn(6, 11);
        }
        if (com.ss.android.socialbase.appdownloader.iw.s.mn() && mp.s(context, "com.sec.android.app.samsungapps")) {
            return p(context, str);
        }
        if (!sVar.f9152d.isAd() || !sVar.p.enableAM()) {
            return dq(context, Uri.parse("market://details?id=" + str));
        }
        JSONArray optJSONArray = com.ss.android.downloadlib.addownload.no.kk().optJSONArray("am_plans");
        if (com.ss.android.socialbase.appdownloader.iw.s.s() && com.ss.android.socialbase.appdownloader.iw.dq.dq(optJSONArray, "am_3")) {
            return d(context, sVar, str);
        }
        if (com.ss.android.socialbase.appdownloader.iw.s.iw() && com.ss.android.socialbase.appdownloader.iw.dq.dq(optJSONArray, "am_2")) {
            s(context, sVar, str);
            return new com.ss.android.downloadlib.addownload.d.mn(7, "am_m2");
        }
        if (com.ss.android.socialbase.appdownloader.iw.s.p() && com.ss.android.socialbase.appdownloader.iw.dq.dq(optJSONArray, "am_5")) {
            ia(context, sVar, str);
            return new com.ss.android.downloadlib.addownload.d.mn(7, "am_v1");
        }
        if (com.ss.android.socialbase.appdownloader.iw.s.s() && com.ss.android.socialbase.appdownloader.iw.dq.dq(optJSONArray, "am_7")) {
            DownloadController downloadController = sVar.p;
            if ((downloadController instanceof AdDownloadController) && ((AdDownloadController) downloadController).enableOppoAutoDownload()) {
                return p(context, sVar, str);
            }
        }
        if (com.ss.android.socialbase.appdownloader.iw.s.p() && com.ss.android.socialbase.appdownloader.iw.dq.dq(optJSONArray, "am_8") && mp.dq(mp.ox(context, "com.bbk.appstore"), "8.7.2.0") >= 0) {
            kk(context, sVar, str);
            return new com.ss.android.downloadlib.addownload.d.mn(7, "am_v2");
        }
        if ((com.ss.android.socialbase.appdownloader.iw.s.dq() || com.ss.android.socialbase.appdownloader.iw.s.d()) && com.ss.android.socialbase.appdownloader.iw.dq.dq(optJSONArray, "am_9")) {
            iw(context, sVar, str);
            return new com.ss.android.downloadlib.addownload.d.mn(7, "am_hr");
        }
        if ((com.ss.android.socialbase.appdownloader.iw.s.dq() || com.ss.android.socialbase.appdownloader.iw.s.d()) && com.ss.android.socialbase.appdownloader.iw.dq.dq(optJSONArray, "am_10")) {
            mn(context, sVar, str);
            return new com.ss.android.downloadlib.addownload.d.mn(7, "am_hr2");
        }
        DownloadController downloadController2 = sVar.p;
        if ((downloadController2 instanceof AdDownloadController) && ((AdDownloadController) downloadController2).enableOppoAutoDownload() && ((AdDownloadController) sVar.p).getDownloadMarketInterceptor() != null && sVar.f9152d.getDownloadSettings().optInt("is_use_obm_convert", 0) == 1) {
            ox(context, sVar, str);
            return new com.ss.android.downloadlib.addownload.d.mn(7, "am_kllk4");
        }
        return dq(context, Uri.parse("market://details?id=" + str));
    }

    public static com.ss.android.downloadlib.addownload.d.mn dq(Context context, String str) {
        return (context == null || TextUtils.isEmpty(str)) ? new com.ss.android.downloadlib.addownload.d.mn(6, 11) : (com.ss.android.socialbase.appdownloader.iw.s.mn() && mp.s(context, "com.sec.android.app.samsungapps")) ? p(context, str) : dq(context, com.ss.android.download.api.ox.dq.dq(str));
    }

    public static com.ss.android.downloadlib.addownload.d.mn dq(Context context, String str, com.ss.android.downloadad.api.dq.dq dqVar) {
        Intent dq2 = dq(context, dqVar, str, 1, (String) null);
        if (dq2 != null) {
            ig.dq().dq(dq, "tryOpenByPackage", "成功构造了跳转中转Activity的intent");
            com.ss.android.downloadlib.addownload.d.mn dq3 = dq(dq2, true, context, str, dqVar);
            if (dq3.getType() == 3) {
                return dq3;
            }
        }
        Intent mn = mp.mn(context, str);
        return mn == null ? new com.ss.android.downloadlib.addownload.d.mn(4, 22) : dq(mn, false, context, str, dqVar);
    }

    private static com.ss.android.downloadlib.addownload.d.mn dq(Intent intent, boolean z, Context context, String str, com.ss.android.downloadad.api.dq.dq dqVar) {
        if (Build.VERSION.SDK_INT >= 26 && com.ss.android.downloadlib.addownload.no.kk().optInt("open_package_mode") == 1 && com.ss.android.downloadlib.addownload.no.ig() != null && com.ss.android.downloadlib.addownload.no.ig().dq() && dqVar.fw() && !z) {
            TTDelegateActivity.d(str, dqVar);
            return new com.ss.android.downloadlib.addownload.d.mn(3);
        }
        intent.putExtra("start_only_for_android", true);
        try {
            context.startActivity(intent);
            return new com.ss.android.downloadlib.addownload.d.mn(3);
        } catch (Exception e2) {
            if (z) {
                ig.dq().d(dq, "realTryOpenByPackage", "调起中转Activity出现异常，可能是没接转化SDK，回退普通调起" + e2.getMessage());
                return new com.ss.android.downloadlib.addownload.d.mn(8, 23);
            }
            ig.dq().d(dq, "realTryOpenByPackage", "包名调起失败了，抛出异常" + e2.getMessage());
            return new com.ss.android.downloadlib.addownload.d.mn(4, 23);
        }
    }

    public static com.ss.android.downloadlib.addownload.d.mn dq(com.ss.android.downloadad.api.dq.d dVar, String str, String str2) {
        com.ss.android.downloadlib.addownload.d.mn d2 = d(str, dVar);
        return (com.ss.android.downloadlib.d.iw.dq(dVar) && d2.getType() == 2) ? dq(str2, dVar) : d2;
    }

    public static com.ss.android.downloadlib.addownload.d.mn dq(String str, com.ss.android.downloadad.api.dq.dq dqVar) {
        return dq(com.ss.android.downloadlib.addownload.no.getContext(), str, dqVar);
    }

    public static void dq(Activity activity, String str, long j) {
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        JSONObject jSONObject = new JSONObject();
        JSONObject kk = com.ss.android.downloadlib.addownload.no.kk();
        String optString = kk.optString("s");
        String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("ca"), optString);
        String dq3 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("cc"), optString);
        StringBuilder sb = new StringBuilder("market://details?id=");
        if (!TextUtils.isEmpty(dq2) && !TextUtils.isEmpty(dq3)) {
            awf.y(sb, str, "&", dq2, "=");
            sb.append(dq3);
        }
        if (ox(activity, Uri.parse(sb.toString()))) {
            d(s, jSONObject, -1, 10, tn.x("market://details?id=", str));
            com.ss.android.downloadlib.d.dq.dq("am_hr2", jSONObject, s, true);
        } else {
            d(s, jSONObject, 2, 10, tn.x("market://details?id=", str));
            com.ss.android.downloadlib.d.dq.dq(dq((Context) activity, Uri.parse("market://details?id=" + str)), s, true);
        }
    }

    public static void dq(Activity activity, String str, long j, String str2) {
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        JSONObject jSONObject = new JSONObject();
        JSONObject kk = com.ss.android.downloadlib.addownload.no.kk();
        String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("bv"), kk.optString("s"));
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("market").authority(BaseConstants.MARKET_URI_AUTHORITY_DETAIL).appendQueryParameter(TTDownloadField.TT_ID, str);
        if (!TextUtils.isEmpty(dq2)) {
            builder.appendQueryParameter(dq2, str2);
        }
        if (dq(activity, builder.build())) {
            d(s, jSONObject, -1, 8, tn.x("market://details?id=", str));
            com.ss.android.downloadlib.d.dq.dq("am_v2", jSONObject, s, true);
        } else {
            d(s, jSONObject, 2, 8, tn.x("market://details?id=", str));
            com.ss.android.downloadlib.d.dq.dq(dq((Context) activity, Uri.parse("market://details?id=" + str)), s, true);
        }
    }

    public static void dq(Activity activity, String str, long j, String str2, String str3) {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str3);
        } catch (JSONException unused) {
            jSONObject = new JSONObject();
        }
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        try {
            JSONObject kk = com.ss.android.downloadlib.addownload.no.kk();
            boolean dq2 = com.ss.android.socialbase.appdownloader.iw.dq.dq(kk, activity, com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("bg"), kk.optString("s")));
            HashMap<String, String> d2 = mp.d(new JSONObject(str2));
            if (dq2 && !d2.isEmpty() && dq(activity, str, d2)) {
                d(s, jSONObject, -1, 5, "market://details?id=" + str);
                com.ss.android.downloadlib.d.dq.dq("am_v1", jSONObject, s, true);
                return;
            }
            d(s, jSONObject, dq2 ? d2.isEmpty() ? 1 : 2 : 3, 5, "market://details?id=" + str);
            com.ss.android.downloadlib.d.dq.dq(dq((Context) activity, Uri.parse("market://details?id=" + str)), s, true);
        } catch (Exception unused2) {
            com.ss.android.downloadlib.d.dq.dq(dq(com.ss.android.downloadlib.addownload.no.getContext(), Uri.parse("market://details?id=" + str)), s, true);
            d(s, jSONObject, 4, 5, tn.x("market://details?id=", str));
        }
    }

    public static void dq(final Context context, String str, long j, String str2, boolean z) {
        JSONObject jSONObject = new JSONObject();
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        try {
            JSONObject kk = com.ss.android.downloadlib.addownload.no.kk();
            String optString = kk.optString("s");
            String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("br"), optString);
            String dq3 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("bs_1"), optString);
            String dq4 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("bs_2"), optString);
            String dq5 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("bs_3"), optString);
            String dq6 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("bt"), optString);
            String dq7 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("bu"), optString);
            StringBuilder sb = new StringBuilder("https://");
            sb.append(dq2);
            sb.append(dq3);
            sb.append(dq4);
            sb.append(dq5);
            sb.append(dq6);
            sb.append(dq7);
            final Intent intent = new Intent("android.intent.action.VIEW");
            intent.setPackage(str2);
            if (z) {
                sb.append("pkg=" + str);
                sb.append("&dl=true");
            } else {
                intent.addFlags(335544320);
            }
            mp.dq(jSONObject, "dl", Boolean.valueOf(z));
            intent.setData(Uri.parse(sb.toString()));
            intent.putExtra("start_only_for_android", true);
            long optLong = com.ss.android.downloadlib.addownload.no.kk().optLong("oppo_browser_jump_delay", 1000L);
            if (optLong > 0) {
                com.ss.android.downloadlib.ia.dq().d().post(new Runnable() { // from class: com.ss.android.downloadlib.mn.ia.3
                    @Override // java.lang.Runnable
                    public void run() {
                        com.ss.android.downloadlib.addownload.no.ox().dq(12, com.ss.android.downloadlib.addownload.no.getContext(), null, "正在前往浏览器下载", null, 0);
                    }
                });
            }
            com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.mn.ia.4
                @Override // java.lang.Runnable
                public void run() {
                    context.startActivity(intent);
                }
            }, optLong);
            com.ss.android.downloadad.api.dq.d dVar = s.s;
            if (dVar != null) {
                dVar.le(true);
            }
            com.ss.android.downloadlib.d.dq.dq("am_kllk3", jSONObject, s, true);
            d(s, jSONObject, -1, 7, sb.toString());
        } catch (Exception unused) {
            com.ss.android.downloadad.api.dq.d dVar2 = s.s;
            if (dVar2 != null) {
                dVar2.le(false);
            }
            com.ss.android.downloadlib.d.dq.dq(dq(com.ss.android.downloadlib.addownload.no.getContext(), Uri.parse("market://details?id=" + str), s), s, true);
            d(s, jSONObject, 2, 7, "market://details?id=" + str);
        }
    }

    public static void dq(Context context, String str, long j, boolean z) {
        JSONObject jSONObject = new JSONObject();
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        try {
            JSONObject kk = com.ss.android.downloadlib.addownload.no.kk();
            String optString = kk.optString("s");
            String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("aa"), optString);
            String dq3 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("ac"), optString);
            String dq4 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("af"), optString);
            boolean dq5 = com.ss.android.socialbase.appdownloader.iw.dq.dq(kk, context, dq3);
            StringBuilder sb = new StringBuilder(String.format(dq2, str, dq4, dq3));
            Intent intent = new Intent("android.intent.action.VIEW");
            String o = com.ss.android.socialbase.appdownloader.iw.s.o();
            if (mp.s(context, o)) {
                intent.setPackage(o);
            }
            if (z) {
                sb.append(com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("ae"), optString));
            } else {
                intent.addFlags(335544320);
            }
            mp.dq(jSONObject, "mf", Boolean.valueOf(dq5));
            mp.dq(jSONObject, "if", Boolean.valueOf(z));
            intent.setData(Uri.parse(sb.toString()));
            intent.putExtra("start_only_for_android", true);
            context.startActivity(intent);
            com.ss.android.downloadlib.d.dq.dq("am_kllk2", jSONObject, s, true);
            if (dq5) {
                d(s, jSONObject, -1, 3, sb.toString());
            } else {
                d(s, jSONObject, 3, 3, sb.toString());
            }
        } catch (Exception unused) {
            com.ss.android.downloadlib.d.dq.dq(dq(com.ss.android.downloadlib.addownload.no.getContext(), Uri.parse("market://details?id=" + str)), s, true);
            d(s, jSONObject, 2, 3, tn.x("market://details?id=", str));
        }
    }

    public static boolean dq(Activity activity, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.putExtra("start_only_for_android", true);
        String o = com.ss.android.socialbase.appdownloader.iw.s.o();
        if (mp.s(com.ss.android.downloadlib.addownload.no.getContext(), o)) {
            intent.setPackage(o);
        }
        if (!mp.dq(com.ss.android.downloadlib.addownload.no.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e2) {
            com.ss.android.downloadlib.s.ox.dq().dq(e2, "start v2");
            return false;
        }
    }

    private static boolean dq(Activity activity, String str, HashMap<String, String> hashMap) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("market://details?id=" + str));
        intent.putExtra("start_only_for_android", true);
        intent.putExtra("param", hashMap);
        String o = com.ss.android.socialbase.appdownloader.iw.s.o();
        if (mp.s(com.ss.android.downloadlib.addownload.no.getContext(), o)) {
            intent.setPackage(o);
        }
        if (!mp.dq(com.ss.android.downloadlib.addownload.no.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e2) {
            com.ss.android.downloadlib.s.ox.dq().dq(e2, "start v1");
            return false;
        }
    }

    public static boolean dq(Context context, com.ss.android.downloadlib.addownload.d.s sVar, String str, JSONObject jSONObject, boolean z, int i) {
        mp.dq(jSONObject, "download_scene", Integer.valueOf(sVar.r()));
        com.ss.android.downloadlib.p.dq.dq().d("market_click_open", jSONObject, sVar);
        com.ss.android.downloadlib.addownload.d.mn dq2 = dq(context, Uri.parse(str));
        String dq3 = mp.dq(dq2.d(), "open_market");
        int type = dq2.getType();
        if (type == 5) {
            com.ss.android.downloadlib.d.dq.dq(dq3, jSONObject, sVar, true);
        } else {
            if (type == 6) {
                mp.dq(jSONObject, "error_code", Integer.valueOf(dq2.dq()));
                mp.dq(jSONObject, "download_scene", Integer.valueOf(sVar.r()));
                com.ss.android.downloadlib.p.dq.dq().d("market_open_failed", jSONObject, sVar);
                return false;
            }
            if (type != 7) {
                return false;
            }
        }
        if (z) {
            com.ss.android.downloadlib.p.dq.dq().dq(sVar.dq, i);
        }
        return true;
    }

    private static void ia(final Context context, final com.ss.android.downloadlib.addownload.d.s sVar, final String str) {
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.mn.ia.7
            @Override // java.lang.Runnable
            public void run() {
                JSONObject kk = com.ss.android.downloadlib.addownload.no.kk();
                String optString = kk.optString("s");
                final JSONObject jSONObject = new JSONObject();
                String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("x"), optString);
                JSONObject jSONObject2 = new JSONObject();
                mp.dq(jSONObject2, "t", ada.COLUMN_VALUE);
                mp.dq(jSONObject2, "p", str);
                byte[] bytes = jSONObject2.toString().getBytes();
                com.ss.android.downloadlib.addownload.no.p().dq(dq2, com.ss.android.downloadlib.addownload.no.cd().dq(bytes, bytes.length), "application/octet-stream;tt-data=a", 0, new cd() { // from class: com.ss.android.downloadlib.mn.ia.7.1
                    @Override // com.ss.android.download.api.config.cd
                    public void dq(String str2) {
                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                        ia.d(context, str, str2, sVar, jSONObject);
                    }

                    @Override // com.ss.android.download.api.config.cd
                    public void dq(Throwable th) {
                        com.ss.android.downloadlib.d.dq.dq(ia.dq(context, Uri.parse("market://details?id=" + str)), sVar, true);
                        mp.dq(jSONObject, "ttdownloader_message", th != null ? th.getMessage() : "null");
                        ia.d(sVar, jSONObject, 7, 5, "market://details?id=" + str);
                    }
                });
            }
        });
    }

    private static void iw(final Context context, final com.ss.android.downloadlib.addownload.d.s sVar, final String str) {
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.mn.ia.6
            @Override // java.lang.Runnable
            public void run() {
                JSONObject kk = com.ss.android.downloadlib.addownload.no.kk();
                final JSONObject jSONObject = new JSONObject();
                try {
                    String optString = kk.optString("s");
                    String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("bw"), optString);
                    String dq3 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("bx"), optString);
                    String dq4 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("by"), optString);
                    Uri.Builder builder = new Uri.Builder();
                    builder.scheme("https").authority(dq2).appendPath(dq3).appendQueryParameter(dq4, str);
                    com.ss.android.downloadlib.addownload.no.p().dq("GET", builder.build().toString(), null, new cd() { // from class: com.ss.android.downloadlib.mn.ia.6.1
                        @Override // com.ss.android.download.api.config.cd
                        public void dq(String str2) {
                            if (!TextUtils.isEmpty(str2)) {
                                String ox = ia.ox(str2);
                                if (!TextUtils.isEmpty(ox)) {
                                    String p = ia.p(ox);
                                    if (!TextUtils.isEmpty(p)) {
                                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                        ia.d(context, sVar, str, p);
                                        return;
                                    }
                                }
                            }
                            com.ss.android.downloadlib.d.dq.dq(ia.dq(context, Uri.parse("market://details?id=" + str)), sVar, true);
                            ia.d(sVar, jSONObject, 10, 9, "market://details?id=" + str);
                        }

                        @Override // com.ss.android.download.api.config.cd
                        public void dq(Throwable th) {
                            com.ss.android.downloadlib.d.dq.dq(ia.dq(context, Uri.parse("market://details?id=" + str)), sVar, true);
                            mp.dq(jSONObject, "ttdownloader_message", th != null ? th.getMessage() : "null");
                            ia.d(sVar, jSONObject, 11, 9, "market://details?id=" + str);
                        }
                    });
                } catch (Exception e2) {
                    e2.printStackTrace();
                    ia.d(sVar, jSONObject, 4, 9, "market://details?id=" + str);
                }
            }
        });
    }

    private static void kk(Context context, com.ss.android.downloadlib.addownload.d.s sVar, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            TTDelegateActivity.dq(str, sVar.dq, "need_comment");
        } catch (Exception unused) {
            com.ss.android.downloadlib.d.dq.dq(dq(context, Uri.parse("market://details?id=" + str)), sVar, true);
            d(sVar, jSONObject, 9, 8, tn.x("market://details?id=", str));
        }
    }

    private static void mn(Context context, com.ss.android.downloadlib.addownload.d.s sVar, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            TTDelegateActivity.dq(str, sVar.dq);
        } catch (Exception unused) {
            com.ss.android.downloadlib.d.dq.dq(dq(context, Uri.parse("market://details?id=" + str)), sVar, true);
            d(sVar, jSONObject, 13, 10, tn.x("market://details?id=", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String ox(String str) {
        Matcher matcher = Pattern.compile("<input[\\s\\S]*>\\n").matcher(str);
        String group = matcher.find() ? matcher.group() : "";
        if (!group.equals(null) && group.length() > 0) {
            for (String str2 : group.split("\\n")) {
                if (str2.startsWith("<input")) {
                    for (String str3 : str2.split("\\s")) {
                        if (str3.startsWith("value")) {
                            return str3.substring(7, str3.length() - 1);
                        }
                    }
                }
            }
        }
        return null;
    }

    private static void ox(Context context, com.ss.android.downloadlib.addownload.d.s sVar, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            TTDelegateActivity.dq(context, str, sVar.dq);
        } catch (Exception unused) {
            com.ss.android.downloadlib.d.dq.dq(dq(context, Uri.parse("market://details?id=" + str)), sVar, true);
            d(sVar, jSONObject, 14, 11, tn.x("market://details?id=", str));
        }
    }

    public static boolean ox(Activity activity, Uri uri) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(uri);
        intent.putExtra("start_only_for_android", true);
        String o = com.ss.android.socialbase.appdownloader.iw.s.o();
        if (mp.s(com.ss.android.downloadlib.addownload.no.getContext(), o)) {
            intent.setPackage(o);
        }
        if (!mp.dq(com.ss.android.downloadlib.addownload.no.getContext(), intent)) {
            return false;
        }
        try {
            activity.startActivity(intent);
            return true;
        } catch (Exception e2) {
            com.ss.android.downloadlib.s.ox.dq().dq(e2, "start HM2");
            return false;
        }
    }

    public static boolean ox(Context context, String str) {
        if (context == null) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
            intent.putExtra("start_only_for_android", true);
            context.startActivity(intent);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private static com.ss.android.downloadlib.addownload.d.mn p(Context context, com.ss.android.downloadlib.addownload.d.s sVar, String str) {
        Intent intent = new Intent(context, (Class<?>) JumpKllkActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra("dl", true);
        intent.putExtra("p", str);
        intent.putExtra(TTDownloadField.TT_ID, sVar.dq);
        if (Build.VERSION.SDK_INT >= 29) {
            intent.putExtra("bk", "com.heytap.browser");
        } else if (mp.s(context, "com.android.browser")) {
            intent.putExtra("bk", "com.android.browser");
        } else {
            if (!mp.s(context, "com.coloros.browser")) {
                return dq(context, Uri.parse("market://details?id=" + str));
            }
            intent.putExtra("bk", "com.coloros.browser");
        }
        intent.putExtra("start_only_for_android", true);
        JSONObject jSONObject = new JSONObject();
        try {
            context.startActivity(intent);
            return new com.ss.android.downloadlib.addownload.d.mn(7, "am_kllk3");
        } catch (Throwable unused) {
            d(sVar, jSONObject, 1, 3, tn.x("market://details?id=", str));
            return dq(context, Uri.parse("market://details?id=" + str));
        }
    }

    private static com.ss.android.downloadlib.addownload.d.mn p(Context context, String str) {
        try {
            Uri parse = Uri.parse("https://www.samsungapps.com/appquery/appDetail.as?appId=" + str);
            Intent intent = new Intent();
            intent.setClassName("com.sec.android.app.samsungapps", "com.sec.android.app.samsungapps.Main");
            intent.setData(parse);
            if (!(context instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            intent.putExtra("start_only_for_android", true);
            context.startActivity(intent);
            return new com.ss.android.downloadlib.addownload.d.mn(5);
        } catch (Exception unused) {
            return new com.ss.android.downloadlib.addownload.d.mn(6, 14);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String p(String str) {
        List<String> pathSegments = Uri.parse(str).getPathSegments();
        if (pathSegments.size() > 0) {
            return (String) awf.q(1, pathSegments);
        }
        return null;
    }

    private static void s(final Context context, final com.ss.android.downloadlib.addownload.d.s sVar, final String str) {
        com.ss.android.downloadlib.s.dq().dq(new Runnable() { // from class: com.ss.android.downloadlib.mn.ia.5
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.downloadlib.d.dq.dq(ia.dq(context, Uri.parse("market://details?id=" + str)), sVar, true);
                JSONObject jSONObject = new JSONObject();
                try {
                    JSONObject kk = com.ss.android.downloadlib.addownload.no.kk();
                    Thread.sleep(kk.optInt("m2_delay_millis", 1000));
                    com.ss.android.downloadlib.dq.dq.dq.dq().dq(context, true);
                    com.ss.android.downloadlib.dq.dq.d dVar = new com.ss.android.downloadlib.dq.dq.d();
                    dVar.dq = 1;
                    dVar.f9216d = 0;
                    String dq2 = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString(ada.COLUMN_VALUE), kk.optString("s"));
                    dVar.ox = String.format(dq2, str);
                    com.ss.android.downloadlib.dq.dq.dq.dq().dq(dVar, (com.ss.android.downloadlib.dq.dq.p) null);
                    com.ss.android.downloadlib.dq.dq.dq.dq().d();
                    ia.d(sVar, jSONObject, -1, 2, String.format(dq2, str));
                } catch (Throwable th) {
                    th.printStackTrace();
                    ia.d(sVar, jSONObject, 1, 2, "market://details?id=" + str);
                }
            }
        });
    }
}

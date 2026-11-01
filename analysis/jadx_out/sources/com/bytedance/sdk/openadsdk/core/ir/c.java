package com.bytedance.sdk.openadsdk.core.ir;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.LocaleList;
import android.os.Looper;
import android.os.StatFs;
import android.text.TextUtils;
import android.webkit.WebSettings;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.component.sdk.annotation.HungeonFlag;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTRewardVideoAd;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.r.ws;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.awf;
import g.tn;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FilenameFilter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class c {
    private static volatile String cd = "";

    /* renamed from: d, reason: collision with root package name */
    public static volatile int f3030d = 0;
    public static volatile int dq = 0;

    /* renamed from: f, reason: collision with root package name */
    private static boolean f3031f = false;
    private static volatile boolean fw = false;
    private static volatile String gh = null;
    private static volatile String i = null;
    public static volatile int ia = -1;
    private static String ig = "upload_init";
    public static volatile long iw = 0;
    private static long jy = -1;
    public static String kk = null;
    public static volatile long mn = 0;
    private static int mp = 0;
    private static volatile String no = "";
    public static String o;
    public static volatile int ox;
    public static volatile String p;
    private static int q;
    private static volatile String r;
    public static volatile long s;

    /* renamed from: com.bytedance.sdk.openadsdk.core.ir.c$3, reason: invalid class name */
    public static class AnonymousClass3 implements Runnable {
        @Override // java.lang.Runnable
        public void run() {
            try {
                String unused = c.cd = c.jy(new SSWebView(com.bytedance.sdk.openadsdk.core.wp.getContext()).getUserAgentString());
                com.bytedance.sdk.openadsdk.core.ox.p.dq().p("sdk_local_web_ua", c.cd);
            } catch (Exception unused2) {
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.ir.c$4, reason: invalid class name */
    public static class AnonymousClass4 implements FilenameFilter {
        private Pattern dq = Pattern.compile("^cpu[0-9]+$");

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.dq.matcher(str).matches();
        }
    }

    private static boolean c() {
        try {
            return "mounted".equals(com.bytedance.sdk.openadsdk.h.ox.dq());
        } catch (Throwable unused) {
            return false;
        }
    }

    public static long cd() {
        try {
            if (!c()) {
                return 0L;
            }
            StatFs statFs = new StatFs(com.bytedance.sdk.openadsdk.api.plugin.d.dq(com.bytedance.sdk.openadsdk.core.wp.getContext(), null).getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ig.p("ToolUtils", th.getMessage());
            return 0L;
        }
    }

    public static String cd(j jVar) {
        return !TextUtils.isEmpty(jVar.lk()) ? jVar.lk() : !TextUtils.isEmpty(jVar.gl()) ? jVar.gl() : "";
    }

    private static String cd(String str) {
        try {
            return Uri.parse(str).buildUpon().appendQueryParameter("aid", "1371").appendQueryParameter("device_platform", "android").appendQueryParameter("version_code", o()).toString();
        } catch (Exception unused) {
            return str;
        }
    }

    private static int d(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optInt("ut", 0);
        }
        return 0;
    }

    public static long d(Context context) {
        if (iw > 0) {
            return iw;
        }
        long d2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().d("free_storage", 0L);
        iw = d2;
        return d2;
    }

    public static Intent d(Context context, String str) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT < 33 && !launchIntentForPackage.hasCategory("android.intent.category.LAUNCHER")) {
            launchIntentForPackage.addCategory("android.intent.category.LAUNCHER");
        }
        launchIntentForPackage.setPackage(null);
        launchIntentForPackage.addFlags(2097152);
        launchIntentForPackage.addFlags(C.ENCODING_PCM_MU_LAW);
        return launchIntentForPackage;
    }

    public static String d(int i2) {
        switch (i2) {
            case 1:
                return "banner_ad";
            case 2:
                return "interaction";
            case 3:
            case 4:
                return "splash_ad";
            case 5:
            default:
                return "embeded_ad";
            case 6:
                return "stream";
            case 7:
                return "rewarded_video";
            case 8:
                return "fullscreen_interstitial_ad";
            case 9:
                return "draw_ad";
        }
    }

    public static String d(long j, long j2) {
        return String.valueOf(((int) (Math.abs(j2 - j) / AdBaseConstants.DEFAULT_DELAY_TIMESTAMP)) + 1);
    }

    public static String d(j jVar) {
        if (jVar == null) {
            return null;
        }
        try {
            return d(ia(jVar));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String d(j jVar, String str) {
        io gs;
        if (jVar == null || (gs = jVar.gs()) == null || gs.d() != 1 || TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        if (str.indexOf("?") != -1) {
            sb.append("&");
        } else {
            sb.append("?");
        }
        sb.append("open_method=");
        if (com.bytedance.sdk.openadsdk.core.d.dq.d.ia.ox().dq()) {
            sb.append(gs.iw());
            return sb.toString();
        }
        sb.append(2);
        return sb.toString();
    }

    public static Map<String, Object> d(boolean z, j jVar, long j, long j2, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("creative_id", jVar.fx());
        hashMap.put("load_time", Long.valueOf(j));
        if (!z) {
            hashMap.put("error_code", Long.valueOf(j2));
            if (TextUtils.isEmpty(str)) {
                str = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
            }
            hashMap.put("error_message", str);
        }
        return hashMap;
    }

    public static JSONObject d(String str) {
        if (!TextUtils.isEmpty(str) && str != null && !str.isEmpty()) {
            try {
                return new JSONObject(str);
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static void d(Intent intent) {
        if (intent == null) {
            return;
        }
        Uri data = intent.getData();
        if (data == null) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        } else if (com.bytedance.sdk.openadsdk.core.wp.d().r(data.getScheme())) {
            intent.addFlags(805339136);
        } else {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
    }

    public static boolean d() {
        try {
            PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.wp.getContext().getPackageManager().getPackageInfo(com.bytedance.sdk.openadsdk.core.wp.getContext().getPackageName(), 0);
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd", Locale.ROOT);
            return simpleDateFormat.format(Long.valueOf(System.currentTimeMillis())).compareTo(simpleDateFormat.format(Long.valueOf(packageInfo.firstInstallTime))) > 0;
        } catch (Throwable unused) {
            return true;
        }
    }

    private static boolean d(Context context, Intent intent) {
        try {
            List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 65536);
            if (queryIntentActivities != null) {
                if (queryIntentActivities.size() > 0) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean d(Context context, Intent intent, boolean z) {
        Boolean dq2;
        Uri data = intent.getData();
        if (data == null) {
            return false;
        }
        String uri = data.toString();
        if (z && (dq2 = kx.dq(uri, AdBaseConstants.DEFAULT_DELAY_TIMESTAMP)) != null) {
            return dq2.booleanValue();
        }
        boolean d2 = d(context, intent);
        kx.dq(uri, Boolean.valueOf(d2));
        return d2;
    }

    public static int dq(j jVar) {
        int o2 = com.bytedance.sdk.openadsdk.core.wp.d().o();
        if (o2 == -1) {
            try {
                ws ny = jVar.ny();
                j.dq tv = jVar.tv();
                if (ny != null) {
                    String iw2 = ny.iw();
                    if (TextUtils.isEmpty(iw2)) {
                        return 0;
                    }
                    return Integer.valueOf(iw2).intValue();
                }
                if (tv != null) {
                    String ig2 = tv.ig();
                    if (TextUtils.isEmpty(ig2)) {
                        return 0;
                    }
                    return Integer.valueOf(ig2).intValue();
                }
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ig.p("tl", e2.getMessage());
                return 0;
            }
        } else if (o2 != 0 && o2 == 1) {
            return 1;
        }
        return 0;
    }

    public static int dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        if (dVar == null) {
            return 0;
        }
        try {
            return Integer.parseInt(dVar.mn());
        } catch (Exception unused) {
            return 0;
        }
    }

    public static int dq(Class cls) {
        if (TTWebPageActivity.class.equals(cls)) {
            return 0;
        }
        if (TTNativePageActivity.class.equals(cls)) {
            return 2;
        }
        if (TTVideoWebPageActivity.class.equals(cls)) {
            return 3;
        }
        if (TTVideoScrollWebPageActivity.class.equals(cls)) {
            return 4;
        }
        return TTPlayableWebPageActivity.class.equals(cls) ? 1 : 0;
    }

    public static int dq(String str) {
        str.getClass();
        switch (str) {
            case "banner_ad":
                return 2;
            case "rewarded_video":
                return 7;
            case "fullscreen_interstitial_ad":
                return 5;
            case "splash_ad":
            case "cache_splash_ad":
                return 4;
            case "interaction":
                return 3;
            case "draw_ad":
                return 6;
            default:
                return 1;
        }
    }

    public static long dq(long j) {
        return (j + TimeZone.getDefault().getOffset(j)) / AdBaseConstants.DEFAULT_DELAY_TIMESTAMP;
    }

    public static long dq(Context context) {
        if (s > 0) {
            return s;
        }
        long d2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().d("internal_storage", 0L);
        s = d2;
        return d2;
    }

    private static long dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optLong("uid", 0L);
        }
        return 0L;
    }

    public static Bundle dq(int i2, Bundle bundle) {
        int i3 = bundle.getInt("callback_extra_key_reward_amount");
        String string = bundle.getString("callback_extra_key_reward_name");
        int i4 = bundle.getInt("callback_extra_key_error_code");
        String string2 = bundle.getString("callback_extra_key_error_msg");
        float f2 = bundle.getFloat("callback_extra_key_reward_propose");
        boolean z = bundle.getBoolean("callback_extra_key_video_complete_reward");
        boolean z2 = bundle.getBoolean("callback_extra_key_is_server_verify");
        Bundle bundle2 = new Bundle();
        bundle2.putInt(TTRewardVideoAd.REWARD_EXTRA_KEY_ERROR_CODE, i4);
        bundle2.putString(TTRewardVideoAd.REWARD_EXTRA_KEY_ERROR_MSG, string2);
        bundle2.putString(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_NAME, string);
        bundle2.putInt(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_AMOUNT, i3);
        bundle2.putFloat(TTRewardVideoAd.REWARD_EXTRA_KEY_REWARD_PROPOSE, f2);
        bundle2.putBoolean(TTRewardVideoAd.REWARD_EXTRA_KEY_IS_SERVER_VERIFY, z2);
        if (i2 == 0) {
            bundle2.putBoolean(TTRewardVideoAd.REWARD_EXTRA_KEY_HAS_VIDEO_COMPLETE_REWARD, z);
        }
        return bundle2;
    }

    public static j dq(Intent intent) {
        if (intent == null) {
            return null;
        }
        try {
            String stringExtra = intent.getStringExtra("multi_process_materialmeta");
            if (!TextUtils.isEmpty(stringExtra)) {
                j dq2 = com.bytedance.sdk.openadsdk.core.d.dq(new JSONObject(stringExtra));
                if (dq2 != null) {
                    return dq2;
                }
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.d("ToolUtils", "getMaterialMeta from intent failed", e2);
        }
        String stringExtra2 = intent.getStringExtra("multi_process_materialmeta_key");
        j jVar = (j) com.bytedance.sdk.openadsdk.core.e.d(stringExtra2, j.class);
        if (jVar != null) {
            return jVar;
        }
        com.bytedance.sdk.component.mn.dq dq3 = n.dq("sp_meta");
        String ox2 = com.bytedance.sdk.component.utils.dq.ox(dq3.d(stringExtra2, ""));
        try {
            if (!TextUtils.isEmpty(ox2)) {
                return com.bytedance.sdk.openadsdk.core.d.dq(new JSONObject(ox2));
            }
            com.bytedance.sdk.component.utils.ig.p("ToolUtils", "getMaterialMeta from keva failed , md5" + stringExtra2);
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            com.bytedance.sdk.component.utils.ig.d("ToolUtils", "getMaterialMeta from keva failed", e3);
            return null;
        } finally {
            dq3.dq(stringExtra2);
        }
    }

    private static File dq(String str, String str2) {
        String str3 = System.getenv("EXTERNAL_STORAGE");
        if (str3 == null) {
            str3 = "/sdcard";
        }
        return new File(str3, awf.t("Android/", str, "/", str2));
    }

    public static String dq(int i2) {
        switch (i2) {
            case 1:
                return "embeded_ad_landingpage";
            case 2:
                return "banner_ad_landingpage";
            case 3:
                return "interaction_landingpage";
            case 4:
                return "splash_ad_landingpage";
            case 5:
                return "fullscreen_interstitial_ad_landingpage";
            case 6:
                return "draw_ad_landingpage";
            case 7:
                return "rewarded_video_landingpage";
            default:
                return null;
        }
    }

    public static String dq(j jVar, String str) {
        JSONObject hg = jVar.hg();
        return hg != null ? hg.optString("rit", str) : str;
    }

    public static String dq(String str, boolean z) {
        return dq(str, z, 0);
    }

    private static String dq(String str, boolean z, int i2) {
        String iw2 = i2 == 0 ? com.bytedance.sdk.openadsdk.core.wp.d().iw() : f(com.bytedance.sdk.openadsdk.core.wp.d().ig());
        if (com.bytedance.sdk.openadsdk.tools.d.dq() && com.bytedance.sdk.openadsdk.core.no.ia().uh() && TextUtils.equals(str, "/api/ad/union/sdk/get_ads/")) {
            iw2 = com.bytedance.sdk.openadsdk.core.no.ia().xz();
            str = "/ad_union_qa/sdk/get_ads";
        }
        String ad = tn.ad("https://", iw2, str);
        if (u.dq()) {
            if (!z) {
                ad = u.d(ad);
            }
            String dq2 = u.dq("testIp.txt");
            if (dq2 != null) {
                ad = u.dq(ad, dq2);
            }
        }
        return z ? cd(ad) : ad;
    }

    public static String dq(int[] iArr) {
        if (iArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (i2 < iArr.length - 1) {
                sb.append(iArr[i2] + ",");
            } else {
                sb.append(iArr[i2]);
            }
        }
        return sb.toString();
    }

    public static List<String> dq() {
        ArrayList arrayList = new ArrayList();
        if (com.bytedance.sdk.openadsdk.core.wp.d().tl() && com.bytedance.sdk.openadsdk.core.no.ia().kk().d()) {
            Intent intent = new Intent("android.intent.action.MAIN");
            PackageManager packageManager = com.bytedance.sdk.openadsdk.core.wp.getContext().getPackageManager();
            if (Build.VERSION.SDK_INT >= 23) {
                Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent, 131072).iterator();
                while (it.hasNext()) {
                    ActivityInfo activityInfo = it.next().activityInfo;
                    if (activityInfo != null) {
                        String str = activityInfo.packageName;
                        if (!TextUtils.isEmpty(str) && !arrayList.contains(str)) {
                            arrayList.add(str);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static Map<String, Object> dq(long j, j jVar, com.bykv.vk.openvk.component.video.api.dq dqVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("video_start_duration", Long.valueOf(j));
        if (jVar != null) {
            if (!TextUtils.isEmpty(jVar.fx())) {
                hashMap.put("creative_id", jVar.fx());
            }
            com.bykv.vk.openvk.component.video.api.ox.ox q2 = pa.q(jVar);
            if (q2 != null) {
                hashMap.put("video_resolution", q2.kk());
                hashMap.put("video_size", Long.valueOf(q2.s()));
            }
        }
        dq(hashMap, dqVar);
        return hashMap;
    }

    public static Map<String, Object> dq(j jVar, long j, com.bykv.vk.openvk.component.video.api.dq dqVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("creative_id", jVar.fx());
        hashMap.put("buffers_time", Long.valueOf(j));
        com.bykv.vk.openvk.component.video.api.ox.ox q2 = pa.q(jVar);
        if (q2 != null) {
            hashMap.put("video_size", Long.valueOf(q2.s()));
            hashMap.put("video_resolution", q2.kk());
        }
        dq(hashMap, dqVar);
        return hashMap;
    }

    public static Map<String, Object> dq(boolean z, j jVar, long j, long j2, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("creative_id", jVar.fx());
        hashMap.put("load_time", Long.valueOf(j));
        com.bykv.vk.openvk.component.video.api.ox.ox q2 = pa.q(jVar);
        if (q2 != null) {
            hashMap.put("video_size", Long.valueOf(q2.s()));
            hashMap.put("video_resolution", q2.kk());
            hashMap.put("video_preload_size", Long.valueOf(Build.VERSION.SDK_INT >= 23 ? q2.f() : q2.s()));
        }
        if (!z) {
            hashMap.put("error_code", Long.valueOf(j2));
            if (TextUtils.isEmpty(str)) {
                str = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
            }
            hashMap.put("error_message", str);
        }
        return hashMap;
    }

    public static JSONObject dq(Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), entry.getValue());
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    public static void dq(final Context context, final j jVar) {
        if (f3031f) {
            return;
        }
        f3031f = true;
        com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("check_hardware_permission_info") { // from class: com.bytedance.sdk.openadsdk.core.ir.c.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (Build.VERSION.SDK_INT < 23) {
                        return;
                    }
                    StringBuilder sb = new StringBuilder();
                    StringBuilder sb2 = new StringBuilder();
                    StringBuilder sb3 = new StringBuilder();
                    if (com.bytedance.sdk.openadsdk.q.s.dq(context, com.bytedance.sdk.openadsdk.q.s.ig)) {
                        sb.append("Microphone_");
                        sb2.append("1");
                        if (com.bytedance.sdk.openadsdk.q.s.d(context, "android.permission.RECORD_AUDIO")) {
                            sb3.append("1");
                        } else {
                            sb3.append("0");
                        }
                    } else {
                        sb2.append("0");
                        sb3.append("0");
                    }
                    if (com.bytedance.sdk.openadsdk.q.s.dq(context, com.bytedance.sdk.openadsdk.q.s.no)) {
                        sb.append("Magetometer_");
                        sb2.append("1");
                        sb3.append("1");
                    } else {
                        sb2.append("0");
                        sb3.append("0");
                    }
                    if (com.bytedance.sdk.openadsdk.q.s.dq(context, com.bytedance.sdk.openadsdk.q.s.o)) {
                        sb.append("Accelerometer_");
                        sb2.append("1");
                        sb3.append("1");
                    } else {
                        sb2.append("0");
                        sb3.append("0");
                    }
                    if (com.bytedance.sdk.openadsdk.q.s.dq(context, com.bytedance.sdk.openadsdk.q.s.kk)) {
                        sb.append("Gyro_");
                        sb2.append("1");
                        sb3.append("1");
                    } else {
                        sb2.append("0");
                        sb3.append("0");
                    }
                    if (com.bytedance.sdk.openadsdk.q.s.dq(context, com.bytedance.sdk.openadsdk.q.s.ia)) {
                        sb.append("Camera_");
                        sb2.append("1");
                        if (com.bytedance.sdk.openadsdk.q.s.d(context, "android.permission.CAMERA")) {
                            sb3.append("1");
                        } else {
                            sb3.append("0");
                        }
                    } else {
                        sb2.append("0");
                        sb3.append("0");
                    }
                    if (com.bytedance.sdk.openadsdk.q.s.dq(context, com.bytedance.sdk.openadsdk.q.s.mn)) {
                        sb.append("Photo");
                        sb2.append("1");
                        if (com.bytedance.sdk.openadsdk.q.s.dq(context)) {
                            sb3.append("1");
                        } else {
                            sb3.append("0");
                        }
                    } else {
                        sb2.append("0");
                        sb3.append("0");
                    }
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("playable_available_hardware_name", sb.toString());
                    jSONObject.put("playable_available_hardware_code", sb2.toString());
                    jSONObject.put("playable_available_hardware_auth_code", sb3.toString());
                    jSONObject.put("playable_event", "PL_sdk_hardware_detect");
                    com.bytedance.sdk.openadsdk.core.ig.ox.d(jVar, "embeded_ad", "playable_track", jSONObject);
                } catch (Throwable unused) {
                }
            }
        });
    }

    public static void dq(Intent intent, j jVar) {
        if (jVar == null) {
            return;
        }
        if (!com.bytedance.sdk.openadsdk.core.wp.d().fx()) {
            intent.putExtra("multi_process_materialmeta", jVar.ve().toString());
            return;
        }
        String str = jVar.hashCode() + jVar.el();
        intent.putExtra("multi_process_materialmeta_key", str);
        if (com.bytedance.sdk.component.utils.fw.dq(com.bytedance.sdk.openadsdk.core.wp.getContext())) {
            com.bytedance.sdk.openadsdk.core.e.dq(str, jVar);
        } else {
            n.dq("sp_meta").dq(str, com.bytedance.sdk.component.utils.dq.d(jVar.ve().toString()));
        }
    }

    private static void dq(Map<String, Object> map, com.bykv.vk.openvk.component.video.api.dq dqVar) {
        if (map.containsKey("video_resolution") || dqVar == null) {
            return;
        }
        try {
            map.put("video_resolution", String.format(Locale.getDefault(), "%d×%d", Integer.valueOf(dqVar.no()), Integer.valueOf(dqVar.ig())));
        } catch (Throwable unused) {
        }
    }

    public static void dq(Map<String, Object> map, j jVar) {
        if (jVar == null || map == null) {
            return;
        }
        if (!com.bytedance.sdk.openadsdk.core.wp.d().fx()) {
            map.put("multi_process_materialmeta", jVar.ve().toString());
            return;
        }
        String str = jVar.hashCode() + jVar.el();
        map.put("multi_process_materialmeta_key", str);
        if (com.bytedance.sdk.component.utils.fw.dq(com.bytedance.sdk.openadsdk.core.wp.getContext())) {
            com.bytedance.sdk.openadsdk.core.e.dq(str, jVar);
        } else {
            n.dq("sp_meta").dq(str, com.bytedance.sdk.component.utils.dq.d(jVar.ve().toString()));
        }
    }

    public static boolean dq(long j, long j2) {
        long j3 = j2 - j;
        return j3 < AdBaseConstants.DEFAULT_DELAY_TIMESTAMP && j3 > -86400000 && dq(j) == dq(j2);
    }

    public static boolean dq(Context context, Intent intent) {
        if (intent == null || context == null || !iw(context)) {
            return false;
        }
        return d(context, intent, false);
    }

    public static boolean dq(Context context, Intent intent, boolean z) {
        if (intent == null || context == null || !iw(context)) {
            return false;
        }
        return d(context, intent, z);
    }

    public static boolean dq(Context context, String str) {
        Intent d2;
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                if (iw(context)) {
                    if (!ox(context, str) || (d2 = d(context, str)) == null) {
                        return false;
                    }
                    d2.putExtra("START_ONLY_FOR_ANDROID", true);
                    com.bytedance.sdk.component.utils.d.dq(context, d2, null);
                    return true;
                }
                Intent d3 = d(context, str);
                if (d3 == null) {
                    return false;
                }
                d3.putExtra("START_ONLY_FOR_ANDROID", true);
                context.startActivity(d3);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static boolean dq(String str, AtomicInteger atomicInteger) {
        if (TextUtils.isEmpty(str) || atomicInteger == null) {
            return true;
        }
        if (atomicInteger.get() == 1) {
            return false;
        }
        if (str.startsWith("bytedance") || str.startsWith("nativeapp")) {
            return true;
        }
        if (!str.startsWith("https:") && !str.startsWith("http:")) {
            return true;
        }
        Set<String> set = com.bytedance.sdk.openadsdk.core.r.n.dq;
        if (set.isEmpty()) {
            h();
        }
        String host = Uri.parse(str).getHost();
        if (TextUtils.isEmpty(host) || set.isEmpty()) {
            return true;
        }
        for (String str2 : set) {
            if (!TextUtils.isEmpty(str2) && host.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean dq(boolean z, boolean z2, j jVar, String str) {
        if (jVar == null) {
            return false;
        }
        if (!jVar.fn() || z || z2) {
            return false;
        }
        String ae = jVar.ae();
        if (TextUtils.isEmpty(ae) && jVar.kf() != null && jVar.kf().ox() == 1 && !TextUtils.isEmpty(jVar.kf().d())) {
            ae = jVar.kf().d();
        }
        String str2 = ae;
        if (!TextUtils.isEmpty(str2)) {
            com.bytedance.sdk.openadsdk.core.wn.dq(com.bytedance.sdk.openadsdk.core.wp.getContext(), str2, jVar, dq(str), str, (Map<String, Object>) null);
            return true;
        }
        return false;
    }

    public static String e() {
        return kk() + ".openadsdk.permission.TT_PANGOLIN";
    }

    public static int f() {
        if (ox > 0) {
            return ox;
        }
        int d2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().d("cpu_min_freq", 0);
        ox = d2;
        return d2;
    }

    public static String f(j jVar) {
        if (jVar == null) {
            return "";
        }
        com.bytedance.sdk.openadsdk.core.r.p gm = jVar.gm();
        String d2 = gm != null ? gm.d() : null;
        return TextUtils.isEmpty(d2) ? jVar.kk() : d2;
    }

    private static String f(String str) {
        if (TextUtils.isEmpty(str)) {
            kk = "empty";
            return "api-access.pangolin-sdk-toutiao1.com";
        }
        if (str.contains("api-access")) {
            kk = null;
            return str;
        }
        kk = str;
        return "api-access.pangolin-sdk-toutiao1.com";
    }

    public static long fw() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return statFs.getBlockCountLong() * statFs.getBlockSizeLong();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String fw(j jVar) {
        return (jVar.gm() == null || TextUtils.isEmpty(jVar.gm().ox())) ? !TextUtils.isEmpty(jVar.w()) ? jVar.w() : !TextUtils.isEmpty(jVar.lk()) ? jVar.lk() : "" : jVar.gm().ox();
    }

    private static String fw(String str) {
        if (TextUtils.isEmpty(str)) {
            o = "empty";
            return "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/";
        }
        if (str.contains("service/2/app_log")) {
            o = null;
            return str;
        }
        o = str;
        return "log-api.pangolin-sdk-toutiao-b.com/service/2/app_log/";
    }

    public static JSONObject gh(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.hg();
    }

    public static boolean gh() {
        try {
            if (!new File("/system/bin/su").exists()) {
                if (!new File("/system/xbin/su").exists()) {
                    return false;
                }
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void h() {
        String vk = com.bytedance.sdk.openadsdk.core.wp.d().vk();
        try {
            Matcher matcher = Pattern.compile("\\|\\|([a-zA-Z0-9.-]+)\\^").matcher(vk);
            while (matcher.find()) {
                String group = matcher.group(1);
                if (!TextUtils.isEmpty(group)) {
                    com.bytedance.sdk.openadsdk.core.r.n.dq.add(group);
                }
            }
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(vk)) {
            return;
        }
        Set<String> set = com.bytedance.sdk.openadsdk.core.r.n.dq;
        if (set.isEmpty()) {
            set.add("empty");
        }
    }

    public static String i() {
        return u.d("https://applog.bytedance.net/service/2/app_log_test/");
    }

    public static boolean i(j jVar) {
        if (jVar == null) {
            return true;
        }
        int mn2 = com.bytedance.sdk.openadsdk.core.wp.d().mn(kk(jVar));
        if (mn2 == 1) {
            return com.bytedance.sdk.component.utils.q.p(com.bytedance.sdk.openadsdk.core.wp.getContext());
        }
        if (mn2 == 2) {
            return com.bytedance.sdk.component.utils.q.s(com.bytedance.sdk.openadsdk.core.wp.getContext()) || com.bytedance.sdk.component.utils.q.p(com.bytedance.sdk.openadsdk.core.wp.getContext()) || com.bytedance.sdk.component.utils.q.iw(com.bytedance.sdk.openadsdk.core.wp.getContext());
        }
        if (mn2 != 3) {
            return mn2 != 5 || com.bytedance.sdk.component.utils.q.p(com.bytedance.sdk.openadsdk.core.wp.getContext()) || com.bytedance.sdk.component.utils.q.iw(com.bytedance.sdk.openadsdk.core.wp.getContext());
        }
        return false;
    }

    public static int ia(j jVar) {
        JSONObject hg = jVar.hg();
        if (hg != null) {
            return hg.optInt("ad_slot_type", 0);
        }
        return 0;
    }

    public static long ia(Context context) {
        int i2 = -1;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                i2 = context.getApplicationInfo().minSdkVersion;
                com.bytedance.sdk.component.utils.ig.dq("ToolUtils", "minSdkVersion = ", Integer.valueOf(i2));
            }
        } catch (Throwable unused) {
        }
        return i2;
    }

    public static String ia() {
        return UUID.randomUUID().toString();
    }

    public static String ia(String str) {
        return dq(str, false, 1);
    }

    public static double ig(j jVar) {
        return ox(jVar.hg());
    }

    public static String ig() {
        if (!TextUtils.isEmpty(p) && !p.equals("0")) {
            return p;
        }
        String ox2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().ox("total_memory", "0");
        p = ox2;
        return ox2;
    }

    private static String ir() {
        String str;
        long j;
        try {
            String ox2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().ox("sdk_local_web_ua", "");
            if (TextUtils.isEmpty(ox2)) {
                str = null;
                j = 0;
            } else {
                JSONObject jSONObject = new JSONObject(ox2);
                str = jSONObject.getString("value");
                j = jSONObject.getLong("time");
                cd = str;
            }
            if (TextUtils.isEmpty(str)) {
                u();
            } else if (System.currentTimeMillis() - j > 259200000) {
                com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("tt-webua") { // from class: com.bytedance.sdk.openadsdk.core.ir.c.2
                    @Override // java.lang.Runnable
                    public void run() {
                        c.u();
                    }
                });
            }
        } catch (Throwable unused) {
        }
        return cd;
    }

    public static Class iw(int i2) {
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? TTWebPageActivity.class : TTVideoScrollWebPageActivity.class : TTVideoWebPageActivity.class : TTNativePageActivity.class : TTPlayableWebPageActivity.class;
    }

    public static String iw() {
        String str;
        try {
            str = System.getProperty("http.agent");
        } catch (Exception unused) {
            str = "unKnow";
        }
        StringBuilder sb = new StringBuilder();
        if (str == null) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(";");
        if (lastIndexOf != -1 && str.length() > lastIndexOf) {
            int i2 = lastIndexOf + 1;
            String substring = str.substring(0, i2);
            str = substring.concat(" " + Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry() + ";").concat(str.substring(i2));
        }
        int length = str.length();
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            if (charAt <= 31 || charAt >= 127) {
                sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0040 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean iw(Context context) {
        boolean z;
        int checkSelfPermission;
        if (context == null) {
            context = com.bytedance.sdk.openadsdk.core.wp.getContext();
        }
        if (context == null) {
            com.bytedance.sdk.component.utils.ig.d("params context is null");
            return false;
        }
        if (context.getApplicationInfo().targetSdkVersion >= 30 && Build.VERSION.SDK_INT >= 30) {
            checkSelfPermission = context.checkSelfPermission("android.permission.QUERY_ALL_PACKAGES");
            if (checkSelfPermission != 0) {
                z = true;
                StringBuilder sb = new StringBuilder("can query all package = ");
                sb.append(!z);
                com.bytedance.sdk.component.utils.ig.dq("ToolUtils", sb.toString());
                return z;
            }
        }
        z = false;
        StringBuilder sb2 = new StringBuilder("can query all package = ");
        sb2.append(!z);
        com.bytedance.sdk.component.utils.ig.dq("ToolUtils", sb2.toString());
        if (z) {
        }
    }

    public static boolean iw(j jVar) {
        if (jVar == null) {
            return false;
        }
        int ia2 = ia(jVar);
        return ia2 == 3 || ia2 == 4;
    }

    public static boolean iw(String str) {
        try {
            return Pattern.compile("[一-龥]").matcher(str).find();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int jy() {
        if (f3030d > 0) {
            return f3030d;
        }
        int d2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().d("cpu_max_freq", 0);
        f3030d = d2;
        return d2;
    }

    public static int jy(j jVar) {
        JSONObject hg = jVar.hg();
        if (hg != null) {
            return hg.optInt("price", 0);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String jy(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if (charAt <= 31 || charAt >= 127) {
                sb.append(String.format("\\u%04x", Integer.valueOf(charAt)));
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static int k() {
        try {
            return (int) ((Runtime.getRuntime().freeMemory() * 1.0d) / 1048576.0d);
        } catch (Exception unused) {
            return -1;
        }
    }

    public static String k(j jVar) {
        if (jVar == null) {
            return "";
        }
        String fg = jVar.fg();
        return (!TextUtils.isEmpty(fg) || jVar.hy() == null) ? fg : jVar.hy().ig();
    }

    public static int kk(j jVar) {
        JSONObject hg = jVar.hg();
        if (hg != null) {
            return hg.optInt("rit", 0);
        }
        return 0;
    }

    @HungeonFlag
    public static String kk() {
        if (!TextUtils.isEmpty(i)) {
            return i;
        }
        if (com.bytedance.sdk.openadsdk.core.wp.getContext() != null) {
            try {
                i = com.bytedance.sdk.openadsdk.core.wp.getContext().getPackageName();
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.d("ToolUtils", "ToolUtils getPackageName throws exception :", th);
            }
        }
        return i;
    }

    public static String kk(Context context) {
        try {
            return context.getResources().getString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.labelRes);
        } catch (Exception unused) {
            return "";
        }
    }

    public static String kk(String str) {
        return TextUtils.isEmpty(str) ? "" : str.contains("KLLK") ? str.replace("KLLK", BaseConstants.ROM_OPPO_UPPER_CONSTANT) : str.contains("kllk") ? str.replace("kllk", "oppo") : "";
    }

    public static void kx() {
        if (fw) {
            return;
        }
        fw = true;
        com.bytedance.sdk.component.no.mn.dq dq2 = com.bytedance.sdk.component.no.mn.dq.dq();
        dq2.dq("open_sass_live", new com.bytedance.sdk.openadsdk.core.ia.dq.d.o());
        dq2.dq("open_miniapp", new com.bytedance.sdk.openadsdk.core.ia.dq.d.no());
        dq2.dq("open_landing_page", new com.bytedance.sdk.openadsdk.core.ia.dq.d.kk());
        if (com.bytedance.sdk.openadsdk.core.o.s.dq()) {
            dq2.dq("download", new com.bytedance.sdk.openadsdk.core.ia.dq.d.iw());
        } else {
            dq2.dq("download", new com.bytedance.sdk.openadsdk.core.ia.dq.d.ig());
        }
        dq2.dq("open_scheme", new com.bytedance.sdk.openadsdk.core.ia.dq.d.mp());
        dq2.dq("open_policy", new com.bytedance.sdk.openadsdk.core.ia.dq.d.q());
        dq2.dq("end_card", new com.bytedance.sdk.openadsdk.core.ia.dq.d.ia());
        dq2.dq("common_popup", new com.bytedance.sdk.openadsdk.core.ia.dq.d.dq());
        dq2.dq("desc_popup", new com.bytedance.sdk.openadsdk.core.ia.dq.d.d());
        dq2.dq("permission_popup", new com.bytedance.sdk.openadsdk.core.ia.dq.d.ox());
        dq2.dq("privacy_popup", new com.bytedance.sdk.openadsdk.core.ia.dq.d.p());
        dq2.dq("dislike_popup", new com.bytedance.sdk.openadsdk.core.ia.dq.d.s());
        dq2.dq("download_popup", new com.bytedance.sdk.openadsdk.core.ia.dq.d.mn());
        dq2.dq("reward_again", new com.bytedance.sdk.openadsdk.core.ia.dq.d.cd());
        dq2.dq("reward_continue", new com.bytedance.sdk.openadsdk.core.ia.dq.d.cd());
        dq2.dq("close_reward", new com.bytedance.sdk.openadsdk.core.ia.dq.d.fw());
        dq2.dq("report_event", new com.bytedance.sdk.openadsdk.core.ia.dq.d.jy());
        dq2.dq("report_stats", new com.bytedance.sdk.openadsdk.core.ia.dq.d.f());
    }

    public static int le() {
        try {
            return (int) ((Runtime.getRuntime().maxMemory() * 1.0d) / 1048576.0d);
        } catch (Exception unused) {
            return -1;
        }
    }

    public static boolean le(j jVar) {
        return jVar != null && TextUtils.equals(jVar.fa(), jVar.fx()) && jVar.y() == 3 && !TextUtils.isEmpty(k(jVar));
    }

    public static long mn(Context context) {
        int i2;
        try {
            i2 = context.getApplicationInfo().targetSdkVersion;
            try {
                com.bytedance.sdk.component.utils.ig.dq("ToolUtils", "targetSdkVersion = ", Integer.valueOf(i2));
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            i2 = -1;
        }
        return i2;
    }

    public static String mn() {
        return !TextUtils.isEmpty(cd) ? cd : ir();
    }

    public static String mn(String str) {
        return dq(str, false, 0);
    }

    public static boolean mn(j jVar) {
        JSONObject hg;
        if (jVar == null || (hg = jVar.hg()) == null) {
            return false;
        }
        try {
            int optInt = new JSONObject(hg.optString("compliance_data")).optJSONObject("ad").optInt("pricing_type");
            return optInt == 3 || optInt == 6;
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.p("ToolUtils", "error:" + e2.getMessage());
            return false;
        }
    }

    public static int mp() {
        return Math.max(Runtime.getRuntime().availableProcessors(), 0);
    }

    public static String mp(j jVar) {
        JSONObject hg = jVar.hg();
        return hg != null ? hg.optString("req_id", "") : "";
    }

    public static String no() {
        if (TextUtils.isEmpty(r) && com.bytedance.sdk.openadsdk.core.wp.getContext() != null) {
            try {
                PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.wp.getContext().getPackageManager().getPackageInfo(kk(), 0);
                gh = String.valueOf(packageInfo.versionCode);
                r = packageInfo.versionName;
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.d("ToolUtils", "ToolUtils getVersionName throws exception :", th);
            }
        }
        return r;
    }

    public static String no(j jVar) {
        JSONObject hg = jVar.hg();
        return hg != null ? hg.optString("customer_id", "") : "";
    }

    public static int[] no(String str) {
        if (TextUtils.isEmpty(str)) {
            return new int[0];
        }
        String[] split = str.split(",");
        int[] iArr = new int[split.length];
        for (int i2 = 0; i2 < split.length; i2++) {
            try {
                iArr[i2] = Integer.parseInt(split[i2]);
            } catch (Exception unused) {
            }
        }
        return iArr;
    }

    public static String o() {
        if (TextUtils.isEmpty(gh) && com.bytedance.sdk.openadsdk.core.wp.getContext() != null) {
            try {
                PackageInfo packageInfo = com.bytedance.sdk.openadsdk.core.wp.getContext().getPackageManager().getPackageInfo(kk(), 0);
                gh = String.valueOf(packageInfo.versionCode);
                r = packageInfo.versionName;
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.d("ToolUtils", "ToolUtils getVersionCode throws exception :", th);
            }
        }
        return gh;
    }

    public static String o(j jVar) {
        JSONObject hg = jVar.hg();
        return hg != null ? hg.optString("origin_req_id", "") : "";
    }

    public static String o(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            PackageManager packageManager = com.bytedance.sdk.openadsdk.core.wp.getContext().getPackageManager();
            return packageManager.getLaunchIntentForPackage(str).resolveActivity(packageManager).getClassName();
        } catch (Exception unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void op() {
        List<String> sc;
        com.bytedance.sdk.openadsdk.core.bl.mn d2 = com.bytedance.sdk.openadsdk.core.wp.d();
        if (com.bytedance.sdk.openadsdk.core.no.ia().wn()) {
            com.bytedance.sdk.openadsdk.core.no.ia().ia(false);
            return;
        }
        if (d2.hf() || (sc = d2.sc()) == null) {
            return;
        }
        int b2 = d2.b();
        for (int i2 = 0; i2 < b2 && i2 < sc.size(); i2++) {
            Uri parse = Uri.parse(sc.get(i2));
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            dq(com.bytedance.sdk.openadsdk.core.wp.getContext(), intent, true);
        }
    }

    private static double ox(JSONObject jSONObject) {
        if (jSONObject != null) {
            return jSONObject.optDouble("pack_time", 0.0d);
        }
        return 0.0d;
    }

    public static int ox(int i2) {
        BufferedReader bufferedReader;
        Throwable th;
        int i3 = 0;
        FileReader fileReader = null;
        BufferedReader bufferedReader2 = null;
        while (true) {
            i2--;
            if (i2 < 0) {
                return i3;
            }
            try {
                FileReader fileReader2 = new FileReader("/sys/devices/system/cpu/cpu" + i2 + "/cpufreq/cpuinfo_max_freq");
                try {
                    BufferedReader bufferedReader3 = new BufferedReader(fileReader2);
                    try {
                        int parseInt = Integer.parseInt(bufferedReader3.readLine());
                        if (parseInt > i3) {
                            i3 = parseInt;
                        }
                        try {
                            bufferedReader3.close();
                            fileReader2.close();
                        } catch (Exception unused) {
                        }
                        bufferedReader2 = bufferedReader3;
                        fileReader = fileReader2;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = bufferedReader3;
                        fileReader = fileReader2;
                        try {
                            com.bytedance.sdk.component.utils.ig.p("ToolUtils", th.getMessage());
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused2) {
                                    bufferedReader2 = bufferedReader;
                                }
                            }
                            bufferedReader2 = bufferedReader;
                        } finally {
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused3) {
                                }
                            }
                            if (fileReader != null) {
                                fileReader.close();
                            }
                        }
                    }
                } catch (Throwable th3) {
                    BufferedReader bufferedReader4 = bufferedReader2;
                    th = th3;
                    fileReader = fileReader2;
                    bufferedReader = bufferedReader4;
                }
            } catch (Throwable th4) {
                bufferedReader = bufferedReader2;
                th = th4;
            }
        }
    }

    public static long ox(Context context) {
        if (mn > 0) {
            return mn;
        }
        long d2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().d("sdcard_storage", 0L);
        mn = d2;
        return d2;
    }

    public static long ox(String str) {
        return dq(d(str));
    }

    public static void ox() {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            com.bytedance.sdk.component.utils.ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.c.1
                @Override // java.lang.Runnable
                public void run() {
                    c.op();
                }
            });
        } else {
            op();
        }
    }

    public static boolean ox(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            if (iw(context)) {
                try {
                    if (context.getPackageManager().getPackageInfo(str, 0) != null) {
                        return true;
                    }
                } catch (Throwable unused) {
                    return false;
                }
            } else if (com.bytedance.sdk.openadsdk.core.wp.d().fa()) {
                return q(str);
            }
        }
        return false;
    }

    public static boolean ox(j jVar) {
        return jVar != null && ia(jVar) == 9;
    }

    public static int p(int i2) {
        BufferedReader bufferedReader;
        Throwable th;
        FileReader fileReader;
        BufferedReader bufferedReader2;
        int i3 = 0;
        FileReader fileReader2 = null;
        BufferedReader bufferedReader3 = null;
        while (true) {
            i2--;
            if (i2 < 0) {
                return i3;
            }
            try {
                fileReader = new FileReader("/sys/devices/system/cpu/cpu" + i2 + "/cpufreq/cpuinfo_min_freq");
                try {
                    bufferedReader2 = new BufferedReader(fileReader);
                } catch (Throwable th2) {
                    BufferedReader bufferedReader4 = bufferedReader3;
                    th = th2;
                    fileReader2 = fileReader;
                    bufferedReader = bufferedReader4;
                }
            } catch (Throwable th3) {
                bufferedReader = bufferedReader3;
                th = th3;
            }
            try {
                int parseInt = Integer.parseInt(bufferedReader2.readLine());
                if (parseInt < i3 || i3 == 0) {
                    i3 = parseInt;
                }
                try {
                    bufferedReader2.close();
                    fileReader.close();
                } catch (Exception unused) {
                }
                bufferedReader3 = bufferedReader2;
                fileReader2 = fileReader;
            } catch (Throwable th4) {
                th = th4;
                bufferedReader = bufferedReader2;
                fileReader2 = fileReader;
                try {
                    com.bytedance.sdk.component.utils.ig.p("ToolUtils", th.getMessage());
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception unused2) {
                            bufferedReader3 = bufferedReader;
                        }
                    }
                    bufferedReader3 = bufferedReader;
                } finally {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (Exception unused3) {
                        }
                    }
                    if (fileReader2 != null) {
                        fileReader2.close();
                    }
                }
            }
        }
    }

    public static int p(Context context) {
        if (ia >= 0) {
            return ia;
        }
        int d2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().d("is_root", -1);
        ia = d2;
        return d2;
    }

    public static int p(String str) {
        return d(d(str));
    }

    public static boolean p() {
        return (com.bytedance.sdk.openadsdk.core.no.ia() == null || com.bytedance.sdk.openadsdk.core.no.ia().dq()) ? false : true;
    }

    public static boolean p(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + Uri.encode(str)));
                if (!(context instanceof Activity)) {
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                }
                com.bytedance.sdk.component.utils.d.dq(context, intent, null);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static boolean p(j jVar) {
        if (jVar != null) {
            boolean z = ia(jVar) == 5;
            if (jVar.dr() == 7 && z) {
                return true;
            }
        }
        return false;
    }

    public static int q() {
        if (dq > 0) {
            return dq;
        }
        int d2 = com.bytedance.sdk.openadsdk.core.ox.p.dq().d("cpu_cnt", 0);
        dq = d2;
        return d2;
    }

    public static int q(j jVar) {
        JSONObject hg = jVar.hg();
        if (hg != null) {
            return hg.optInt("pricing", 0);
        }
        return 0;
    }

    private static boolean q(String str) {
        boolean exists = dq("data", str).exists();
        return !exists ? dq("media", str).exists() : exists;
    }

    public static String r() {
        String x = tn.x("https://", fw(com.bytedance.sdk.openadsdk.core.wp.d().f()));
        return u.d(Uri.parse(x).buildUpon().appendQueryParameter("datetime", new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date(new Long(System.currentTimeMillis()).longValue()))).toString());
    }

    public static boolean r(j jVar) {
        if (jVar == null || com.bytedance.sdk.openadsdk.core.r.gh.p(jVar)) {
            return false;
        }
        int no2 = jVar.no();
        return no2 == 5 || no2 == 4;
    }

    public static double s(String str) {
        return ox(d(str));
    }

    public static int s(int i2) {
        if (i2 == 1) {
            return 2;
        }
        if (i2 != 2) {
            return (i2 == 3 || i2 == 4 || i2 == 7 || i2 == 8) ? 5 : 3;
        }
        return 4;
    }

    public static long s() {
        return jy;
    }

    public static String s(Context context) {
        Locale locale;
        LocaleList locales;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                locales = context.getResources().getConfiguration().getLocales();
                locale = locales.get(0);
            } else {
                locale = Locale.getDefault();
            }
            return locale.getLanguage();
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.p("ToolUtils", e2.toString());
            return "";
        }
    }

    public static String s(Context context, String str) {
        FileReader fileReader;
        BufferedReader bufferedReader;
        String readLine;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 4096);
                do {
                    try {
                        readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            th.printStackTrace();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused) {
                                }
                            }
                            if (fileReader != null) {
                                try {
                                    fileReader.close();
                                } catch (Exception unused2) {
                                }
                            }
                            return null;
                        } finally {
                        }
                    }
                } while (!readLine.contains(str));
                if (readLine == null) {
                    try {
                        bufferedReader.close();
                    } catch (Exception unused3) {
                    }
                    try {
                        fileReader.close();
                    } catch (Exception unused4) {
                    }
                    return null;
                }
                String str2 = readLine.split("\\s+")[1];
                try {
                    bufferedReader.close();
                } catch (Exception unused5) {
                }
                try {
                    fileReader.close();
                } catch (Exception unused6) {
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
            }
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
            bufferedReader = null;
        }
    }

    public static boolean s(j jVar) {
        if (jVar == null) {
            return false;
        }
        int ia2 = ia(jVar);
        return ia2 == 5 || ia2 == 1 || ia2 == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void u() {
        try {
            cd = jy(WebSettings.getDefaultUserAgent(com.bytedance.sdk.openadsdk.core.wp.getContext()));
            com.bytedance.sdk.openadsdk.core.ox.p.dq().p("sdk_local_web_ua", cd);
        } catch (Throwable unused) {
        }
    }

    public static int wp() {
        try {
            return (int) ((Runtime.getRuntime().totalMemory() * 1.0d) / 1048576.0d);
        } catch (Exception unused) {
            return -1;
        }
    }
}

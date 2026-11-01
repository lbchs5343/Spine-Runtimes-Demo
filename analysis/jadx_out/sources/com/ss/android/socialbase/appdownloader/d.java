package com.ss.android.socialbase.appdownloader;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.ss.android.socialbase.appdownloader.view.JumpUnknownSourceActivity;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.dq.dq;
import com.ss.android.socialbase.downloader.ia.ia;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.awf;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static ox f9268d = null;
    private static final String dq = "d";
    private static dq ox;

    /* renamed from: com.ss.android.socialbase.appdownloader.d$d, reason: collision with other inner class name */
    public interface InterfaceC0226d {
        boolean dq(Context context);
    }

    public static class dq implements dq.InterfaceC0248dq {

        /* renamed from: d, reason: collision with root package name */
        private final int f9269d;
        private final s dq;
        private JSONObject ox;

        public dq(Context context, Intent intent, int i, JSONObject jSONObject, InterfaceC0226d interfaceC0226d) {
            this.ox = jSONObject;
            int optInt = jSONObject.optInt("query_interval", 1000);
            this.f9269d = optInt;
            this.dq = new s(context, intent, i, interfaceC0226d, optInt);
        }

        @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
        public void d() {
            if (!this.dq.kk) {
                Message obtain = Message.obtain();
                obtain.what = 2;
                this.dq.iw.sendMessage(obtain);
            }
            com.ss.android.socialbase.downloader.dq.dq.dq().d(this);
            dq unused = d.ox = null;
        }

        @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
        public void ox() {
            int optInt = this.ox.optInt("time_out_second", 20);
            Message obtain = Message.obtain();
            obtain.what = 1;
            this.dq.iw.sendMessage(obtain);
            if (optInt <= 0 || optInt >= 60) {
                return;
            }
            Message obtain2 = Message.obtain();
            obtain2.what = 2;
            this.dq.iw.sendMessageDelayed(obtain2, optInt * 1000);
        }
    }

    public interface ox {
        void dq(DownloadInfo downloadInfo, com.ss.android.socialbase.appdownloader.dq dqVar);
    }

    public static class p implements Callable<Boolean> {

        /* renamed from: d, reason: collision with root package name */
        private final InterfaceC0226d f9270d;
        private final Context dq;
        private final Handler ox;
        private final long p;

        public p(Handler handler, Context context, InterfaceC0226d interfaceC0226d, long j) {
            this.dq = context;
            this.f9270d = interfaceC0226d;
            this.ox = handler;
            this.p = j;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            InterfaceC0226d interfaceC0226d;
            try {
                interfaceC0226d = this.f9270d;
            } catch (Throwable unused) {
            }
            if (interfaceC0226d != null) {
                long j = this.p;
                if (j > 0 && j <= ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT) {
                    Context context = this.dq;
                    boolean dq = context != null ? interfaceC0226d.dq(context) : false;
                    Message obtain = Message.obtain();
                    if (dq) {
                        obtain.what = 2;
                        this.ox.sendMessage(obtain);
                    } else {
                        obtain.what = 1;
                        this.ox.sendMessageDelayed(obtain, this.p);
                    }
                    return Boolean.FALSE;
                }
            }
            return Boolean.FALSE;
        }
    }

    public static class s implements ia.dq {

        /* renamed from: d, reason: collision with root package name */
        private static int f9271d;
        public static int dq;
        private Future<Boolean> ia;
        private final Handler iw;
        private boolean kk = false;
        private final long mn;
        private final Context ox;
        private final Intent p;
        private final InterfaceC0226d s;

        public s(Context context, Intent intent, int i, InterfaceC0226d interfaceC0226d, long j) {
            this.ox = context;
            this.p = intent;
            f9271d = i;
            this.s = interfaceC0226d;
            this.iw = new com.ss.android.socialbase.downloader.ia.ia(Looper.getMainLooper(), this);
            this.mn = j;
        }

        @Override // com.ss.android.socialbase.downloader.ia.ia.dq
        public void dq(Message message) {
            if (message != null) {
                int i = message.what;
                if (i == 1) {
                    long j = this.mn;
                    if (j <= 0 || j > ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT) {
                        return;
                    }
                    dq = 1;
                    this.ia = com.ss.android.socialbase.downloader.downloader.ox.ig().submit(new p(this.iw, this.ox, this.s, this.mn));
                    return;
                }
                if (i == 2) {
                    dq = 2;
                    this.iw.removeMessages(2);
                    this.iw.removeMessages(1);
                    Future<Boolean> future = this.ia;
                    if (future != null) {
                        future.cancel(true);
                    }
                    if (!this.kk && (Build.VERSION.SDK_INT < 29 || com.ss.android.socialbase.downloader.dq.dq.dq().d())) {
                        Intent intent = this.p;
                        if (intent != null) {
                            d.d(this.ox, intent);
                        } else {
                            DownloadInfo downloadInfo = Downloader.getInstance(this.ox).getDownloadInfo(f9271d);
                            if (downloadInfo != null && downloadInfo.isDownloadOverStatus()) {
                                com.ss.android.socialbase.appdownloader.ox.d(this.ox, f9271d, false);
                            }
                        }
                        this.kk = true;
                    }
                    d.d(f9271d, this.p == null, d.dq(this.ox));
                }
            }
        }
    }

    public static com.ss.android.socialbase.appdownloader.dq d(JSONObject jSONObject, com.ss.android.socialbase.downloader.mn.dq dqVar) {
        com.ss.android.socialbase.appdownloader.dq dqVar2 = new com.ss.android.socialbase.appdownloader.dq();
        if (jSONObject == null) {
            return dqVar2;
        }
        dqVar2.dq = jSONObject.optString("type");
        dqVar2.s = "vbi";
        if (com.ss.android.socialbase.appdownloader.dq.p.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), "vbi", jSONObject, dqVar)) {
            dqVar2.f9272d = 0;
            return dqVar2;
        }
        dq(dqVar2, 3);
        return dqVar2;
    }

    public static void d(int i, JSONObject jSONObject) {
        int i2 = 1;
        boolean z = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z) {
            i2 = 2;
        }
        try {
            jSONObject2.put("scene", i2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.ox.t().d(i, "guide_auth_dialog_cancel", jSONObject2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(int i, boolean z, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("scene", z ? 1 : 2);
            jSONObject.put("result_code", z2 ? 1 : 2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.ox.t().d(i, "guide_auth_result", jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(Context context, Intent intent) {
        return dq(context, intent, true);
    }

    private static boolean d(Context context, DownloadInfo downloadInfo, JSONObject jSONObject, com.ss.android.socialbase.appdownloader.dq dqVar) {
        if (context != null && jSONObject != null) {
            String savePath = downloadInfo.getSavePath();
            if (TextUtils.isEmpty(savePath)) {
                return false;
            }
            dqVar.p = MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM;
            com.ss.android.socialbase.appdownloader.dq.dq dq2 = com.ss.android.socialbase.appdownloader.dq.p.dq(context, MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM, jSONObject, downloadInfo);
            if (dq2 != null && dq2.dq()) {
                Intent d2 = dq2.d();
                if (d2 == null) {
                    return false;
                }
                if (!dq(new File(savePath), downloadInfo, jSONObject)) {
                    dqVar.f9272d = 6;
                } else {
                    if (d(context, d2)) {
                        dqVar.f9272d = 0;
                        return true;
                    }
                    dqVar.f9272d = 1;
                }
                return false;
            }
            dqVar.f9272d = 3;
        }
        return false;
    }

    public static int dq(com.ss.android.socialbase.downloader.mn.dq dqVar) {
        if (!(dqVar.p("download_dir") != null ? !TextUtils.isEmpty(r0.optString("dir_name")) : false)) {
            return 5;
        }
        if (!com.ss.android.socialbase.downloader.mn.dq.ox().dq("get_download_info_by_list")) {
            return 4;
        }
        JSONArray s2 = dqVar.s("ah_plans");
        int i = -1;
        if (s2 != null) {
            int length = s2.length();
            for (int i2 = 0; i2 < length; i2++) {
                JSONObject optJSONObject = s2.optJSONObject(i2);
                if (com.ss.android.socialbase.appdownloader.iw.dq.dq(optJSONObject)) {
                    String optString = optJSONObject.optString("type");
                    if ("plan_a".equals(optString) || "plan_b".equals(optString) || "plan_e".equals(optString) || "plan_f".equals(optString)) {
                        i = dq(optJSONObject, dqVar).f9272d;
                        if (i == 0) {
                            return 0;
                        }
                    } else if ("plan_d".equalsIgnoreCase(optString) || "plan_h".equalsIgnoreCase(optString) || ("plan_g".equalsIgnoreCase(optString) && (i = d(optJSONObject, dqVar).f9272d) == 0)) {
                        return 0;
                    }
                }
            }
        }
        return i;
    }

    public static com.ss.android.socialbase.appdownloader.dq dq(JSONObject jSONObject, com.ss.android.socialbase.downloader.mn.dq dqVar) {
        com.ss.android.socialbase.appdownloader.dq dqVar2 = new com.ss.android.socialbase.appdownloader.dq();
        if (jSONObject != null) {
            String optString = jSONObject.optString("type");
            dqVar2.dq = optString;
            if ("plan_b".equals(optString)) {
                dqVar2.s = MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM;
                if (com.ss.android.socialbase.appdownloader.dq.p.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM, jSONObject, dqVar)) {
                    dqVar2.f9272d = 0;
                    return dqVar2;
                }
                dq(dqVar2, 3);
                return dqVar2;
            }
            String optString2 = jSONObject.optString("device_plans");
            dqVar2.s = optString2;
            if (!TextUtils.isEmpty(optString2)) {
                for (String str : optString2.split(",")) {
                    if (com.ss.android.socialbase.appdownloader.dq.p.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), str, jSONObject, dqVar)) {
                        dqVar2.f9272d = 0;
                        return dqVar2;
                    }
                    dq(dqVar2, 3);
                }
            }
        }
        return dqVar2;
    }

    public static com.ss.android.socialbase.appdownloader.dq dq(JSONObject jSONObject, String str, Context context, com.ss.android.socialbase.downloader.mn.dq dqVar) {
        com.ss.android.socialbase.appdownloader.dq dqVar2 = new com.ss.android.socialbase.appdownloader.dq();
        if (jSONObject != null && com.ss.android.socialbase.appdownloader.iw.s.ox()) {
            dqVar2.dq = jSONObject.optString("type");
            if (dqVar.dq("bi", 0) == 1) {
                dqVar2.f9272d = 0;
                return dqVar2;
            }
            if (dq(context)) {
                dqVar2.f9272d = 2;
                return dqVar2;
            }
            if (com.ss.android.socialbase.appdownloader.iw.dq.dq(str) != null) {
                dqVar2.f9272d = 0;
                return dqVar2;
            }
            dqVar2.f9272d = 9;
        }
        return dqVar2;
    }

    public static String dq(Throwable th) {
        String th2 = th.toString();
        return th2.length() > 800 ? th2.substring(0, 500) : th2;
    }

    public static void dq(int i, JSONObject jSONObject) {
        int i2 = 1;
        boolean z = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z) {
            i2 = 2;
        }
        try {
            jSONObject2.put("scene", i2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.ox.t().d(i, "guide_auth_dialog_confirm", jSONObject2);
    }

    private static void dq(Context context, Intent intent, int i, JSONObject jSONObject, InterfaceC0226d interfaceC0226d) {
        if (ox != null) {
            com.ss.android.socialbase.downloader.dq.dq.dq().d(ox);
            ox = null;
        }
        ox = new dq(context, intent, i, jSONObject, interfaceC0226d);
        com.ss.android.socialbase.downloader.dq.dq.dq().dq(ox);
    }

    public static void dq(ox oxVar) {
        f9268d = oxVar;
    }

    private static void dq(com.ss.android.socialbase.appdownloader.dq dqVar, int i) {
        int i2 = dqVar.f9272d;
        if (i2 != -1) {
            dqVar.f9272d = (i2 * 10) + i;
        } else {
            dqVar.f9272d = i;
        }
    }

    public static boolean dq() {
        return s.dq == 1;
    }

    public static boolean dq(Context context) {
        if (context == null) {
            return true;
        }
        if (com.ss.android.socialbase.appdownloader.iw.s.ox() && Build.VERSION.SDK_INT < 26) {
            return p(context);
        }
        if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26) {
            return s(context);
        }
        return true;
    }

    public static boolean dq(Context context, Intent intent, int i, JSONObject jSONObject) {
        try {
            if (com.ss.android.socialbase.appdownloader.iw.s.ox() && Build.VERSION.SDK_INT < 26 && !p(context)) {
                com.ss.android.socialbase.appdownloader.dq.iw iwVar = new com.ss.android.socialbase.appdownloader.dq.iw(context);
                if (iwVar.dq()) {
                    dq(context, intent, i, jSONObject, new InterfaceC0226d() { // from class: com.ss.android.socialbase.appdownloader.d.1
                        @Override // com.ss.android.socialbase.appdownloader.d.InterfaceC0226d
                        public boolean dq(Context context2) {
                            return d.p(context2);
                        }
                    });
                    return d(context, iwVar.d());
                }
            } else if (Build.VERSION.SDK_INT >= 26 && context.getApplicationInfo().targetSdkVersion >= 26 && !s(context)) {
                com.ss.android.socialbase.appdownloader.dq.d dVar = new com.ss.android.socialbase.appdownloader.dq.d(context);
                if (dVar.dq()) {
                    dq(context, intent, i, jSONObject, new InterfaceC0226d() { // from class: com.ss.android.socialbase.appdownloader.d.2
                        @Override // com.ss.android.socialbase.appdownloader.d.InterfaceC0226d
                        public boolean dq(Context context2) {
                            return d.s(context2);
                        }
                    });
                    return d(context, dVar.d());
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    public static boolean dq(Context context, Intent intent, JSONObject jSONObject, int i, com.ss.android.socialbase.appdownloader.dq dqVar) {
        if (context != null && jSONObject != null) {
            long optLong = jSONObject.optLong("jump_interval", 0L);
            if (optLong <= 0) {
                return false;
            }
            SharedPreferences d2 = com.bytedance.sdk.openadsdk.api.plugin.d.d(context, "sp_ah_config", 0);
            if ((System.currentTimeMillis() - d2.getLong("last_jump_unknown_source_time", 0L)) / 60000 >= optLong && !dq(context)) {
                d2.edit().putLong("last_jump_unknown_source_time", System.currentTimeMillis()).apply();
                if (jSONObject.optInt("show_unknown_source_dialog", 0) != 1) {
                    if (dq(context, intent, i, jSONObject)) {
                        ox(i, jSONObject);
                    }
                    return true;
                }
                Intent intent2 = new Intent(context, (Class<?>) JumpUnknownSourceActivity.class);
                intent2.addFlags(C.ENCODING_PCM_MU_LAW);
                intent2.putExtra("intent", intent);
                intent2.putExtra("config", jSONObject.toString());
                intent2.putExtra(TTDownloadField.TT_ID, i);
                try {
                    if (dq(context, intent2, false)) {
                        p(i, jSONObject);
                    }
                    return true;
                } catch (Throwable th) {
                    if (dqVar != null) {
                        dqVar.f9272d = 1;
                        dqVar.ox = "tryShowUnknownSourceDialog" + dq(th);
                    }
                    return false;
                }
            }
        }
        return false;
    }

    public static boolean dq(Context context, Intent intent, boolean z) {
        if (context == null || intent == null) {
            return false;
        }
        if (!z) {
            intent.putExtra("start_only_for_android", true);
            context.startActivity(intent);
            return true;
        }
        try {
            intent.putExtra("start_only_for_android", true);
            context.startActivity(intent);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:63:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x019d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean dq(Context context, DownloadInfo downloadInfo, Intent intent, JSONObject jSONObject, boolean z) {
        com.ss.android.socialbase.downloader.mn.dq dq2;
        com.ss.android.socialbase.appdownloader.dq dq3;
        boolean z2 = false;
        if (jSONObject != null && downloadInfo != null) {
            com.ss.android.socialbase.appdownloader.dq dqVar = new com.ss.android.socialbase.appdownloader.dq();
            String optString = jSONObject.optString("type");
            if (!TextUtils.isEmpty(optString)) {
                dq2 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo);
                dqVar.dq = optString;
                optString.getClass();
                switch (optString) {
                    case "plan_a":
                    case "plan_e":
                        if (!downloadInfo.isSavePathRedirected()) {
                            dqVar.f9272d = downloadInfo.getAntiHijackErrorCode(-1);
                            if (z2) {
                                downloadInfo.getTempCacheData().put("ah_attempt", dqVar.dq());
                            }
                            if (f9268d != null) {
                                downloadInfo.getTempCacheData().put("intent", intent);
                                f9268d.dq(downloadInfo, dqVar);
                                break;
                            }
                        }
                        dq3 = dq(jSONObject, dq2);
                        if (dq3.f9272d == 0) {
                            if (optString.equals("plan_f") && TextUtils.isEmpty(downloadInfo.getDBJsonString("file_content_uri"))) {
                                dqVar.f9272d = downloadInfo.getAntiHijackErrorCode(10);
                            } else {
                                z2 = dq(context, downloadInfo, jSONObject, dqVar);
                            }
                            if (z2) {
                            }
                            if (f9268d != null) {
                            }
                        }
                        dqVar = dq3;
                        if (z2) {
                        }
                        if (f9268d != null) {
                        }
                        break;
                    case "plan_b":
                        dq3 = dq(jSONObject, dq2);
                        if (dq3.f9272d == 0) {
                            if (downloadInfo.isSavePathRedirected()) {
                                z2 = d(context, downloadInfo, jSONObject, dqVar);
                            } else {
                                dqVar.f9272d = downloadInfo.getAntiHijackErrorCode(-1);
                            }
                            if (z2) {
                            }
                            if (f9268d != null) {
                            }
                        }
                        dqVar = dq3;
                        if (z2) {
                        }
                        if (f9268d != null) {
                        }
                        break;
                    case "plan_c":
                        if ((Build.VERSION.SDK_INT >= 26 || com.ss.android.socialbase.appdownloader.iw.s.ox()) && ((jSONObject.optInt("enable_for_all", 0) == 1 || z) && jSONObject.optInt("show_unknown_source_on_startup") != 1)) {
                            z2 = dq(context, intent, jSONObject, downloadInfo.getId(), dqVar);
                        }
                        if (z2) {
                        }
                        if (f9268d != null) {
                        }
                        break;
                    case "plan_d":
                        dqVar.dq = "plan_d";
                        if (com.ss.android.socialbase.appdownloader.iw.s.p()) {
                            try {
                                com.ss.android.socialbase.appdownloader.ox.dq(context, intent);
                                dqVar.f9272d = 0;
                                z2 = true;
                            } catch (Throwable th) {
                                dqVar.f9272d = 4;
                                dqVar.ox = th.toString();
                            }
                        } else {
                            dqVar.f9272d = 2;
                        }
                        if (z2) {
                        }
                        if (f9268d != null) {
                        }
                        break;
                    case "plan_f":
                        dq3 = dq(jSONObject, dq2);
                        if (dq3.f9272d == 0) {
                        }
                        dqVar = dq3;
                        if (z2) {
                        }
                        if (f9268d != null) {
                        }
                        break;
                    case "plan_g":
                        dq3 = d(jSONObject, dq2);
                        if (dq3.f9272d == 0) {
                            z2 = dq(context, downloadInfo, jSONObject, dqVar, dq2);
                            if (z2) {
                            }
                            if (f9268d != null) {
                            }
                        }
                        dqVar = dq3;
                        if (z2) {
                        }
                        if (f9268d != null) {
                        }
                        break;
                    case "plan_h":
                        String dq4 = com.ss.android.socialbase.appdownloader.iw.ox.dq(dq2.ox("bh"), dq2.ox("s"));
                        com.ss.android.socialbase.appdownloader.dq dq5 = dq(jSONObject, dq4, context, dq2);
                        if (dq5.f9272d != 0) {
                            dqVar = dq5;
                        } else {
                            String packageName = context.getPackageName();
                            if (com.ss.android.socialbase.appdownloader.iw.dq.dq(com.ss.android.socialbase.downloader.mn.dq.d(), context, dq4)) {
                                try {
                                    com.ss.android.socialbase.appdownloader.ox.dq(context, intent);
                                    dqVar.f9272d = 0;
                                    z2 = true;
                                } catch (Throwable th2) {
                                    try {
                                        dqVar.f9272d = 1;
                                        dqVar.ox = th2.toString();
                                    } finally {
                                        com.ss.android.socialbase.appdownloader.iw.dq.dq(com.ss.android.socialbase.downloader.mn.dq.d(), context, packageName);
                                    }
                                }
                            } else {
                                dqVar.f9272d = 11;
                            }
                        }
                        if (z2) {
                        }
                        if (f9268d != null) {
                        }
                        break;
                    default:
                        if (z2) {
                        }
                        if (f9268d != null) {
                        }
                        break;
                }
            }
        }
        return z2;
    }

    public static boolean dq(Context context, DownloadInfo downloadInfo, Intent intent, boolean z) {
        JSONArray s2 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).s("ah_plans");
        if (s2 != null) {
            int length = s2.length();
            for (int i = 0; i < length; i++) {
                JSONObject optJSONObject = s2.optJSONObject(i);
                if (com.ss.android.socialbase.appdownloader.iw.dq.dq(optJSONObject) && dq(context, downloadInfo, intent, optJSONObject, z)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean dq(Context context, DownloadInfo downloadInfo, JSONObject jSONObject, com.ss.android.socialbase.appdownloader.dq dqVar) {
        String str;
        boolean z;
        if (context != null && jSONObject != null) {
            String optString = jSONObject.optString("device_plans");
            dqVar.s = optString;
            if (!TextUtils.isEmpty(optString)) {
                String[] split = optString.split(",");
                String savePath = downloadInfo.getSavePath();
                if (TextUtils.isEmpty(savePath)) {
                    return false;
                }
                File file = new File(savePath);
                StringBuilder sb = new StringBuilder();
                int length = split.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        str = null;
                        z = false;
                        break;
                    }
                    str = split[i];
                    com.ss.android.socialbase.appdownloader.dq.dq dq2 = com.ss.android.socialbase.appdownloader.dq.p.dq(context, str, jSONObject, downloadInfo);
                    if (dq2 != null) {
                        Intent d2 = dq2.d();
                        if (d2 == null) {
                            dq(dqVar, 3);
                            sb.append(str);
                            sb.append(" resolveActivity failed! ");
                        } else if (dq(file, downloadInfo, jSONObject)) {
                            z = true;
                            try {
                                dq(context, d2, false);
                                break;
                            } catch (Throwable th) {
                                sb.append(str);
                                sb.append(" startActivity failed : ");
                                sb.append(dq(th));
                                dq(dqVar, 1);
                            }
                        } else {
                            dq(dqVar, 6);
                            sb.append(str);
                            sb.append(" createDescFile failed! ");
                        }
                    }
                    sb.append("  ");
                    i++;
                }
                if (z) {
                    dqVar.p = str;
                    dqVar.f9272d = 0;
                } else {
                    dqVar.ox = sb.toString();
                }
                return z;
            }
        }
        return false;
    }

    private static boolean dq(Context context, DownloadInfo downloadInfo, JSONObject jSONObject, com.ss.android.socialbase.appdownloader.dq dqVar, com.ss.android.socialbase.downloader.mn.dq dqVar2) {
        boolean z;
        String optString = jSONObject.optString("type");
        dqVar.dq = optString;
        Intent d2 = com.ss.android.socialbase.appdownloader.dq.p.dq(context, "vbi", jSONObject, downloadInfo).d();
        StringBuilder sb = new StringBuilder();
        try {
            z = d(context, d2);
        } catch (Throwable th) {
            sb.append(optString);
            sb.append(" startActivity failed : ");
            sb.append(dq(th));
            dq(dqVar, 1);
            z = false;
        }
        if (z) {
            dqVar.f9272d = 0;
        } else {
            dqVar.ox = sb.toString();
        }
        return true;
    }

    private static boolean dq(File file, DownloadInfo downloadInfo, JSONObject jSONObject) {
        if (file == null) {
            return false;
        }
        String path = file.getPath();
        JSONObject p2 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).p("download_dir");
        File file2 = null;
        String optString = p2 != null ? p2.optString("ins_desc") : null;
        if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString)) {
            file2 = new File(awf.ad(awf.o(path), File.separator, optString));
        }
        if (file2 == null) {
            return true;
        }
        try {
            if (!file2.createNewFile()) {
                return true;
            }
            file2.deleteOnExit();
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public static void ox(int i, JSONObject jSONObject) {
        int i2 = 1;
        boolean z = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z) {
            i2 = 2;
        }
        try {
            jSONObject2.put("scene", i2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.ox.t().d(i, "guide_auth_open_setting", jSONObject2);
    }

    private static void p(int i, JSONObject jSONObject) {
        int i2 = 1;
        boolean z = jSONObject.optInt("show_unknown_source_on_startup") == 1;
        JSONObject jSONObject2 = new JSONObject();
        if (!z) {
            i2 = 2;
        }
        try {
            jSONObject2.put("scene", i2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        com.ss.android.socialbase.downloader.downloader.ox.t().d(i, "guide_auth_dialog_show", jSONObject2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean p(Context context) {
        if (context == null) {
            return true;
        }
        try {
            return Settings.Secure.getInt(context.getContentResolver(), "install_non_market_apps", 1) > 0;
        } catch (Throwable unused) {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean s(Context context) {
        boolean canRequestPackageInstalls;
        if (context == null) {
            return true;
        }
        try {
            canRequestPackageInstalls = context.getPackageManager().canRequestPackageInstalls();
            return canRequestPackageInstalls;
        } catch (Throwable unused) {
            return true;
        }
    }
}

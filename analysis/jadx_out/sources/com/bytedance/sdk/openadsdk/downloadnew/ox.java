package com.bytedance.sdk.openadsdk.downloadnew;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.widget.Toast;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTDownloadEventLogger;
import com.bytedance.sdk.openadsdk.downloadnew.core.DialogBuilder;
import com.bytedance.sdk.openadsdk.downloadnew.core.ExitInstallListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.IDialogStatusChangedListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadAdapter;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadVisitor;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTPermissionCallback;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadEventModel;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.downloadnew.d;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.cd;
import com.ss.android.download.api.config.fw;
import com.ss.android.download.api.config.ia;
import com.ss.android.download.api.config.ig;
import com.ss.android.download.api.config.kk;
import com.ss.android.download.api.config.mn;
import com.ss.android.download.api.config.r;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.model.d;
import com.ss.android.download.api.model.dq;
import com.ss.android.downloadlib.addownload.d.iw;
import com.ss.android.downloadlib.addownload.dq.dq;
import com.ss.android.downloadlib.o;
import com.ss.android.socialbase.downloader.depend.bl;
import com.ss.android.socialbase.downloader.depend.h;
import com.ss.android.socialbase.downloader.downloader.DownloaderBuilder;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.network.IDownloadHttpService;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox {
    public static volatile String dq;
    private static final com.ss.android.download.api.download.dq.dq ia;
    private static Context iw;
    private static Map<Integer, ITTDownloadAdapter.OnEventLogHandler> mn;
    public static ITTDownloadVisitor ox;
    private static final AtomicBoolean p = new AtomicBoolean(false);
    private static final AtomicBoolean s = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    public static boolean f3738d = true;

    public static class d implements ia {
        private d() {
        }

        @Override // com.ss.android.download.api.config.ia
        public void dq(String str, String str2, Map<String, Object> map, final cd cdVar) {
            str.getClass();
            int i = 0;
            if (!str.equals("GET") && str.equals("POST")) {
                i = 1;
            }
            if (ox.iw() != null) {
                ox.iw().execute(i, str2, map, new ITTHttpCallback() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.d.1
                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback
                    public void onError(Throwable th) {
                        cd cdVar2 = cdVar;
                        if (cdVar2 != null) {
                            cdVar2.dq(th);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback
                    public void onResponse(String str3) {
                        cd cdVar2 = cdVar;
                        if (cdVar2 != null) {
                            cdVar2.dq(str3);
                        }
                    }
                });
            }
        }

        @Override // com.ss.android.download.api.config.ia
        public void dq(String str, byte[] bArr, String str2, int i, final cd cdVar) {
            if (ox.iw() != null) {
                ox.iw().postBody(str, bArr, str2, new ITTHttpCallback() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.d.2
                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback
                    public void onError(Throwable th) {
                        cd cdVar2 = cdVar;
                        if (cdVar2 != null) {
                            cdVar2.dq(th);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback
                    public void onResponse(String str3) {
                        cd cdVar2 = cdVar;
                        if (cdVar2 != null) {
                            cdVar2.dq(str3);
                        }
                    }
                });
            }
        }
    }

    public static class dq implements mn {
        private void dq(com.ss.android.download.api.model.ox oxVar, boolean z) {
            TTDownloadEventLogger tTDownloadEventLogger;
            if (ox.iw() == null || (tTDownloadEventLogger = ox.iw().getTTDownloadEventLogger()) == null || oxVar == null) {
                return;
            }
            if (tTDownloadEventLogger.shouldFilterOpenSdkLog() && ox.iw().isOpenSdkEvent(oxVar.toString())) {
                return;
            }
            if (z) {
                tTDownloadEventLogger.onV3Event(ox.d(oxVar));
            } else {
                tTDownloadEventLogger.onEvent(ox.d(oxVar));
            }
        }

        private void ox(com.ss.android.download.api.model.ox oxVar) {
            if (oxVar == null) {
                return;
            }
            Object ig = oxVar.ig();
            TTDownloadEventModel label = TTDownloadEventModel.builder().setTag(oxVar.d()).setExtJson(oxVar.ia()).setMaterialMeta(ig instanceof JSONObject ? (JSONObject) ig : null).setLabel(oxVar.ox());
            boolean z = "download_notification".equals(oxVar.d()) || "landing_h5_download_ad_button".equals(oxVar.d());
            if (ox.iw() != null) {
                ox.iw().executeLogUpload(label, z);
            }
        }

        @Override // com.ss.android.download.api.config.mn
        public void d(com.ss.android.download.api.model.ox oxVar) {
            com.bytedance.sdk.openadsdk.api.ox.d("LibEventLogger", "onEvent called");
            dq(oxVar, false);
            ox(oxVar);
        }

        @Override // com.ss.android.download.api.config.mn
        public void dq(com.ss.android.download.api.model.ox oxVar) {
            com.bytedance.sdk.openadsdk.api.ox.d("LibEventLogger", "onV3Event");
            dq(oxVar, true);
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.downloadnew.ox$ox, reason: collision with other inner class name */
    public static class C0199ox implements kk {
        @Override // com.ss.android.download.api.config.kk
        public void dq(Activity activity, int i, String[] strArr, int[] iArr) {
        }

        @Override // com.ss.android.download.api.config.kk
        public void dq(Activity activity, String[] strArr, final r rVar) {
            if (ox.iw() != null) {
                ox.iw().requestPermission(activity, strArr, new ITTPermissionCallback() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.ox.1
                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTPermissionCallback
                    public void onDenied(String str) {
                        r rVar2 = rVar;
                        if (rVar2 != null) {
                            rVar2.dq(str);
                        }
                    }

                    @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTPermissionCallback
                    public void onGranted() {
                        r rVar2 = rVar;
                        if (rVar2 != null) {
                            rVar2.dq();
                        }
                    }
                });
            }
        }

        @Override // com.ss.android.download.api.config.kk
        public boolean dq(Context context, String str) {
            if (ox.iw() != null) {
                return ox.iw().hasPermission(context, str);
            }
            return false;
        }
    }

    public static class p implements ig {
        private final WeakReference<Context> dq;

        public p(Context context) {
            this.dq = new WeakReference<>(context);
        }

        private DialogBuilder ox(final com.ss.android.download.api.model.d dVar) {
            return DialogBuilder.builder().setTitle(dVar.f9109d).setMessage(dVar.ox).setNegativeBtnText(dVar.s).setPositiveBtnText(dVar.p).setIcon(dVar.mn).setDialogStatusChangedListener(new IDialogStatusChangedListener() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.p.1
                @Override // com.bytedance.sdk.openadsdk.downloadnew.core.IDialogStatusChangedListener
                public void onCancel(DialogInterface dialogInterface) {
                    d.InterfaceC0211d interfaceC0211d = dVar.ia;
                    if (interfaceC0211d != null) {
                        interfaceC0211d.ox(dialogInterface);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.downloadnew.core.IDialogStatusChangedListener
                public void onNegativeBtnClick(DialogInterface dialogInterface) {
                    d.InterfaceC0211d interfaceC0211d = dVar.ia;
                    if (interfaceC0211d != null) {
                        try {
                            interfaceC0211d.d(dialogInterface);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.downloadnew.core.IDialogStatusChangedListener
                public void onPositiveBtnClick(DialogInterface dialogInterface) {
                    d.InterfaceC0211d interfaceC0211d = dVar.ia;
                    if (interfaceC0211d != null) {
                        interfaceC0211d.dq(dialogInterface);
                    }
                }
            });
        }

        @Override // com.ss.android.download.api.config.ig
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public AlertDialog d(com.ss.android.download.api.model.d dVar) {
            if (dVar != null && ox.iw() != null) {
                Context context = dVar.dq;
                if (context != null && (context instanceof Activity)) {
                    return ox.iw().showDialogBySelf((Activity) dVar.dq, dVar.o == 1, ox(dVar));
                }
                ox.iw().showDialogByDelegate(this.dq, dVar.o == 1, ox(dVar));
            }
            return null;
        }

        @Override // com.ss.android.download.api.config.ig
        public void dq(int i, Context context, DownloadModel downloadModel, String str, Drawable drawable, int i2) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                Toast.makeText(context, str, 0).show();
            } catch (Exception e2) {
                com.ss.android.socialbase.downloader.ox.dq.s("LibUIFactory", "showToastWithDuration e " + e2.getMessage());
            }
        }
    }

    public static class s implements IDownloadHttpService {
        @Override // com.ss.android.socialbase.downloader.network.IDownloadHttpService
        public com.ss.android.socialbase.downloader.network.kk downloadWithConnection(int i, String str, List<com.ss.android.socialbase.downloader.model.ox> list) throws IOException {
            final d.dq dq = com.bytedance.sdk.openadsdk.downloadnew.d.dq(str, list);
            if (dq != null) {
                return new com.ss.android.socialbase.downloader.network.kk() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.s.1
                    @Override // com.ss.android.socialbase.downloader.network.mn
                    public int d() {
                        return dq.ox;
                    }

                    @Override // com.ss.android.socialbase.downloader.network.kk
                    public InputStream dq() {
                        return dq.dq;
                    }

                    @Override // com.ss.android.socialbase.downloader.network.mn
                    public String dq(String str2) {
                        Map<String, String> map = dq.f3737d;
                        if (map != null) {
                            return map.get(str2);
                        }
                        return null;
                    }

                    @Override // com.ss.android.socialbase.downloader.network.mn
                    public void ox() {
                    }

                    @Override // com.ss.android.socialbase.downloader.network.kk
                    public void p() {
                        try {
                            dq.p.disconnect();
                        } catch (Exception unused) {
                        }
                    }
                };
            }
            return null;
        }
    }

    static {
        try {
            dq = com.bytedance.sdk.openadsdk.api.plugin.d.dq(getContext(), Environment.DIRECTORY_DOWNLOADS).getPath();
        } catch (Throwable unused) {
        }
        ia = new com.ss.android.download.api.download.dq.dq() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.6
            @Override // com.ss.android.download.api.download.dq.dq
            public void d(DownloadInfo downloadInfo, String str) {
                com.bytedance.sdk.openadsdk.api.ox.d("TTDownloadVisitor", "completeListener: onInstalled");
                ox.ox(str);
            }

            @Override // com.ss.android.download.api.download.dq.dq
            public void dq(DownloadModel downloadModel, DownloadController downloadController, DownloadEventConfig downloadEventConfig) {
                com.bytedance.sdk.openadsdk.api.ox.d("TTDownloadVisitor", "completeListener: onDownloadStart");
            }

            @Override // com.ss.android.download.api.download.dq.dq
            public void dq(DownloadInfo downloadInfo) {
                com.bytedance.sdk.openadsdk.api.ox.d("TTDownloadVisitor", "completeListener: onCanceled");
            }

            @Override // com.ss.android.download.api.download.dq.dq
            public void dq(DownloadInfo downloadInfo, BaseException baseException, String str) {
                com.bytedance.sdk.openadsdk.api.ox.d("TTDownloadVisitor", "completeListener: onDownloadFailed");
            }

            @Override // com.ss.android.download.api.download.dq.dq
            public void dq(DownloadInfo downloadInfo, String str) {
                com.bytedance.sdk.openadsdk.api.ox.d("TTDownloadVisitor", "completeListener: onDownloadFinished");
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject d(com.ss.android.download.api.model.ox oxVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("category", oxVar.dq());
            jSONObject.put(TTDownloadField.TT_TAG, oxVar.d());
            jSONObject.put(TTDownloadField.TT_LABEL, oxVar.ox());
            jSONObject.put(TTDownloadField.TT_IS_AD, oxVar.p());
            jSONObject.put("adId", oxVar.s());
            jSONObject.put(TTDownloadField.TT_LOG_EXTRA, oxVar.iw());
            jSONObject.put("extValue", oxVar.mn());
            jSONObject.put("extJson", oxVar.ia());
            jSONObject.put(TTDownloadField.TT_PARAMS_JSON, oxVar.kk());
            jSONObject.put("eventSource", oxVar.no());
            jSONObject.put(TTDownloadField.TT_EXTRA_OBJECT, oxVar.ig());
            jSONObject.put(TTDownloadField.TT_CLICK_TRACK_URL, oxVar.o());
            jSONObject.put("isV3", oxVar.mp());
            jSONObject.put("V3EventName", oxVar.q());
            jSONObject.put("V3EventParams", oxVar.jy());
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public static void d() {
        dq().mn();
        if (iw() != null) {
            iw().clearAllData(dq);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean d(Context context) {
        com.ss.android.download.api.dq dq2;
        if (context == null) {
            return false;
        }
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        if (TextUtils.isEmpty(packageName)) {
            packageName = "";
        }
        if (mn()) {
            try {
                dq2 = o.dq(applicationContext).dq("pangolin");
            } catch (Throwable unused) {
            }
            if (dq2 != null) {
                return false;
            }
            dq2.dq(new C0199ox()).dq(new dq()).dq(new p(applicationContext)).dq(new d()).dq(new com.ss.android.download.api.config.o() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.3
                @Override // com.ss.android.download.api.config.o
                public JSONObject dq() {
                    return ox.ia();
                }
            }).dq(new com.ss.android.download.api.config.d() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.2
                @Override // com.ss.android.download.api.config.d
                public boolean dq() {
                    if (ox.iw() != null) {
                        return ox.iw().getAppIsBackground();
                    }
                    return false;
                }
            }).dq(new dq.C0212dq().d("143").dq("open_news").ox("6.6.0.7").p("6607").dq()).dq(new fw() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.1
                @Override // com.ss.android.download.api.config.fw
                public byte[] dq(byte[] bArr, int i) {
                    return new byte[0];
                }
            }).dq(packageName + ".TTFileProvider").dq(dq(applicationContext, ia())).dq();
            com.ss.android.downloadlib.mn.dq.dq();
            o.dq(applicationContext).p().dq(1);
            o.dq(applicationContext).dq(ia);
            com.ss.android.socialbase.appdownloader.p.o().dq(new bl() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.4
                @Override // com.ss.android.socialbase.downloader.depend.bl
                public boolean dq(Intent intent) {
                    return false;
                }
            });
            return true;
        }
        dq2 = o.dq(applicationContext).dq();
        if (dq2 != null) {
        }
    }

    public static o dq() {
        dq(getContext());
        return o.dq(getContext());
    }

    private static DownloaderBuilder dq(Context context, JSONObject jSONObject) {
        return new DownloaderBuilder(context).downloadSetting(new h() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.5
            @Override // com.ss.android.socialbase.downloader.depend.h
            public JSONObject dq() {
                return ox.ia();
            }
        }).downloadExpSwitch(jSONObject.optInt("download_exp_switch_temp", 1040187391)).httpService(new s());
    }

    public static void dq(int i) {
        Map<Integer, ITTDownloadAdapter.OnEventLogHandler> map = mn;
        if (map != null) {
            map.remove(Integer.valueOf(i));
        }
    }

    public static void dq(int i, ITTDownloadAdapter.OnEventLogHandler onEventLogHandler) {
        if (onEventLogHandler != null) {
            if (mn == null) {
                mn = DesugarCollections.synchronizedMap(new WeakHashMap());
            }
            mn.put(Integer.valueOf(i), onEventLogHandler);
        }
    }

    public static void dq(Context context) {
        if (context == null) {
            context = TTAppContextHolder.getContext();
        }
        if (context == null) {
            return;
        }
        if (!p.get()) {
            try {
                com.ss.android.socialbase.appdownloader.p.o().dq(true);
            } catch (Throwable unused) {
            }
            synchronized (ox.class) {
                try {
                    AtomicBoolean atomicBoolean = p;
                    if (!atomicBoolean.get()) {
                        iw = context.getApplicationContext();
                        if (iw() != null) {
                            String initPath = iw().initPath(f3738d);
                            if (!TextUtils.isEmpty(initPath)) {
                                dq = initPath;
                            }
                        }
                        atomicBoolean.set(d(iw));
                    }
                } finally {
                }
            }
        }
        if (p.get()) {
            AtomicBoolean atomicBoolean2 = s;
            if (atomicBoolean2.compareAndSet(false, true)) {
                TTDownloadEventLogger tTDownloadEventLogger = iw() != null ? iw().getTTDownloadEventLogger() : null;
                if (tTDownloadEventLogger == null) {
                    atomicBoolean2.set(false);
                } else {
                    tTDownloadEventLogger.onDownloadConfigReady();
                }
            }
        }
    }

    public static void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        dq = str;
    }

    public static boolean dq(Activity activity, final ExitInstallListener exitInstallListener) {
        return com.ss.android.downloadlib.addownload.dq.dq.dq().dq(activity, false, new dq.InterfaceC0214dq() { // from class: com.bytedance.sdk.openadsdk.downloadnew.ox.7
            @Override // com.ss.android.downloadlib.addownload.dq.dq.InterfaceC0214dq
            public void dq() {
                ExitInstallListener exitInstallListener2 = ExitInstallListener.this;
                if (exitInstallListener2 != null) {
                    exitInstallListener2.onExitInstall();
                }
            }
        });
    }

    public static boolean dq(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        return dq().s().dq(context, uri, downloadModel, downloadEventConfig, downloadController);
    }

    public static boolean dq(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener) {
        return dq().s().dq(context, uri, downloadModel, downloadEventConfig, downloadController, iDownloadButtonClickListener);
    }

    public static boolean dq(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            List<DownloadInfo> d2 = com.ss.android.socialbase.appdownloader.p.o().d(context);
            if (!d2.isEmpty()) {
                for (DownloadInfo downloadInfo : d2) {
                    if (downloadInfo != null && str.equals(downloadInfo.getUrl())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean dq(Uri uri) {
        return com.ss.android.downloadlib.d.o.dq(uri);
    }

    public static boolean dq(String str, String str2, JSONObject jSONObject, Object obj) {
        Map<Integer, ITTDownloadAdapter.OnEventLogHandler> ox2;
        String str3;
        String str4;
        Object obj2;
        boolean z = false;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && jSONObject != null && (ox2 = ox()) != null) {
            for (Map.Entry<Integer, ITTDownloadAdapter.OnEventLogHandler> entry : ox2.entrySet()) {
                int intValue = entry.getKey().intValue();
                ITTDownloadAdapter.OnEventLogHandler value = entry.getValue();
                if (value != null) {
                    str3 = str;
                    str4 = str2;
                    obj2 = obj;
                    boolean onEventLog = value.onEventLog(intValue, jSONObject.toString(), str3, str4, obj2);
                    if (!z && !onEventLog) {
                        z = true;
                    }
                } else {
                    str3 = str;
                    str4 = str2;
                    obj2 = obj;
                }
                str = str3;
                str2 = str4;
                obj = obj2;
            }
        }
        return z;
    }

    private static Context getContext() {
        Context context = iw;
        return context == null ? TTAppContextHolder.getContext() : context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static JSONObject ia() {
        try {
            ITTDownloadVisitor iw2 = iw();
            if (iw2 != null) {
                JSONObject downloadSettings = iw2.getDownloadSettings();
                if (downloadSettings.optInt("enable_app_install_receiver", 1) == 0) {
                    downloadSettings.put("enable_app_install_receiver", 0);
                }
                return downloadSettings;
            }
        } catch (Exception unused) {
        }
        return new JSONObject();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ITTDownloadVisitor iw() {
        ITTDownloadVisitor iTTDownloadVisitor = ox;
        if (iTTDownloadVisitor != null) {
            return iTTDownloadVisitor;
        }
        TTAdManager adManager = TTAdSdk.getAdManager();
        if (adManager == null) {
            return null;
        }
        return (ITTDownloadVisitor) adManager.getExtra(ITTDownloadVisitor.class, com.bytedance.sdk.openadsdk.downloadnew.dq.dq(1));
    }

    private static boolean mn() {
        return false;
    }

    public static Map<Integer, ITTDownloadAdapter.OnEventLogHandler> ox() {
        return mn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ox(String str) {
        com.ss.android.downloadad.api.dq.d dq2;
        JSONObject mn2;
        if (TextUtils.isEmpty(str) || (dq2 = iw.dq().dq(str)) == null || (mn2 = dq2.mn()) == null || iw() == null) {
            return;
        }
        iw().checkAutoControl(mn2, str);
    }
}

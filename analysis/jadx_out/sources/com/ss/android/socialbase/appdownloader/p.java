package com.ss.android.socialbase.appdownloader;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Environment;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.socialbase.appdownloader.ox.jy;
import com.ss.android.socialbase.appdownloader.ox.mp;
import com.ss.android.socialbase.appdownloader.ox.o;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.bl;
import com.ss.android.socialbase.downloader.depend.ir;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.depend.q;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.impls.cd;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private static volatile p f9293d = null;
    private static final String dq = "p";
    private static boolean ia;
    private static boolean iw;
    private static boolean mn;
    private com.ss.android.socialbase.appdownloader.ox.iw cd;

    /* renamed from: f, reason: collision with root package name */
    private com.ss.android.socialbase.appdownloader.ox.mn f9294f;
    private mp fw;
    private o gh;
    private ir i;
    private com.ss.android.socialbase.appdownloader.ox.ia jy;
    private Future kk;
    private jy le;
    private com.ss.android.socialbase.appdownloader.ox.ox mp;
    private int o;
    private String ox;
    private String p;
    private com.ss.android.socialbase.appdownloader.ox.p q;
    private bl r;
    private DownloadReceiver s = new DownloadReceiver();
    private boolean no = false;
    private boolean ig = false;

    private p() {
    }

    private DownloadInfo d(Context context, String str) {
        List<DownloadInfo> downloadInfoList = Downloader.getInstance(context).getDownloadInfoList(str);
        if (downloadInfoList == null) {
            return null;
        }
        for (DownloadInfo downloadInfo : downloadInfoList) {
            if (downloadInfo != null && downloadInfo.isSavePathRedirected()) {
                return downloadInfo;
            }
        }
        return null;
    }

    private void d(int i) {
        this.o = com.ss.android.socialbase.downloader.mn.dq.ox().dq("app_install_keep_receiver_time_s", 60);
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "tryUnRegisterTempAppInstallDownloadReceiver mAppInstallReceiverKeepTime:" + this.o);
        if (this.o <= 0) {
            return;
        }
        if (i > 0) {
            this.o = i;
        }
        Future future = this.kk;
        if (future != null) {
            try {
                future.cancel(true);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        this.kk = com.ss.android.socialbase.downloader.downloader.ox.dq(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.p.2
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.socialbase.downloader.ox.dq.d(p.dq, "registerDownloadReceiver tryUnRegisterTempAppInstallDownloadReceiver run inner");
                p.this.ig();
                p.this.gh();
            }
        }, this.o, TimeUnit.SECONDS);
    }

    private kx dq(final com.ss.android.socialbase.appdownloader.ox.s sVar) {
        if (sVar == null) {
            return null;
        }
        return new kx() { // from class: com.ss.android.socialbase.appdownloader.p.6
            @Override // com.ss.android.socialbase.downloader.depend.kx
            public String dq() {
                return sVar.dq();
            }

            @Override // com.ss.android.socialbase.downloader.depend.kx
            public void dq(int i, DownloadInfo downloadInfo, String str, String str2) {
                if (i != 1 && i != 3) {
                    switch (i) {
                        case 8:
                            downloadInfo.getPackageName();
                            break;
                        case 9:
                            com.ss.android.socialbase.downloader.downloader.ox.ob();
                            break;
                    }
                    return;
                }
                downloadInfo.getStatus();
                downloadInfo.getDownloadTime();
            }

            @Override // com.ss.android.socialbase.downloader.depend.kx
            public boolean dq(boolean z) {
                return sVar.dq(z);
            }
        };
    }

    private DownloadInfo dq(Context context, String str, File file) {
        if (context == null || TextUtils.isEmpty(str) || file == null) {
            return null;
        }
        return Downloader.getInstance(context).getDownloadInfo(str, file.getAbsolutePath());
    }

    private List<com.ss.android.socialbase.downloader.model.ox> dq(List<com.ss.android.socialbase.downloader.model.ox> list) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        if (list != null && list.size() > 0) {
            for (com.ss.android.socialbase.downloader.model.ox oxVar : list) {
                if (oxVar != null && !TextUtils.isEmpty(oxVar.dq()) && !TextUtils.isEmpty(oxVar.d())) {
                    if (oxVar.dq().equals("User-Agent")) {
                        z = true;
                    }
                    arrayList.add(new com.ss.android.socialbase.downloader.model.ox(oxVar.dq(), oxVar.d()));
                }
            }
        }
        if (!z) {
            arrayList.add(new com.ss.android.socialbase.downloader.model.ox("User-Agent", com.ss.android.socialbase.appdownloader.d.dq.dq));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(DownloadTask downloadTask, int i, boolean z) {
        if (downloadTask == null) {
            return;
        }
        downloadTask.download();
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            downloadInfo.setAntiHijackErrorCode(i);
        }
        if (downloadInfo == null || !z) {
            return;
        }
        downloadInfo.setSavePathRedirected(z);
    }

    public static boolean dq(Context context, int i) {
        return ox.dq(context, i, true) == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gh() {
        synchronized (this.s) {
            if (mn) {
                return;
            }
            try {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.MEDIA_MOUNTED");
                intentFilter2.addDataScheme("file");
                com.ss.android.socialbase.downloader.downloader.ox.ob().registerReceiver(this.s, intentFilter);
                com.ss.android.socialbase.downloader.downloader.ox.ob().registerReceiver(this.s, intentFilter2);
                mn = true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "registerDownloadReceiver mIsRegistered:" + mn);
        }
    }

    public static p o() {
        if (f9293d == null) {
            synchronized (p.class) {
                try {
                    if (f9293d == null) {
                        f9293d = new p();
                    }
                } finally {
                }
            }
        }
        return f9293d;
    }

    private void ox(Context context) {
        if (context == null || iw) {
            return;
        }
        com.ss.android.socialbase.downloader.constants.s.dq("application/vnd.android.package-archive");
        com.ss.android.socialbase.downloader.downloader.ox.dq(context);
        com.ss.android.socialbase.downloader.downloader.ox.dq(new com.ss.android.socialbase.appdownloader.p.d());
        if (this.ig) {
            com.ss.android.socialbase.downloader.downloader.ox.dq(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.p.1
                @Override // java.lang.Runnable
                public void run() {
                    p.this.gh();
                }
            }, 5L, TimeUnit.SECONDS);
        } else {
            gh();
        }
        r();
        iw = true;
    }

    private void r() {
        cd.dq(new cd.d() { // from class: com.ss.android.socialbase.appdownloader.p.3
            @Override // com.ss.android.socialbase.downloader.impls.cd.d
            public void dq(DownloadInfo downloadInfo, long j, boolean z, int i) {
                RetryJobSchedulerService.dq(downloadInfo, j, z, i);
            }
        });
    }

    public com.ss.android.socialbase.appdownloader.ox.p d() {
        return this.q;
    }

    public List<DownloadInfo> d(Context context) {
        return Downloader.getInstance(context).getDownloadingDownloadInfosWithMimeType("application/vnd.android.package-archive");
    }

    public void d(String str) {
        Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).setDefaultSavePath(str);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(30:35|(1:37)|38|(2:42|43)|46|(1:53)|54|(2:60|(1:62)(22:63|64|(1:66)|67|(3:69|(5:72|73|74|75|70)|80)|82|83|84|(1:86)(1:123)|87|88|89|90|91|92|(6:97|(1:101)|102|(1:106)|(1:(1:118)(1:117))|119)|120|(2:99|101)|102|(2:104|106)|(0)|119))|126|64|(0)|67|(0)|82|83|84|(0)(0)|87|88|89|90|91|92|(7:94|97|(0)|102|(0)|(0)|119)|120|(0)|102|(0)|(0)|119) */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0182, code lost:
    
        r16 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0184, code lost:
    
        r18 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0348 A[Catch: all -> 0x016b, TryCatch #4 {all -> 0x016b, blocks: (B:75:0x0162, B:82:0x016e, B:92:0x01a5, B:94:0x01ab, B:99:0x01b7, B:101:0x01c3, B:102:0x01ce, B:104:0x0348, B:106:0x0352, B:109:0x035d, B:111:0x0363, B:113:0x0369, B:115:0x0373, B:117:0x0379, B:118:0x038b), top: B:74:0x0162 }] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0187 A[Catch: all -> 0x0182, TRY_LEAVE, TryCatch #0 {all -> 0x0182, blocks: (B:84:0x0174, B:86:0x017a, B:123:0x0187), top: B:83:0x0174 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0143 A[Catch: all -> 0x0044, TryCatch #1 {all -> 0x0044, blocks: (B:7:0x0011, B:11:0x0024, B:14:0x002d, B:16:0x003b, B:17:0x0049, B:19:0x0051, B:20:0x005a, B:23:0x0064, B:25:0x0070, B:28:0x007c, B:30:0x008a, B:31:0x008e, B:33:0x0095, B:35:0x009f, B:38:0x00aa, B:40:0x00be, B:46:0x00d8, B:49:0x00f1, B:51:0x00f7, B:54:0x0106, B:56:0x010c, B:58:0x0112, B:60:0x0118, B:62:0x011e, B:63:0x0129, B:64:0x013d, B:66:0x0143, B:67:0x0148, B:69:0x0152, B:70:0x0156, B:72:0x015c), top: B:6:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0152 A[Catch: all -> 0x0044, TryCatch #1 {all -> 0x0044, blocks: (B:7:0x0011, B:11:0x0024, B:14:0x002d, B:16:0x003b, B:17:0x0049, B:19:0x0051, B:20:0x005a, B:23:0x0064, B:25:0x0070, B:28:0x007c, B:30:0x008a, B:31:0x008e, B:33:0x0095, B:35:0x009f, B:38:0x00aa, B:40:0x00be, B:46:0x00d8, B:49:0x00f1, B:51:0x00f7, B:54:0x0106, B:56:0x010c, B:58:0x0112, B:60:0x0118, B:62:0x011e, B:63:0x0129, B:64:0x013d, B:66:0x0143, B:67:0x0148, B:69:0x0152, B:70:0x0156, B:72:0x015c), top: B:6:0x0011 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x017a A[Catch: all -> 0x0182, TryCatch #0 {all -> 0x0182, blocks: (B:84:0x0174, B:86:0x017a, B:123:0x0187), top: B:83:0x0174 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01b7 A[Catch: all -> 0x016b, TryCatch #4 {all -> 0x016b, blocks: (B:75:0x0162, B:82:0x016e, B:92:0x01a5, B:94:0x01ab, B:99:0x01b7, B:101:0x01c3, B:102:0x01ce, B:104:0x0348, B:106:0x0352, B:109:0x035d, B:111:0x0363, B:113:0x0369, B:115:0x0373, B:117:0x0379, B:118:0x038b), top: B:74:0x0162 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int dq(iw iwVar) {
        boolean z;
        q vf;
        List<com.ss.android.socialbase.downloader.depend.mp> ji;
        boolean z2;
        DownloadTask with;
        final DownloadTask autoInstall;
        DownloadInfo downloadInfo;
        if (iwVar == null || iwVar.getContext() == null) {
            return 0;
        }
        try {
            List<com.ss.android.socialbase.downloader.model.ox> dq2 = dq(iwVar.p());
            String dq3 = iwVar.dq();
            if (TextUtils.isEmpty(dq3)) {
                return 0;
            }
            int gh = iwVar.gh();
            boolean z3 = gh == 0;
            String j = iwVar.j();
            String d2 = iwVar.d();
            if (TextUtils.isEmpty(j)) {
                j = ox.dq(dq3, d2, iwVar.ig(), z3);
            }
            if (j.length() > 255) {
                j = j.substring(j.length() - MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            }
            String str = j;
            String str2 = TextUtils.isEmpty(d2) ? str : d2;
            String ig = iwVar.ig();
            if (str.endsWith(".apk") && !ox.ox(iwVar.ig())) {
                ig = "application/vnd.android.package-archive";
            }
            String ox = iwVar.ox();
            if (TextUtils.isEmpty(iwVar.ox())) {
                ox = ox.d();
            }
            String str3 = ox;
            if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str)) {
                return 0;
            }
            String by = iwVar.by();
            if (TextUtils.isEmpty(by)) {
                by = dq3;
            }
            int dq4 = com.ss.android.socialbase.downloader.downloader.ox.dq(by, str3);
            if (com.ss.android.socialbase.downloader.mn.dq.dq(iwVar.bu()).dq("resume_task_override_settings") && (downloadInfo = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getDownloadInfo(dq4)) != null) {
                try {
                    iwVar.dq(new JSONObject(downloadInfo.getDownloadSettingString()));
                } catch (Throwable unused) {
                }
            }
            com.ss.android.socialbase.downloader.mn.dq.dq(dq4, iwVar.bu());
            boolean wn = iwVar.wn();
            if (com.ss.android.socialbase.downloader.mn.dq.dq(dq4).dq("modify_force", 1) == 1 && !wn && com.ss.android.socialbase.downloader.kk.iw.p(str3, str) && Downloader.getInstance(iwVar.getContext()).getDownloadInfo(dq4) == null) {
                wn = true;
            }
            IDownloadListener o = iwVar.o();
            if (o == null && (iwVar.s() || iwVar.iw())) {
                if (iwVar.q() == null) {
                    z = wn;
                    o = new com.ss.android.socialbase.appdownloader.s.d(iwVar.getContext(), dq4, str2, str3, str, iwVar.no());
                    vf = iwVar.vf();
                    if (vf == null) {
                        vf = new q() { // from class: com.ss.android.socialbase.appdownloader.p.4
                            @Override // com.ss.android.socialbase.downloader.depend.q
                            public void dq(DownloadInfo downloadInfo2, BaseException baseException, int i) {
                                if (p.this.jy != null) {
                                    p.this.jy.dq(downloadInfo2, baseException, i);
                                }
                            }
                        };
                    }
                    ji = com.ss.android.socialbase.downloader.downloader.ox.ji();
                    if (!ji.isEmpty()) {
                        Iterator<com.ss.android.socialbase.downloader.depend.mp> it = ji.iterator();
                        while (it.hasNext()) {
                            try {
                                iwVar.dq(it.next());
                            } catch (Throwable th) {
                                th = th;
                                com.ss.android.socialbase.downloader.p.dq.dq(iwVar.nh(), (DownloadInfo) null, new BaseException(1003, com.ss.android.socialbase.downloader.kk.iw.d(th, "addDownloadTask")), 0);
                                com.ss.android.socialbase.downloader.ox.dq.s(dq, String.format("add download task error:%s", th));
                                return 0;
                            }
                        }
                    }
                    String no = iwVar.no();
                    JSONObject jSONObject = TextUtils.isEmpty(no) ? new JSONObject(no) : new JSONObject();
                    int i = gh;
                    boolean z4 = z3;
                    jSONObject.put("auto_install_with_notification", iwVar.mn());
                    jSONObject.put("auto_install_without_notification", iwVar.iw());
                    no = jSONObject.toString();
                    if (!iwVar.s() && !iwVar.iw()) {
                        z2 = false;
                        if (z2 && com.ss.android.socialbase.downloader.mn.dq.dq(dq4).d("enable_notification_ui") > 0) {
                            com.ss.android.socialbase.appdownloader.s.ox.dq().dq(dq4, iwVar.dc());
                        }
                        with = com.ss.android.socialbase.downloader.downloader.d.with(iwVar.getContext());
                        autoInstall = with.url(dq3).backUpUrls(iwVar.jw()).name(str).title(str2).savePath(str3).onlyWifi(iwVar.ia()).extraHeaders(dq2).depend(vf).retryCount(iwVar.k()).backUpUrlRetryCount(iwVar.wp()).showNotification(z2).extra(no).mimeType(ig).minProgressTimeMsInterval(iwVar.n()).maxProgressCount(iwVar.op()).mainThreadListener(iwVar.kk()).notificationListener(o).notificationEventListener(dq(iwVar.ob())).force(z).autoResumed(iwVar.fw()).showNotificationForAutoResumed(iwVar.cd()).chunkStategy(iwVar.jy()).chunkAdjustCalculator(iwVar.f()).needHttpsToHttpRetry(iwVar.mp()).packageName(iwVar.r()).md5(iwVar.i()).expectFileLength(iwVar.le()).needRetryDelay(iwVar.e()).retryDelayTimeArray(iwVar.kx()).needDefaultHttpServiceBackUp(iwVar.h()).needReuseFirstConnection(iwVar.ji()).needReuseChunkRunnable(iwVar.ir()).needIndependentProcess(iwVar.u()).enqueueType(iwVar.er()).monitorDepend(iwVar.nh()).retryDelayTimeCalculator(iwVar.bl()).headConnectionAvailable(iwVar.c()).fileUriProvider(iwVar.l()).diskSpaceHandler(iwVar.fd()).needChunkDowngradeRetry(iwVar.ce()).notificationClickCallback(iwVar.t()).downloadSetting(iwVar.bu()).iconUrl(iwVar.dc()).needSDKMonitor(iwVar.v()).monitorScene(iwVar.ds()).extraMonitorStatus(iwVar.vw()).executorGroup(iwVar.xz()).throttleNetSpeed(iwVar.yy()).distinctDirectory(iwVar.ha()).taskKey(iwVar.by()).setAutoInstall(iwVar.cv());
                        if (autoInstall != null && !iwVar.gx().isEmpty()) {
                            autoInstall.setDownloadCompleteHandlers(iwVar.gx());
                        }
                        if (autoInstall != null) {
                            if (!z2 || !iwVar.uh() || iwVar.getActivity() == null || iwVar.getActivity().isFinishing() || com.ss.android.socialbase.appdownloader.s.p.dq()) {
                                com.ss.android.socialbase.downloader.ox.dq.d(dq, "notification permission need not request, start download :".concat(String.valueOf(str2)));
                                dq(autoInstall, i, z4);
                                autoInstall.getDownloadInfo();
                            } else {
                                final String str4 = str2;
                                final int i2 = i;
                                final boolean z5 = z4;
                                com.ss.android.socialbase.appdownloader.s.p.dq(iwVar.getActivity(), new com.ss.android.socialbase.appdownloader.ox.q() { // from class: com.ss.android.socialbase.appdownloader.p.5
                                    @Override // com.ss.android.socialbase.appdownloader.ox.q
                                    public void d() {
                                        com.ss.android.socialbase.downloader.ox.dq.d(p.dq, "notification permission denied, start download :" + str4);
                                        p.this.dq(autoInstall, i2, z5);
                                    }

                                    @Override // com.ss.android.socialbase.appdownloader.ox.q
                                    public void dq() {
                                        com.ss.android.socialbase.downloader.ox.dq.d(p.dq, "notification permission granted, start download :" + str4);
                                        p.this.dq(autoInstall, i2, z5);
                                    }
                                });
                            }
                        }
                        return dq4;
                    }
                    z2 = true;
                    if (z2) {
                        com.ss.android.socialbase.appdownloader.s.ox.dq().dq(dq4, iwVar.dc());
                    }
                    with = com.ss.android.socialbase.downloader.downloader.d.with(iwVar.getContext());
                    autoInstall = with.url(dq3).backUpUrls(iwVar.jw()).name(str).title(str2).savePath(str3).onlyWifi(iwVar.ia()).extraHeaders(dq2).depend(vf).retryCount(iwVar.k()).backUpUrlRetryCount(iwVar.wp()).showNotification(z2).extra(no).mimeType(ig).minProgressTimeMsInterval(iwVar.n()).maxProgressCount(iwVar.op()).mainThreadListener(iwVar.kk()).notificationListener(o).notificationEventListener(dq(iwVar.ob())).force(z).autoResumed(iwVar.fw()).showNotificationForAutoResumed(iwVar.cd()).chunkStategy(iwVar.jy()).chunkAdjustCalculator(iwVar.f()).needHttpsToHttpRetry(iwVar.mp()).packageName(iwVar.r()).md5(iwVar.i()).expectFileLength(iwVar.le()).needRetryDelay(iwVar.e()).retryDelayTimeArray(iwVar.kx()).needDefaultHttpServiceBackUp(iwVar.h()).needReuseFirstConnection(iwVar.ji()).needReuseChunkRunnable(iwVar.ir()).needIndependentProcess(iwVar.u()).enqueueType(iwVar.er()).monitorDepend(iwVar.nh()).retryDelayTimeCalculator(iwVar.bl()).headConnectionAvailable(iwVar.c()).fileUriProvider(iwVar.l()).diskSpaceHandler(iwVar.fd()).needChunkDowngradeRetry(iwVar.ce()).notificationClickCallback(iwVar.t()).downloadSetting(iwVar.bu()).iconUrl(iwVar.dc()).needSDKMonitor(iwVar.v()).monitorScene(iwVar.ds()).extraMonitorStatus(iwVar.vw()).executorGroup(iwVar.xz()).throttleNetSpeed(iwVar.yy()).distinctDirectory(iwVar.ha()).taskKey(iwVar.by()).setAutoInstall(iwVar.cv());
                    if (autoInstall != null) {
                        autoInstall.setDownloadCompleteHandlers(iwVar.gx());
                    }
                    if (autoInstall != null) {
                    }
                    return dq4;
                }
                o = new com.ss.android.socialbase.appdownloader.s.d(iwVar.q());
            }
            z = wn;
            vf = iwVar.vf();
            if (vf == null) {
            }
            ji = com.ss.android.socialbase.downloader.downloader.ox.ji();
            if (!ji.isEmpty()) {
            }
            String no2 = iwVar.no();
            if (TextUtils.isEmpty(no2)) {
            }
            int i3 = gh;
            boolean z42 = z3;
            jSONObject.put("auto_install_with_notification", iwVar.mn());
            jSONObject.put("auto_install_without_notification", iwVar.iw());
            no2 = jSONObject.toString();
            if (!iwVar.s()) {
                z2 = false;
                if (z2) {
                }
                with = com.ss.android.socialbase.downloader.downloader.d.with(iwVar.getContext());
                autoInstall = with.url(dq3).backUpUrls(iwVar.jw()).name(str).title(str2).savePath(str3).onlyWifi(iwVar.ia()).extraHeaders(dq2).depend(vf).retryCount(iwVar.k()).backUpUrlRetryCount(iwVar.wp()).showNotification(z2).extra(no2).mimeType(ig).minProgressTimeMsInterval(iwVar.n()).maxProgressCount(iwVar.op()).mainThreadListener(iwVar.kk()).notificationListener(o).notificationEventListener(dq(iwVar.ob())).force(z).autoResumed(iwVar.fw()).showNotificationForAutoResumed(iwVar.cd()).chunkStategy(iwVar.jy()).chunkAdjustCalculator(iwVar.f()).needHttpsToHttpRetry(iwVar.mp()).packageName(iwVar.r()).md5(iwVar.i()).expectFileLength(iwVar.le()).needRetryDelay(iwVar.e()).retryDelayTimeArray(iwVar.kx()).needDefaultHttpServiceBackUp(iwVar.h()).needReuseFirstConnection(iwVar.ji()).needReuseChunkRunnable(iwVar.ir()).needIndependentProcess(iwVar.u()).enqueueType(iwVar.er()).monitorDepend(iwVar.nh()).retryDelayTimeCalculator(iwVar.bl()).headConnectionAvailable(iwVar.c()).fileUriProvider(iwVar.l()).diskSpaceHandler(iwVar.fd()).needChunkDowngradeRetry(iwVar.ce()).notificationClickCallback(iwVar.t()).downloadSetting(iwVar.bu()).iconUrl(iwVar.dc()).needSDKMonitor(iwVar.v()).monitorScene(iwVar.ds()).extraMonitorStatus(iwVar.vw()).executorGroup(iwVar.xz()).throttleNetSpeed(iwVar.yy()).distinctDirectory(iwVar.ha()).taskKey(iwVar.by()).setAutoInstall(iwVar.cv());
                if (autoInstall != null) {
                }
                if (autoInstall != null) {
                }
                return dq4;
            }
            z2 = true;
            if (z2) {
            }
            with = com.ss.android.socialbase.downloader.downloader.d.with(iwVar.getContext());
            autoInstall = with.url(dq3).backUpUrls(iwVar.jw()).name(str).title(str2).savePath(str3).onlyWifi(iwVar.ia()).extraHeaders(dq2).depend(vf).retryCount(iwVar.k()).backUpUrlRetryCount(iwVar.wp()).showNotification(z2).extra(no2).mimeType(ig).minProgressTimeMsInterval(iwVar.n()).maxProgressCount(iwVar.op()).mainThreadListener(iwVar.kk()).notificationListener(o).notificationEventListener(dq(iwVar.ob())).force(z).autoResumed(iwVar.fw()).showNotificationForAutoResumed(iwVar.cd()).chunkStategy(iwVar.jy()).chunkAdjustCalculator(iwVar.f()).needHttpsToHttpRetry(iwVar.mp()).packageName(iwVar.r()).md5(iwVar.i()).expectFileLength(iwVar.le()).needRetryDelay(iwVar.e()).retryDelayTimeArray(iwVar.kx()).needDefaultHttpServiceBackUp(iwVar.h()).needReuseFirstConnection(iwVar.ji()).needReuseChunkRunnable(iwVar.ir()).needIndependentProcess(iwVar.u()).enqueueType(iwVar.er()).monitorDepend(iwVar.nh()).retryDelayTimeCalculator(iwVar.bl()).headConnectionAvailable(iwVar.c()).fileUriProvider(iwVar.l()).diskSpaceHandler(iwVar.fd()).needChunkDowngradeRetry(iwVar.ce()).notificationClickCallback(iwVar.t()).downloadSetting(iwVar.bu()).iconUrl(iwVar.dc()).needSDKMonitor(iwVar.v()).monitorScene(iwVar.ds()).extraMonitorStatus(iwVar.vw()).executorGroup(iwVar.xz()).throttleNetSpeed(iwVar.yy()).distinctDirectory(iwVar.ha()).taskKey(iwVar.by()).setAutoInstall(iwVar.cv());
            if (autoInstall != null) {
            }
            if (autoInstall != null) {
            }
            return dq4;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public com.ss.android.socialbase.appdownloader.ox.ox dq() {
        return this.mp;
    }

    public DownloadInfo dq(Context context, String str) {
        if (!TextUtils.isEmpty(str) && context != null) {
            try {
                DownloadInfo dq2 = dq(context, str, ia());
                if (dq2 == null) {
                    dq2 = dq(context, str, com.bytedance.sdk.openadsdk.api.plugin.d.dq(context, Environment.DIRECTORY_DOWNLOADS));
                }
                if (dq2 == null) {
                    dq2 = dq(context, str, Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS));
                }
                if (dq2 == null) {
                    dq2 = dq(context, str, com.bytedance.sdk.openadsdk.api.plugin.d.dq(context));
                }
                return (dq2 == null && com.ss.android.socialbase.downloader.mn.dq.ox().dq("get_download_info_by_list")) ? d(context, str) : dq2;
            } catch (Throwable th) {
                com.ss.android.socialbase.downloader.ox.dq.d(dq, "getAppDownloadInfo error:" + th.getMessage());
            }
        }
        return null;
    }

    public String dq(String str, String str2) {
        return (TextUtils.isEmpty(str) || !str.endsWith(".apk") || ox.ox(str2)) ? str2 : "application/vnd.android.package-archive";
    }

    public List<DownloadInfo> dq(Context context) {
        return Downloader.getInstance(context).getUnCompletedDownloadInfosWithMimeType("application/vnd.android.package-archive");
    }

    public void dq(int i) {
        if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("enable_app_install_receiver", 1) <= 0) {
            return;
        }
        no();
        d(i);
    }

    public void dq(Context context, int i, int i2) {
        try {
            switch (i2) {
                case -4:
                case -1:
                    Downloader.getInstance(context).restart(i);
                    break;
                case -3:
                    ox.dq(context, i, true);
                    break;
                case -2:
                    Downloader.getInstance(context).resume(i);
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 7:
                case 8:
                    Downloader.getInstance(context).pause(i);
                    break;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Deprecated
    public void dq(Context context, String str, com.ss.android.socialbase.appdownloader.ox.ox oxVar, com.ss.android.socialbase.appdownloader.ox.p pVar, com.ss.android.socialbase.appdownloader.ox.ia iaVar) {
        if (oxVar != null) {
            this.mp = oxVar;
        }
        if (pVar != null) {
            this.q = pVar;
        }
        if (iaVar != null) {
            this.jy = iaVar;
        }
        ox(context);
    }

    public void dq(jy jyVar) {
        this.le = jyVar;
    }

    public void dq(com.ss.android.socialbase.appdownloader.ox.mn mnVar) {
        this.f9294f = mnVar;
    }

    public void dq(o oVar) {
        this.gh = oVar;
    }

    public void dq(bl blVar) {
        this.r = blVar;
    }

    public void dq(ir irVar) {
        this.i = irVar;
    }

    public void dq(com.ss.android.socialbase.downloader.downloader.cd cdVar) {
        Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).setReserveWifiStatusListener(cdVar);
    }

    public void dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.p = str;
    }

    public void dq(boolean z) {
        this.ig = z;
    }

    public bl f() {
        return this.r;
    }

    public ir fw() {
        return this.i;
    }

    public File ia() {
        return Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getGlobalSaveDir();
    }

    public void ig() {
        jy jyVar;
        synchronized (this.s) {
            try {
                if (mn) {
                    com.ss.android.socialbase.downloader.downloader.ox.ob().unregisterReceiver(this.s);
                    if (ia && (jyVar = this.le) != null) {
                        jyVar.d();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            mn = false;
            ia = false;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "registerDownloadReceiver unRegisterDownloadReceiver");
    }

    public boolean iw() {
        return com.ss.android.socialbase.downloader.mn.dq.d().optInt("package_flag_config", 1) == 1;
    }

    public com.ss.android.socialbase.downloader.downloader.cd jy() {
        return Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getReserveWifiStatusListener();
    }

    public String kk() {
        return this.ox;
    }

    public o mn() {
        return this.gh;
    }

    public mp mp() {
        return this.fw;
    }

    public void no() {
        if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("enable_app_install_receiver", 1) <= 0) {
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "disable app install receiver");
            return;
        }
        synchronized (this.s) {
            try {
                if (ia) {
                    return;
                }
                try {
                    IntentFilter intentFilter = new IntentFilter();
                    intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
                    intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
                    intentFilter.addDataScheme("package");
                    com.ss.android.socialbase.downloader.downloader.ox.ob().registerReceiver(this.s, intentFilter);
                    ia = true;
                    jy jyVar = this.le;
                    if (jyVar != null) {
                        jyVar.dq();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                com.ss.android.socialbase.downloader.ox.dq.d(dq, "tryRegisterTempAppInstallDownloadReceiver mIsAppInstallRegistered:" + mn);
            } finally {
                d(0);
            }
        }
    }

    public com.ss.android.socialbase.appdownloader.ox.ia ox() {
        return this.jy;
    }

    public String p() {
        return this.p;
    }

    public com.ss.android.socialbase.appdownloader.ox.mn q() {
        return this.f9294f;
    }

    public com.ss.android.socialbase.appdownloader.ox.iw s() {
        return this.cd;
    }
}

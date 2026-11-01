package com.ss.android.socialbase.appdownloader;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.os.IBinder;
import android.text.TextUtils;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.C;
import com.ss.android.socialbase.appdownloader.view.DownloadTaskDeleteActivity;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DownloadHandlerService extends Service {
    private static final String dq = "DownloadHandlerService";

    private void d(DownloadInfo downloadInfo, com.ss.android.socialbase.appdownloader.ox.p pVar, kx kxVar) {
        int id = downloadInfo.getId();
        Intent intent = new Intent(this, (Class<?>) DownloadTaskDeleteActivity.class);
        intent.putExtra("extra_click_download_ids", id);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        startActivity(intent);
        com.ss.android.socialbase.downloader.notification.d.dq().dq(id);
        downloadInfo.updateDownloadTime();
        if (pVar != null) {
            pVar.dq(id, 7, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
        }
        if (kxVar != null) {
            kxVar.dq(7, downloadInfo, "", "");
        }
    }

    private static void dq(Context context, int i, boolean z) {
        boolean z2;
        op mp;
        DownloadInfo downloadInfo;
        if (z && (mp = com.ss.android.socialbase.downloader.downloader.p.dq().mp(i)) != null) {
            try {
                downloadInfo = Downloader.getInstance(context).getDownloadInfo(i);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (downloadInfo != null) {
                z2 = mp.d(downloadInfo);
                if (z2 && ox.dq(context, i, true) == 0) {
                    Toast.makeText(context, "Open Fail!", 0).show();
                }
                return;
            }
        }
        z2 = false;
        if (z2) {
            return;
        }
        Toast.makeText(context, "Open Fail!", 0).show();
    }

    private static void dq(Context context, final com.ss.android.socialbase.appdownloader.ox.p pVar, final DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        final kx downloadNotificationEventListener = Downloader.getInstance(context).getDownloadNotificationEventListener(downloadInfo.getId());
        if (pVar == null && downloadNotificationEventListener == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ig().execute(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.DownloadHandlerService.2
            @Override // java.lang.Runnable
            public void run() {
                PackageInfo dq2;
                try {
                    File file = new File(DownloadInfo.this.getSavePath(), DownloadInfo.this.getName());
                    if (file.exists()) {
                        try {
                            String str = (com.ss.android.socialbase.downloader.downloader.ox.ob() == null || (dq2 = ox.dq(DownloadInfo.this, file)) == null) ? "" : dq2.packageName;
                            com.ss.android.socialbase.appdownloader.ox.p pVar2 = pVar;
                            if (pVar2 != null) {
                                pVar2.dq(DownloadInfo.this.getId(), 3, str, -3, DownloadInfo.this.getDownloadTime());
                            }
                            kx kxVar = downloadNotificationEventListener;
                            if (kxVar != null) {
                                kxVar.dq(3, DownloadInfo.this, str, "");
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        });
    }

    private static void dq(Context context, DownloadInfo downloadInfo) {
        if (com.ss.android.socialbase.downloader.kk.iw.d(context.getApplicationContext()) && downloadInfo.isPauseReserveOnWifi()) {
            downloadInfo.stopPauseReserveOnWifi();
        }
    }

    public static void dq(Context context, DownloadInfo downloadInfo, com.ss.android.socialbase.appdownloader.ox.p pVar, kx kxVar) {
        com.ss.android.socialbase.downloader.notification.dq s;
        int id = downloadInfo.getId();
        op mp = com.ss.android.socialbase.downloader.downloader.p.dq().mp(id);
        if ("application/vnd.android.package-archive".equals(downloadInfo.getMimeType()) && mp != null && ox.dq(context, downloadInfo) && mp.ox(downloadInfo)) {
            return;
        }
        switch (downloadInfo.getStatus()) {
            case -4:
            case -1:
                if (com.ss.android.socialbase.downloader.mn.dq.dq(id).d("enable_notification_ui") >= 2 && downloadInfo.isOnlyWifi()) {
                    downloadInfo.setOnlyWifi(false);
                }
                Downloader.getInstance(context).restart(id);
                break;
            case -3:
                dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), id, true);
                dq(context, pVar, downloadInfo);
                if (com.ss.android.socialbase.downloader.mn.dq.dq(id).dq("notification_click_install_auto_cancel", 1) == 0 && (s = com.ss.android.socialbase.downloader.notification.d.dq().s(id)) != null) {
                    s.mn();
                    s.dq(-3, null, false, true);
                    break;
                } else {
                    com.ss.android.socialbase.downloader.notification.d.dq().dq(id);
                    break;
                }
                break;
            case -2:
                if (com.ss.android.socialbase.downloader.downloader.p.dq().s(id)) {
                    Downloader.getInstance(context).resume(id);
                } else {
                    ox.dq(downloadInfo, true, false);
                }
                if (pVar != null) {
                    pVar.dq(id, 6, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
                }
                if (kxVar != null) {
                    kxVar.dq(6, downloadInfo, "", "");
                    break;
                }
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                Downloader.getInstance(context).pause(id);
                dq(context, downloadInfo);
                if (pVar != null) {
                    pVar.dq(id, 5, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
                }
                if (kxVar != null) {
                    kxVar.dq(5, downloadInfo, "", "");
                    break;
                }
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:5:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void dq(DownloadInfo downloadInfo, com.ss.android.socialbase.appdownloader.ox.p pVar, kx kxVar) {
        boolean dq2;
        int id = downloadInfo.getId();
        op mp = com.ss.android.socialbase.downloader.downloader.p.dq().mp(id);
        if (mp != null) {
            try {
                dq2 = mp.dq(downloadInfo);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (dq2) {
                Intent intent = new Intent(this, (Class<?>) DownloadTaskDeleteActivity.class);
                intent.putExtra("extra_click_download_ids", id);
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                startActivity(intent);
                com.ss.android.socialbase.downloader.notification.d.dq().dq(id);
                downloadInfo.updateDownloadTime();
                if (pVar != null) {
                    pVar.dq(id, 7, "", downloadInfo.getStatus(), downloadInfo.getDownloadTime());
                }
                if (kxVar != null) {
                    kxVar.dq(7, downloadInfo, "", "");
                    return;
                }
                return;
            }
            return;
        }
        dq2 = false;
        if (dq2) {
        }
    }

    private boolean dq(Intent intent) {
        if (intent == null) {
            return false;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            return false;
        }
        int intExtra = intent.getIntExtra("extra_click_download_ids", 0);
        intent.getIntExtra("extra_click_download_type", 0);
        com.ss.android.socialbase.appdownloader.ox.p d2 = p.o().d();
        kx downloadNotificationEventListener = Downloader.getInstance(this).getDownloadNotificationEventListener(intExtra);
        if (intent.getBooleanExtra("extra_from_notification", false) && com.ss.android.socialbase.downloader.mn.dq.dq(intExtra).d("notification_opt_2") == 1) {
            com.ss.android.socialbase.downloader.notification.d.dq().iw(intExtra);
        }
        DownloadInfo downloadInfo = Downloader.getInstance(this).getDownloadInfo(intExtra);
        if (downloadInfo == null) {
            return false;
        }
        if (action.equals("android.ss.intent.action.DOWNLOAD_CLICK_CONTENT")) {
            dq(downloadInfo, d2, downloadNotificationEventListener);
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_OPEN")) {
            dq(this, downloadInfo, d2, downloadNotificationEventListener);
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_CLICK_BTN")) {
            if (downloadInfo.getStatus() == 0) {
                return false;
            }
            dq(this, downloadInfo, d2, downloadNotificationEventListener);
            if (downloadInfo.isDownloadOverStatus() && com.ss.android.socialbase.downloader.mn.dq.dq(intExtra).dq("no_hide_notification", 0) == 0 && (com.ss.android.socialbase.downloader.mn.dq.dq(intExtra).d("enable_notification_ui") < 2 || downloadInfo.getStatus() != -1)) {
                com.ss.android.socialbase.downloader.notification.d.dq().dq(intExtra);
                com.ss.android.socialbase.downloader.notification.d.dq().iw(intExtra);
            }
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_DELETE")) {
            d(downloadInfo, d2, downloadNotificationEventListener);
        } else if (action.equals("android.ss.intent.action.DOWNLOAD_HIDE")) {
            com.ss.android.socialbase.downloader.notification.d.dq().dq(intExtra);
        } else if (action.equals("android.intent.action.MEDIA_MOUNTED")) {
            com.ss.android.socialbase.downloader.downloader.ox.ig().execute(new Runnable() { // from class: com.ss.android.socialbase.appdownloader.DownloadHandlerService.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add("application/vnd.android.package-archive");
                        arrayList.add("mime_type_plg");
                        Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).restartAllFailedDownloadTasks(arrayList);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            });
            return true;
        }
        return false;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        com.ss.android.socialbase.downloader.downloader.ox.dq(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "onStartCommand");
        }
        dq(intent);
        stopSelf();
        return 2;
    }
}

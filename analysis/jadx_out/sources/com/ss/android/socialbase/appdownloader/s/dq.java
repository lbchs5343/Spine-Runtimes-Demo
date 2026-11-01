package com.ss.android.socialbase.appdownloader.s;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.ss.android.socialbase.appdownloader.DownloadHandlerService;
import com.ss.android.socialbase.appdownloader.kk;
import com.ss.android.socialbase.appdownloader.s;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.kk.iw;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.fbh;
import g.zc;

/* loaded from: classes.dex */
public class dq extends com.ss.android.socialbase.downloader.notification.dq {

    /* renamed from: d, reason: collision with root package name */
    private final Context f9301d;
    private String iw;
    private final Resources ox;
    private String p;
    private String s;

    public dq(Context context, int i, String str, String str2, String str3, String str4) {
        super(i, str);
        this.s = str2;
        this.p = str3;
        this.iw = str4;
        Context applicationContext = context.getApplicationContext();
        this.f9301d = applicationContext;
        this.ox = applicationContext.getResources();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x020d  */
    /* JADX WARN: Type inference failed for: r12v18, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Notification d(BaseException baseException, boolean z) {
        boolean z2;
        long j;
        String string;
        String string2;
        String str;
        RemoteViews remoteViews;
        String str2;
        BaseException baseException2;
        String string3;
        String str3;
        String str4;
        String str5;
        int i;
        int d2;
        int i2;
        RemoteViews remoteViews2;
        boolean z3;
        ?? r12;
        int s = s();
        int dq = com.ss.android.socialbase.appdownloader.ox.dq(s);
        if (dq == 0) {
            return null;
        }
        zc o = o();
        long iw = iw();
        Notification notification = o.s;
        notification.when = iw;
        int dq2 = dq();
        com.ss.android.socialbase.downloader.mn.dq dq3 = com.ss.android.socialbase.downloader.mn.dq.dq(dq2);
        if (Build.VERSION.SDK_INT >= 24 && dq3.dq("set_notification_group", 0) == 1) {
            o.f20385f = "com.ss.android.socialbase.APP_DOWNLOADER";
        }
        int k = s.k();
        if (k != 0) {
            notification.icon = k;
            z2 = false;
        } else {
            z2 = true;
        }
        o.x(new fbh(1, false));
        int dq4 = dq(dq, dq2);
        if (z2 && dq4 != 0) {
            notification.icon = dq4;
        }
        String str6 = "android.ss.intent.action.DOWNLOAD_CLICK_CONTENT";
        if (dq == 1 || dq == 4 || dq == 2) {
            o.r = dq("android.ss.intent.action.DOWNLOAD_CLICK_CONTENT", dq, dq2);
            o.u(16, false);
        } else if (dq == 3) {
            o.u(16, true);
            if (s != -1 && s != -4) {
                if (s == -3 && dq3.dq("notification_click_install_auto_cancel", 1) == 0) {
                    o.u(16, false);
                }
                str6 = "android.ss.intent.action.DOWNLOAD_OPEN";
            }
            o.r = dq(str6, dq, dq2);
            notification.deleteIntent = dq("android.ss.intent.action.DOWNLOAD_HIDE", dq, dq2);
        }
        long d3 = d();
        long ox = ox();
        int i3 = ox > 0 ? (int) ((100 * d3) / ox) : 0;
        String p = p();
        if (TextUtils.isEmpty(p)) {
            p = this.ox.getString(kk.d("tt_appdownloader_download_unknown_title"));
        }
        RemoteViews kk = kk();
        int no = s.no();
        zc zcVar = o;
        if (com.ss.android.socialbase.downloader.mn.dq.dq(dq2).d("notification_opt_2") != 1) {
            kk.setOnClickPendingIntent(no, dq("android.ss.intent.action.DOWNLOAD_CLICK_BTN", dq, dq2));
        }
        if (com.ss.android.socialbase.downloader.mn.dq.dq(dq2).d("enable_notification_ui") > 0) {
            j = ox;
            kk.setInt(no, "setBackgroundResource", s.gh());
            kk.setTextColor(no, -1);
        } else {
            j = ox;
        }
        kk.setTextViewText(s.mp(), p);
        int dq5 = dq(dq2);
        kk.setViewVisibility(dq5, 0);
        kk.setProgressBar(dq5, 100, i3, z);
        int ig = s.ig();
        if (dq4 != 0) {
            kk.setImageViewResource(ig, dq4);
        }
        if (com.ss.android.socialbase.downloader.mn.dq.dq(dq2).d("enable_notification_ui") > 0) {
            Bitmap dq6 = ox.dq().dq(dq2);
            if (dq6 != null) {
                kk.setInt(ig, "setBackgroundColor", 0);
                kk.setImageViewBitmap(ig, dq6);
            } else {
                kk.setInt(ig, "setBackgroundResource", s.gh());
            }
        }
        int i4 = 8;
        if (dq == 1 || dq == 4) {
            RemoteViews remoteViews3 = kk;
            String str7 = com.ss.android.socialbase.appdownloader.ox.dq(d3) + "/" + com.ss.android.socialbase.appdownloader.ox.dq(j);
            string = this.f9301d.getResources().getString(dq == 1 ? s() == 11 ? kk.d("tt_appdownloader_notification_waiting_download_complete_handler") : kk.d("tt_appdownloader_notification_downloading") : kk.d("tt_appdownloader_notification_prepare"));
            string2 = this.f9301d.getResources().getString(kk.d("tt_appdownloader_notification_download_pause"));
            remoteViews3.setViewVisibility(dq(dq2), 0);
            remoteViews3.setViewVisibility(s.kk(), 8);
            remoteViews3.setViewVisibility(s.o(), 0);
            int no2 = s.no();
            if (com.ss.android.socialbase.appdownloader.ox.dq(this.iw)) {
                remoteViews3.setViewVisibility(no2, 8);
            } else {
                remoteViews3.setViewVisibility(no2, 0);
            }
            if (dq3.d("enable_notification_ui") >= 2) {
                remoteViews3.setViewVisibility(no2, 8);
            }
            str = str7;
            remoteViews = remoteViews3;
        } else if (dq == 2) {
            RemoteViews remoteViews4 = kk;
            str = com.ss.android.socialbase.appdownloader.ox.dq(d3) + "/" + com.ss.android.socialbase.appdownloader.ox.dq(j);
            string = this.f9301d.getResources().getString(kk.d("tt_appdownloader_notification_pausing"));
            string2 = this.f9301d.getResources().getString(kk.d("tt_appdownloader_notification_download_resume"));
            if (dq3.d("notification_opt_2") != 1) {
                z3 = false;
                z3 = false;
                remoteViews4.setViewVisibility(s.o(), 0);
                int dq7 = dq(dq2);
                if (dq3.d("enable_notification_ui") >= 2) {
                    remoteViews4.setViewVisibility(dq7, 0);
                } else {
                    remoteViews4.setViewVisibility(dq7, 8);
                }
            } else if (i3 >= dq3.dq("noti_progress_show_th", 70)) {
                z3 = false;
                remoteViews4.setViewVisibility(dq(dq2), 0);
                remoteViews4.setViewVisibility(s.o(), 0);
            } else {
                r12 = 0;
                remoteViews4.setViewVisibility(dq(dq2), 8);
                remoteViews4.setViewVisibility(s.o(), 8);
                remoteViews4.setViewVisibility(s.kk(), 0);
                remoteViews4.setViewVisibility(s.jy(), 8);
                string = this.ox.getString(kk.d("tt_appdownloader_notification_download_continue"));
                i = s.no();
                remoteViews2 = remoteViews4;
                if (!com.ss.android.socialbase.appdownloader.ox.dq(this.iw)) {
                    remoteViews4.setViewVisibility(i, r12);
                    remoteViews = remoteViews4;
                    if (dq3.d("enable_notification_ui") >= 2) {
                        str = com.ss.android.socialbase.appdownloader.ox.dq(d3, (boolean) r12) + "/" + com.ss.android.socialbase.appdownloader.ox.dq(j, (boolean) r12);
                        remoteViews = remoteViews4;
                    }
                }
                remoteViews2.setViewVisibility(i, i4);
                remoteViews = remoteViews2;
            }
            remoteViews4.setViewVisibility(s.kk(), 8);
            r12 = z3;
            i = s.no();
            remoteViews2 = remoteViews4;
            if (!com.ss.android.socialbase.appdownloader.ox.dq(this.iw)) {
            }
            remoteViews2.setViewVisibility(i, i4);
            remoteViews = remoteViews2;
        } else {
            RemoteViews remoteViews5 = kk;
            long j2 = j;
            str2 = "";
            if (dq == 3) {
                DownloadInfo downloadInfo = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getDownloadInfo(dq2);
                if (s() == -1 || s() == -4) {
                    if (dq3.d("enable_notification_ui") >= 2 && s() == -1 && (iw.kk(baseException) || iw.ia(baseException))) {
                        str2 = com.ss.android.socialbase.appdownloader.ox.dq(d3) + "/" + com.ss.android.socialbase.appdownloader.ox.dq(j2);
                    }
                    remoteViews5.setViewVisibility(s.jy(), 8);
                    if (baseException == null || baseException.getErrorCode() != 1006) {
                        baseException2 = baseException;
                        if (dq(baseException2, dq3, downloadInfo)) {
                            zcVar = zcVar;
                            string3 = this.f9301d.getResources().getString((downloadInfo == null || !downloadInfo.isOnlyWifi()) ? kk.d("tt_appdownloader_notification_download_waiting_net") : kk.d("tt_appdownloader_notification_download_waiting_wifi"));
                        } else {
                            zcVar = zcVar;
                            string3 = this.f9301d.getResources().getString(kk.d("tt_appdownloader_notification_download_failed"));
                        }
                    } else {
                        zcVar = zcVar;
                        string3 = this.f9301d.getResources().getString(kk.d("tt_appdownloader_notification_download_space_failed"));
                        baseException2 = baseException;
                    }
                    String str8 = string3;
                    String string4 = this.f9301d.getResources().getString(kk.d("tt_appdownloader_notification_download_restart"));
                    remoteViews5.setViewVisibility(s.no(), 8);
                    if (dq3.d("enable_notification_ui") >= 2 && s() == -1) {
                        if (iw.kk(baseException2)) {
                            if (iw.d(baseException2, downloadInfo)) {
                                str4 = this.f9301d.getResources().getString(kk.d("tt_appdownloader_notification_no_wifi_and_in_net"));
                                string2 = this.f9301d.getResources().getString(kk.d("tt_appdownloader_notification_download_resume"));
                                str5 = str2;
                            } else {
                                str4 = this.f9301d.getResources().getString(kk.d("tt_appdownloader_notification_no_internet_error"));
                                str5 = str2;
                                string2 = string4;
                            }
                        } else if (iw.ia(baseException2)) {
                            str3 = str2;
                            str4 = this.f9301d.getResources().getString(kk.d("tt_appdownloader_notification_insufficient_space_error"), com.ss.android.socialbase.appdownloader.ox.d(j2 - d3));
                            string2 = string4;
                            str5 = str3;
                            remoteViews5.setViewVisibility(dq(dq2), 8);
                            remoteViews5.setViewVisibility(s.kk(), 0);
                            remoteViews5.setViewVisibility(s.o(), 8);
                            if (dq3.d("enable_notification_ui") < 2 && s() == -1 && (iw.kk(baseException2) || iw.ia(baseException2))) {
                                remoteViews5.setViewVisibility(dq(dq2), 0);
                                remoteViews5.setViewVisibility(s.kk(), 8);
                                remoteViews5.setViewVisibility(s.o(), 0);
                                int no3 = s.no();
                                if (iw.d(baseException2, downloadInfo)) {
                                    remoteViews5.setViewVisibility(no3, 0);
                                    str = com.ss.android.socialbase.appdownloader.ox.dq(d3, false) + "/" + com.ss.android.socialbase.appdownloader.ox.dq(j2, false);
                                    string = str4;
                                    remoteViews = remoteViews5;
                                } else {
                                    string = str4;
                                    i = no3;
                                    str = str5;
                                    i4 = 8;
                                    remoteViews2 = remoteViews5;
                                    remoteViews2.setViewVisibility(i, i4);
                                    remoteViews = remoteViews2;
                                }
                            } else {
                                string = str4;
                                str = str5;
                                remoteViews = remoteViews5;
                            }
                        }
                    }
                    str3 = str2;
                    str4 = str8;
                    string2 = string4;
                    str5 = str3;
                    remoteViews5.setViewVisibility(dq(dq2), 8);
                    remoteViews5.setViewVisibility(s.kk(), 0);
                    remoteViews5.setViewVisibility(s.o(), 8);
                    if (dq3.d("enable_notification_ui") < 2) {
                    }
                    string = str4;
                    str = str5;
                    remoteViews = remoteViews5;
                } else if (s() == -3) {
                    String dq8 = com.ss.android.socialbase.appdownloader.ox.dq(j2);
                    if (downloadInfo == null || TextUtils.isEmpty(downloadInfo.getMimeType()) || !downloadInfo.getMimeType().equals("application/vnd.android.package-archive")) {
                        d2 = kk.d("tt_appdownloader_notification_download_complete_without_install");
                        if (com.ss.android.socialbase.downloader.downloader.p.dq().mp(dq2) != null) {
                            d2 = kk.d("tt_appdownloader_notification_download_complete_open");
                        }
                        str5 = dq8;
                        i2 = 0;
                    } else {
                        if (com.ss.android.socialbase.appdownloader.ox.dq(this.f9301d, downloadInfo, false)) {
                            d2 = kk.d("tt_appdownloader_notification_install_finished_open");
                            i2 = kk.d("tt_appdownloader_notification_download_open");
                        } else {
                            d2 = kk.d("tt_appdownloader_notification_download_complete_with_install");
                            i2 = kk.d("tt_appdownloader_notification_download_install");
                        }
                        str5 = dq8;
                    }
                    String string5 = this.ox.getString(d2);
                    zcVar.i = zc.t(string5);
                    str2 = i2 != 0 ? this.ox.getString(i2) : "";
                    if (dq3.d("notification_opt_2") == 1) {
                        remoteViews5.setTextViewText(s.no(), str2);
                        remoteViews5.setViewVisibility(s.jy(), 8);
                    } else {
                        remoteViews5.setViewVisibility(s.no(), 8);
                    }
                    baseException2 = baseException;
                    zcVar = zcVar;
                    string2 = str2;
                    str4 = string5;
                } else {
                    baseException2 = baseException;
                    str4 = "";
                    string2 = str4;
                    str5 = string2;
                }
                remoteViews5.setViewVisibility(dq(dq2), 8);
                remoteViews5.setViewVisibility(s.kk(), 0);
                remoteViews5.setViewVisibility(s.o(), 8);
                if (dq3.d("enable_notification_ui") < 2) {
                }
                string = str4;
                str = str5;
                remoteViews = remoteViews5;
            } else {
                str = "";
                string2 = str;
                string = string2;
                remoteViews = remoteViews5;
            }
        }
        remoteViews.setTextViewText(s.q(), str);
        remoteViews.setTextViewText(s.f(), string);
        remoteViews.setTextViewText(s.jy(), str);
        remoteViews.setTextViewText(s.fw(), string);
        int no4 = s.no();
        if (TextUtils.isEmpty(string2)) {
            remoteViews.setViewVisibility(no4, 8);
        } else {
            remoteViews.setTextViewText(no4, string2);
        }
        Notification y = zcVar.y();
        y.contentView = remoteViews;
        return y;
    }

    private int dq(int i) {
        return com.ss.android.socialbase.downloader.mn.dq.dq(i).d("enable_notification_ui") > 0 ? s.ia() : s.mn();
    }

    private int dq(int i, int i2) {
        if (com.ss.android.socialbase.downloader.mn.dq.dq(i2).d("notification_opt_2") == 1) {
            return s.le();
        }
        if (i == 1 || i == 4) {
            return s.r();
        }
        if (i == 2) {
            return s.i();
        }
        if (i == 3) {
            return s.le();
        }
        return 0;
    }

    private PendingIntent dq(String str, int i, int i2) {
        Intent intent = new Intent(this.f9301d, (Class<?>) DownloadHandlerService.class);
        intent.setAction(str);
        intent.putExtra("extra_click_download_ids", i2);
        intent.putExtra("extra_click_download_type", i);
        intent.putExtra("extra_from_notification", true);
        return PendingIntent.getService(this.f9301d, i2, intent, 201326592);
    }

    private boolean dq(BaseException baseException, com.ss.android.socialbase.downloader.mn.dq dqVar, DownloadInfo downloadInfo) {
        return baseException != null && (baseException.getErrorCode() == 1013 || baseException.getErrorCode() == 1049) && downloadInfo != null && "application/vnd.android.package-archive".contains(downloadInfo.getMimeType()) && dqVar.dq("notification_text_opt", 0) == 1;
    }

    private RemoteViews kk() {
        RemoteViews remoteViews = new RemoteViews(this.f9301d.getPackageName(), s.dq());
        try {
            if (com.ss.android.socialbase.appdownloader.ox.dq(this.f9301d)) {
                remoteViews.setInt(s.iw(), "setBackgroundColor", this.f9301d.getResources().getColor(s.cd()));
            }
        } catch (Throwable unused) {
        }
        return remoteViews;
    }

    private zc o() {
        String kk = com.ss.android.socialbase.appdownloader.p.o().kk();
        if (Build.VERSION.SDK_INT < 26) {
            return new zc(this.f9301d, null);
        }
        if (TextUtils.isEmpty(kk)) {
            kk = com.ss.android.socialbase.appdownloader.ox.d(this.f9301d);
        }
        try {
            return com.ss.android.socialbase.appdownloader.p.o().mp() != null ? com.ss.android.socialbase.appdownloader.p.o().mp().dq(this.f9301d, kk) : new zc(this.f9301d, kk);
        } catch (NoSuchMethodError unused) {
            return new zc(this.f9301d, null);
        }
    }

    @Override // com.ss.android.socialbase.downloader.notification.dq
    public void dq(BaseException baseException, boolean z) {
        if (this.f9301d == null) {
            return;
        }
        try {
            Notification d2 = d(baseException, z);
            this.dq = d2;
            dq(d2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.notification.dq
    public void dq(DownloadInfo downloadInfo) {
        super.dq(downloadInfo);
        this.s = downloadInfo.getSavePath();
        this.p = downloadInfo.getName();
        this.iw = downloadInfo.getExtra();
    }
}

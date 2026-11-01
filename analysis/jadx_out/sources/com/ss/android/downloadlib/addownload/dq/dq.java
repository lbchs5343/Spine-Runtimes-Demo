package com.ss.android.downloadlib.addownload.dq;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.text.TextUtils;
import com.ss.android.download.api.model.d;
import com.ss.android.downloadlib.activity.TTDelegateActivity;
import com.ss.android.downloadlib.addownload.d.iw;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.downloadlib.o;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import java.util.List;
import java.util.ListIterator;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static dq f9154d = null;
    private static final String dq = "dq";
    private d iw;
    private CopyOnWriteArrayList<com.ss.android.downloadlib.addownload.d.dq> ox;
    private boolean p = false;
    private String s;

    /* renamed from: com.ss.android.downloadlib.addownload.dq.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0214dq {
        void dq();
    }

    private dq() {
        d dVar = new d();
        this.iw = dVar;
        this.ox = dVar.dq("sp_ad_install_back_dialog", "key_uninstalled_list");
    }

    public static dq dq() {
        if (f9154d == null) {
            f9154d = new dq();
        }
        return f9154d;
    }

    private void dq(final Context context, final com.ss.android.downloadlib.addownload.d.dq dqVar, final InterfaceC0214dq interfaceC0214dq, boolean z) {
        final com.ss.android.downloadad.api.dq.d p = iw.dq().p(dqVar.f9144d);
        if (p == null) {
            com.ss.android.downloadlib.s.ox.dq().dq("showBackInstallDialog nativeModel null");
            return;
        }
        no.ox().d(new d.dq(context).dq(z ? "应用安装确认" : "退出确认").d(String.format("%1$s下载完成，是否立即安装？", TextUtils.isEmpty(dqVar.s) ? "刚刚下载的应用" : dqVar.s)).ox("立即安装").p(z ? "暂不安装" : String.format("退出%1$s", context.getResources().getString(context.getApplicationContext().getApplicationInfo().labelRes))).dq(false).dq(mp.dq(context, dqVar.mn)).dq(new d.InterfaceC0211d() { // from class: com.ss.android.downloadlib.addownload.dq.dq.1
            @Override // com.ss.android.download.api.model.d.InterfaceC0211d
            public void d(DialogInterface dialogInterface) {
                com.ss.android.downloadlib.p.dq.dq().d("backdialog_exit", p);
                InterfaceC0214dq interfaceC0214dq2 = interfaceC0214dq;
                if (interfaceC0214dq2 != null) {
                    interfaceC0214dq2.dq();
                }
                dq.this.d("");
                dialogInterface.dismiss();
            }

            @Override // com.ss.android.download.api.model.d.InterfaceC0211d
            public void dq(DialogInterface dialogInterface) {
                com.ss.android.downloadlib.p.dq.dq().d("backdialog_install", p);
                com.ss.android.socialbase.appdownloader.p.dq(context, (int) dqVar.dq);
                dialogInterface.dismiss();
            }

            @Override // com.ss.android.download.api.model.d.InterfaceC0211d
            public void ox(DialogInterface dialogInterface) {
                dq.this.d("");
            }
        }).dq(1).dq());
        com.ss.android.downloadlib.p.dq.dq().d("backdialog_show", p);
        this.s = dqVar.p;
    }

    private boolean dq(Activity activity, DownloadInfo downloadInfo, boolean z, InterfaceC0214dq interfaceC0214dq) {
        if (downloadInfo == null) {
            try {
                if (this.ox.isEmpty()) {
                    return false;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        if (activity != null && !activity.isFinishing()) {
            boolean z2 = true;
            if (downloadInfo != null && this.ox.isEmpty()) {
                dq(activity, new com.ss.android.downloadlib.addownload.d.dq(downloadInfo.getId(), 0L, 0L, downloadInfo.getPackageName(), downloadInfo.getTitle(), null, downloadInfo.getTargetFilePath()), z, interfaceC0214dq);
                return true;
            }
            long lastModified = downloadInfo != null ? new File(downloadInfo.getTargetFilePath()).lastModified() : 0L;
            CopyOnWriteArrayList<com.ss.android.downloadlib.addownload.d.dq> copyOnWriteArrayList = this.ox;
            ListIterator<com.ss.android.downloadlib.addownload.d.dq> listIterator = copyOnWriteArrayList.listIterator(copyOnWriteArrayList.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    z2 = false;
                    break;
                }
                com.ss.android.downloadlib.addownload.d.dq previous = listIterator.previous();
                if (previous != null && !mp.s(no.getContext(), previous.p) && mp.dq(previous.mn)) {
                    if (new File(previous.mn).lastModified() >= lastModified) {
                        dq(activity, previous, z, interfaceC0214dq);
                    } else {
                        dq(activity, new com.ss.android.downloadlib.addownload.d.dq(downloadInfo.getId(), 0L, 0L, downloadInfo.getPackageName(), downloadInfo.getTitle(), null, downloadInfo.getTargetFilePath()), z, interfaceC0214dq);
                    }
                }
            }
            com.ss.android.downloadlib.mn.no.dq(dq, "tryShowInstallDialog isShow:".concat(String.valueOf(z2)), null);
            return z2;
        }
        return false;
    }

    public void d(String str) {
        if (TextUtils.isEmpty(str)) {
            this.s = "";
        } else if (TextUtils.equals(this.s, str)) {
            this.s = "";
        }
    }

    public DownloadInfo dq(Context context) {
        long d2;
        List<DownloadInfo> successedDownloadInfosWithMimeType;
        DownloadInfo downloadInfo = null;
        try {
            d2 = o.dq(context).d();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (no.kk().optInt("enable_miniapp_dialog", 0) != 0 && (successedDownloadInfosWithMimeType = Downloader.getInstance(context).getSuccessedDownloadInfosWithMimeType("application/vnd.android.package-archive")) != null && !successedDownloadInfosWithMimeType.isEmpty()) {
            long j = 0;
            for (DownloadInfo downloadInfo2 : successedDownloadInfosWithMimeType) {
                if (downloadInfo2 != null && !mp.s(context, downloadInfo2.getPackageName()) && mp.dq(downloadInfo2.getTargetFilePath())) {
                    long lastModified = new File(downloadInfo2.getTargetFilePath()).lastModified();
                    if (lastModified >= d2 && downloadInfo2.getExtra() != null) {
                        try {
                            if (new JSONObject(downloadInfo2.getExtra()).has("isMiniApp") && (j == 0 || lastModified > j)) {
                                downloadInfo = downloadInfo2;
                                j = lastModified;
                            }
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                }
            }
            return downloadInfo;
        }
        return null;
    }

    public void dq(long j, long j2, long j3, String str, String str2, String str3, String str4) {
        for (int i = 0; i < this.ox.size(); i++) {
            com.ss.android.downloadlib.addownload.d.dq dqVar = this.ox.get(i);
            if (dqVar != null && dqVar.f9144d == j2) {
                this.ox.set(i, new com.ss.android.downloadlib.addownload.d.dq(j, j2, j3, str, str2, str3, str4));
                this.iw.dq("sp_ad_install_back_dialog", "key_uninstalled_list", this.ox);
                return;
            }
        }
        this.ox.add(new com.ss.android.downloadlib.addownload.d.dq(j, j2, j3, str, str2, str3, str4));
        this.iw.dq("sp_ad_install_back_dialog", "key_uninstalled_list", this.ox);
    }

    public void dq(Context context, com.ss.android.downloadlib.addownload.d.dq dqVar, boolean z, InterfaceC0214dq interfaceC0214dq) {
        this.ox.clear();
        dq(context, dqVar, interfaceC0214dq, z);
        this.p = true;
        o.dq(context).ox();
        this.iw.d("sp_ad_install_back_dialog", "key_uninstalled_list");
        com.ss.android.downloadlib.mn.no.dq(dq, "tryShowInstallDialog isShow:true", null);
    }

    public void dq(com.ss.android.downloadad.api.dq.d dVar) {
        if (no.kk().optInt("enable_open_app_dialog", 0) == 1 && !dVar.ha() && dVar.fw() && Build.VERSION.SDK_INT < 34) {
            dVar.no(true);
            TTDelegateActivity.dq(dVar);
        }
    }

    public boolean dq(Activity activity, boolean z, InterfaceC0214dq interfaceC0214dq) {
        if (no.kk().optInt("disable_install_app_dialog") == 1 || this.p) {
            return false;
        }
        return dq(activity, dq(activity), z, interfaceC0214dq);
    }

    public boolean dq(String str) {
        return TextUtils.equals(this.s, str);
    }
}

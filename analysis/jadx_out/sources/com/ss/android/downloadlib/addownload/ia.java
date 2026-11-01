package com.ss.android.downloadlib.addownload;

import android.content.Context;
import android.os.Environment;
import android.os.Message;
import android.text.TextUtils;
import com.ss.android.download.api.config.r;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.download.api.model.DownloadShortInfo;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.mn.o;
import com.ss.android.downloadlib.mn.q;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.io.File;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ia implements q.dq {

    /* renamed from: d, reason: collision with root package name */
    private long f9158d;
    public com.ss.android.downloadlib.addownload.d.s dq;
    private boolean ox = false;
    private s p;
    private d s;

    public interface d {
        void dq(DownloadInfo downloadInfo);
    }

    public static class dq extends com.ss.android.socialbase.downloader.depend.dq {
        private com.ss.android.downloadlib.mn.q dq;

        public dq(com.ss.android.downloadlib.mn.q qVar) {
            this.dq = qVar;
        }

        private void dq(DownloadInfo downloadInfo, int i) {
            Message obtain = Message.obtain();
            obtain.what = 3;
            obtain.obj = downloadInfo;
            obtain.arg1 = i;
            this.dq.sendMessage(obtain);
        }

        @Override // com.ss.android.socialbase.downloader.depend.dq, com.ss.android.socialbase.downloader.depend.gh
        public void dq(DownloadInfo downloadInfo) {
            dq(downloadInfo, 11);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onCanceled(DownloadInfo downloadInfo) {
            dq(downloadInfo, -4);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
            dq(downloadInfo, -1);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onPause(DownloadInfo downloadInfo) {
            dq(downloadInfo, -2);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onPrepare(DownloadInfo downloadInfo) {
            dq(downloadInfo, 1);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onProgress(DownloadInfo downloadInfo) {
            dq(downloadInfo, 4);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onStart(DownloadInfo downloadInfo) {
            dq(downloadInfo, 2);
        }

        @Override // com.ss.android.socialbase.downloader.depend.AbsDownloadListener, com.ss.android.socialbase.downloader.depend.IDownloadListener
        public void onSuccessed(DownloadInfo downloadInfo) {
            dq(downloadInfo, -3);
        }
    }

    public ia(s sVar) {
        this.p = sVar;
    }

    public static List<com.ss.android.download.api.download.dq> d(Map<Integer, Object> map) {
        ArrayList arrayList = new ArrayList();
        if (map != null && !map.isEmpty()) {
            for (Object obj : map.values()) {
                if (obj instanceof com.ss.android.download.api.download.dq) {
                    arrayList.add((com.ss.android.download.api.download.dq) obj);
                } else {
                    if (obj instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) obj;
                        if (softReference.get() instanceof com.ss.android.download.api.download.dq) {
                            arrayList.add((com.ss.android.download.api.download.dq) softReference.get());
                        }
                    }
                    if (obj instanceof WeakReference) {
                        WeakReference weakReference = (WeakReference) obj;
                        if (weakReference.get() instanceof com.ss.android.download.api.download.dq) {
                            arrayList.add((com.ss.android.download.api.download.dq) weakReference.get());
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private void d(final r rVar) {
        String str;
        if (com.ss.android.downloadlib.mn.o.d("android.permission.WRITE_EXTERNAL_STORAGE")) {
            if (rVar != null) {
                rVar.dq();
                return;
            }
            return;
        }
        if (com.ss.android.downloadlib.mn.mp.dq()) {
            str = "android.permission.READ_MEDIA_IMAGES";
            if (com.ss.android.downloadlib.mn.o.d("android.permission.READ_MEDIA_IMAGES") || com.ss.android.downloadlib.mn.o.d("android.permission.READ_MEDIA_AUDIO") || com.ss.android.downloadlib.mn.o.d("android.permission.READ_MEDIA_VIDEO")) {
                if (rVar != null) {
                    rVar.dq();
                    return;
                }
                return;
            }
        } else {
            str = "android.permission.READ_EXTERNAL_STORAGE";
        }
        com.ss.android.downloadlib.mn.o.dq(new String[]{str}, new o.dq() { // from class: com.ss.android.downloadlib.addownload.ia.2
            @Override // com.ss.android.downloadlib.mn.o.dq
            public void dq() {
                r rVar2 = rVar;
                if (rVar2 != null) {
                    rVar2.dq();
                }
            }

            @Override // com.ss.android.downloadlib.mn.o.dq
            public void dq(String str2) {
                r rVar2 = rVar;
                if (rVar2 != null) {
                    rVar2.dq(str2);
                }
            }
        });
    }

    private com.ss.android.socialbase.downloader.model.ox dq(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            return new com.ss.android.socialbase.downloader.model.ox("clickid", new JSONObject(str).optString("clickid"));
        } catch (JSONException e2) {
            no.r().dq(e2, "parseLogExtra Error");
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0085, code lost:
    
        if (r4.startsWith(r3) != false) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String dq(com.ss.android.socialbase.downloader.mn.dq dqVar) {
        String str;
        if (!TextUtils.isEmpty(this.dq.f9152d.getFilePath())) {
            return this.dq.f9152d.getFilePath();
        }
        DownloadInfo dq2 = com.ss.android.socialbase.appdownloader.p.o().dq(no.getContext(), this.dq.f9152d.getDownloadUrl());
        boolean d2 = !com.ss.android.downloadlib.mn.mp.dq() ? com.ss.android.downloadlib.mn.o.d("android.permission.WRITE_EXTERNAL_STORAGE") : com.ss.android.downloadlib.mn.o.d("android.permission.READ_MEDIA_IMAGES") || com.ss.android.downloadlib.mn.o.d("android.permission.READ_MEDIA_AUDIO") || com.ss.android.downloadlib.mn.o.d("android.permission.READ_MEDIA_VIDEO");
        String d3 = d();
        if (dq2 != null && !TextUtils.isEmpty(dq2.getSavePath())) {
            String savePath = dq2.getSavePath();
            if (!d2 && !savePath.startsWith(Environment.getDataDirectory().getAbsolutePath())) {
                try {
                    if (!TextUtils.isEmpty(d3)) {
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).cancel(dq2.getId());
            }
            return savePath;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("ttdownloader_code", Integer.valueOf(d2 ? 1 : 2));
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        com.ss.android.downloadlib.p.dq.dq().dq("label_external_permission", jSONObject, this.dq);
        try {
            str = com.ss.android.socialbase.appdownloader.ox.d();
        } catch (Exception unused) {
            str = null;
        }
        int dq3 = com.ss.android.downloadlib.mn.s.dq(dqVar);
        if (dq3 != 0) {
            if (dq3 == 4 || (!d2 && dq3 == 2)) {
                File filesDir = no.getContext().getFilesDir();
                if (!filesDir.exists()) {
                    filesDir.mkdirs();
                }
                if (filesDir.exists()) {
                    return filesDir.getAbsolutePath();
                }
            } else if ((dq3 == 3 || (!d2 && dq3 == 1)) && !TextUtils.isEmpty(d3)) {
                return d3;
            }
        }
        return str;
    }

    public static List<DownloadStatusChangeListener> dq(Map<Integer, Object> map) {
        ArrayList arrayList = new ArrayList();
        if (map != null && !map.isEmpty()) {
            for (Object obj : map.values()) {
                if (obj instanceof DownloadStatusChangeListener) {
                    arrayList.add((DownloadStatusChangeListener) obj);
                } else {
                    if (obj instanceof SoftReference) {
                        SoftReference softReference = (SoftReference) obj;
                        if (softReference.get() instanceof DownloadStatusChangeListener) {
                            arrayList.add((DownloadStatusChangeListener) softReference.get());
                        }
                    }
                    if (obj instanceof WeakReference) {
                        WeakReference weakReference = (WeakReference) obj;
                        if (weakReference.get() instanceof DownloadStatusChangeListener) {
                            arrayList.add((DownloadStatusChangeListener) weakReference.get());
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private boolean iw() {
        return com.ss.android.downloadlib.mn.mp.dq(this.dq.f9152d) && kk.dq(this.dq.p.getLinkMode());
    }

    private boolean iw(DownloadInfo downloadInfo) {
        return downloadInfo != null && downloadInfo.getStatus() == -3 && com.ss.android.socialbase.downloader.kk.iw.p(downloadInfo.getSavePath(), downloadInfo.getName());
    }

    private boolean ox() {
        return p() && s();
    }

    private boolean p() {
        DownloadModel downloadModel = this.dq.f9152d;
        return (downloadModel == null || TextUtils.isEmpty(downloadModel.getPackageName()) || TextUtils.isEmpty(this.dq.f9152d.getDownloadUrl())) ? false : true;
    }

    private boolean s() {
        return this.dq.p.isAddToDownloadManage();
    }

    private boolean s(DownloadInfo downloadInfo) {
        return !com.ss.android.downloadlib.mn.mp.dq(this.dq.f9152d) && iw(downloadInfo);
    }

    public String d() {
        File externalFilesDir = no.getContext().getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS);
        if (externalFilesDir == null) {
            return null;
        }
        if (!externalFilesDir.exists()) {
            externalFilesDir.mkdirs();
        }
        if (externalFilesDir.exists()) {
            return externalFilesDir.getAbsolutePath();
        }
        return null;
    }

    public void d(DownloadInfo downloadInfo) {
        d dVar = this.s;
        if (dVar != null) {
            dVar.dq(downloadInfo);
            this.s = null;
        }
    }

    public int dq(Context context, IDownloadListener iDownloadListener) {
        com.ss.android.downloadlib.addownload.ox.dq dqVar;
        com.ss.android.socialbase.downloader.model.ox dq2;
        if (context == null) {
            return 0;
        }
        Map<String, String> headers = this.dq.f9152d.getHeaders();
        ArrayList arrayList = new ArrayList();
        if (no.kk().optInt("enable_send_click_id_in_apk", 1) == 1 && !TextUtils.isEmpty(this.dq.f9152d.getLogExtra()) && (dq2 = dq(this.dq.f9152d.getLogExtra())) != null) {
            arrayList.add(dq2);
        }
        if (headers != null) {
            for (Map.Entry<String, String> entry : headers.entrySet()) {
                if (entry != null) {
                    arrayList.add(new com.ss.android.socialbase.downloader.model.ox(entry.getKey(), entry.getValue()));
                }
            }
        }
        String dq3 = com.ss.android.downloadlib.mn.p.dq(String.valueOf(this.dq.f9152d.getId()), this.dq.f9152d.getNotificationJumpUrl(), this.dq.f9152d.isShowToast(), String.valueOf(this.dq.f9152d.getModelType()));
        com.ss.android.socialbase.downloader.mn.dq d2 = com.ss.android.downloadlib.mn.s.d(this.dq.f9152d);
        JSONObject dq4 = com.ss.android.downloadlib.mn.s.dq(this.dq.f9152d);
        if (!this.dq.p.enableAH()) {
            dq4 = com.ss.android.downloadlib.mn.mp.dq(dq4);
            com.ss.android.downloadlib.mn.mp.dq(dq4, "ah_plans", new JSONArray());
        }
        int executorGroup = this.dq.f9152d.getExecutorGroup();
        if (this.dq.f9152d.isAd() || kk.d(this.dq.f9152d)) {
            executorGroup = 4;
        }
        String dq5 = dq(d2);
        DownloadInfo downloadInfo = Downloader.getInstance(no.getContext()).getDownloadInfo(com.ss.android.socialbase.downloader.downloader.ox.dq(this.dq.f9152d.getDownloadUrl(), dq5));
        if (downloadInfo != null && 3 == this.dq.f9152d.getModelType()) {
            downloadInfo.setFirstDownload(true);
        }
        com.ss.android.socialbase.appdownloader.iw jy = new com.ss.android.socialbase.appdownloader.iw(context, this.dq.f9152d.getDownloadUrl()).d(this.dq.f9152d.getBackupUrls()).dq(this.dq.f9152d.getName()).s(dq3).dq(arrayList).dq(this.dq.f9152d.isShowNotification()).ox(this.dq.f9152d.isNeedWifi()).d(this.dq.f9152d.getFileName()).ox(dq5).no(this.dq.f9152d.getAppIcon()).ia(this.dq.f9152d.getMd5()).o(this.dq.f9152d.getSdkMonitorScene()).dq(this.dq.f9152d.getExpectFileLength()).dq(iDownloadListener).ig(this.dq.f9152d.needIndependentProcess() || d2.dq("need_independent_process", 0) == 1).dq(this.dq.f9152d.getDownloadFileUriProvider()).d(this.dq.f9152d.autoInstallWithoutNotification()).mn(this.dq.f9152d.getPackageName()).p(1000).s(100).dq(dq4).kk(true).o(true).d(d2.dq("retry_count", 5)).ox(d2.dq("backup_url_retry_count", 0)).o(true).mp(d2.dq("need_head_connection", 0) == 1).p(d2.dq("need_https_to_http_retry", 0) == 1).ia(d2.dq("need_chunk_downgrade_retry", 1) == 1).mn(d2.dq("need_retry_delay", 0) == 1).kk(d2.ox("retry_delay_time_array")).no(d2.dq("need_reuse_runnable", 0) == 1).iw(executorGroup).f(this.dq.f9152d.isAutoInstall()).jy(this.dq.f9152d.distinctDir());
        if (TextUtils.isEmpty(this.dq.f9152d.getMimeType())) {
            jy.iw("application/vnd.android.package-archive");
        } else {
            jy.iw(this.dq.f9152d.getMimeType());
        }
        if (d2.dq("notification_opt_2", 0) == 1) {
            jy.dq(false);
            jy.d(true);
        }
        if (d2.dq("clear_space_use_disk_handler", 0) == 1) {
            dqVar = new com.ss.android.downloadlib.addownload.ox.dq();
            jy.dq(dqVar);
        } else {
            dqVar = null;
        }
        DownloadModel downloadModel = this.dq.f9152d;
        if ((downloadModel instanceof AdDownloadModel) && !TextUtils.isEmpty(((AdDownloadModel) downloadModel).getTaskKey())) {
            jy.p(((AdDownloadModel) this.dq.f9152d).getTaskKey());
        }
        int dq6 = kk.dq(this.dq, ox(), jy);
        if (dqVar != null) {
            dqVar.dq(dq6);
        }
        return dq6;
    }

    public void dq() {
        if (this.s == null) {
            this.s = new d() { // from class: com.ss.android.downloadlib.addownload.ia.3
                @Override // com.ss.android.downloadlib.addownload.ia.d
                public void dq(DownloadInfo downloadInfo) {
                    com.ss.android.downloadlib.p.dq.dq().dq(ia.this.f9158d, 2, downloadInfo);
                }
            };
        }
    }

    public void dq(long j) {
        this.f9158d = j;
        com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(j);
        this.dq = s;
        if (s.wp()) {
            com.ss.android.downloadlib.s.ox.dq().dq("setAdId ModelBox notValid");
        }
    }

    @Override // com.ss.android.downloadlib.mn.q.dq
    public void dq(Message message) {
    }

    public void dq(Message message, DownloadShortInfo downloadShortInfo, Map<Integer, Object> map) {
        d dVar;
        if (message == null || message.what != 3) {
            return;
        }
        DownloadInfo downloadInfo = (DownloadInfo) message.obj;
        int i = message.arg1;
        if (i != 1 && i != 6 && i == 2) {
            if (downloadInfo.getIsFirstDownload()) {
                com.ss.android.downloadlib.ia dq2 = com.ss.android.downloadlib.ia.dq();
                com.ss.android.downloadlib.addownload.d.s sVar = this.dq;
                dq2.dq(sVar.f9152d, sVar.p, sVar.ox);
                downloadInfo.setFirstDownload(false);
            }
            com.ss.android.downloadlib.p.dq.dq().dq(downloadInfo);
        }
        downloadShortInfo.updateFromNewDownloadInfo(downloadInfo);
        o.dq(downloadShortInfo);
        int dq3 = com.ss.android.socialbase.appdownloader.ox.dq(downloadInfo.getStatus());
        long totalBytes = downloadInfo.getTotalBytes();
        int curBytes = totalBytes > 0 ? (int) ((downloadInfo.getCurBytes() * 100) / totalBytes) : 0;
        if ((totalBytes > 0 || com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_click_start")) && (dVar = this.s) != null) {
            dVar.dq(downloadInfo);
            this.s = null;
        }
        for (DownloadStatusChangeListener downloadStatusChangeListener : dq(map)) {
            if (dq3 != 1) {
                if (dq3 == 2) {
                    downloadStatusChangeListener.onDownloadPaused(downloadShortInfo, o.dq(downloadInfo.getId(), curBytes));
                } else if (dq3 == 3) {
                    if (downloadInfo.getStatus() == -4) {
                        downloadStatusChangeListener.onIdle();
                    } else if (downloadInfo.getStatus() == -1) {
                        downloadStatusChangeListener.onDownloadFailed(downloadShortInfo);
                    } else if (downloadInfo.getStatus() == -3) {
                        if (com.ss.android.downloadlib.mn.mp.dq(this.dq.f9152d)) {
                            downloadStatusChangeListener.onInstalled(downloadShortInfo);
                        } else {
                            downloadStatusChangeListener.onDownloadFinished(downloadShortInfo);
                        }
                    }
                }
            } else if (downloadInfo.getStatus() != 11) {
                downloadStatusChangeListener.onDownloadActive(downloadShortInfo, o.dq(downloadInfo.getId(), curBytes));
            } else {
                Iterator<com.ss.android.download.api.download.dq> it = d(map).iterator();
                while (it.hasNext()) {
                    it.next();
                }
            }
        }
    }

    public void dq(final r rVar) {
        if (!TextUtils.isEmpty(this.dq.f9152d.getFilePath())) {
            String filePath = this.dq.f9152d.getFilePath();
            if (filePath.startsWith(Environment.getDataDirectory().getAbsolutePath())) {
                rVar.dq();
                return;
            } else {
                try {
                    if (filePath.startsWith(no.getContext().getExternalCacheDir().getParent())) {
                        rVar.dq();
                        return;
                    }
                } catch (Exception unused) {
                }
            }
        }
        d(new r() { // from class: com.ss.android.downloadlib.addownload.ia.1
            @Override // com.ss.android.download.api.config.r
            public void dq() {
                rVar.dq();
            }

            @Override // com.ss.android.download.api.config.r
            public void dq(String str) {
                no.ox().dq(1, no.getContext(), ia.this.dq.f9152d, "您已禁止使用存储权限，请授权后再下载", null, 1);
                com.ss.android.downloadlib.p.dq.dq().d(ia.this.f9158d, 1);
                rVar.dq(str);
            }
        });
    }

    public void dq(DownloadInfo downloadInfo) {
        this.ox = false;
        d(downloadInfo);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(DownloadInfo downloadInfo, DownloadShortInfo downloadShortInfo, List<DownloadStatusChangeListener> list, boolean z) {
        int i;
        if (list.isEmpty()) {
            return;
        }
        if (downloadInfo == null || downloadShortInfo == null) {
            Iterator<DownloadStatusChangeListener> it = list.iterator();
            while (it.hasNext()) {
                it.next().onIdle();
            }
            return;
        }
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (downloadInfo.getTotalBytes() > 0) {
            i = (int) ((downloadInfo.getCurBytes() * 100) / downloadInfo.getTotalBytes());
            int i2 = i >= 0 ? i : 0;
            downloadShortInfo.updateFromNewDownloadInfo(downloadInfo);
            o.dq(downloadShortInfo);
            for (DownloadStatusChangeListener downloadStatusChangeListener : list) {
                switch (downloadInfo.getStatus()) {
                    case -4:
                    case 0:
                        if (com.ss.android.downloadlib.mn.mp.dq(this.dq.f9152d)) {
                            downloadShortInfo.status = -3;
                            downloadStatusChangeListener.onInstalled(downloadShortInfo);
                            break;
                        } else {
                            downloadStatusChangeListener.onIdle();
                            break;
                        }
                    case -3:
                        if (z) {
                            downloadStatusChangeListener.onInstalled(downloadShortInfo);
                            break;
                        } else {
                            downloadStatusChangeListener.onDownloadFinished(downloadShortInfo);
                            break;
                        }
                    case -2:
                        downloadStatusChangeListener.onDownloadPaused(downloadShortInfo, o.dq(downloadInfo.getId(), i2));
                        break;
                    case -1:
                        downloadStatusChangeListener.onDownloadFailed(downloadShortInfo);
                        break;
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 7:
                    case 8:
                        downloadStatusChangeListener.onDownloadActive(downloadShortInfo, o.dq(downloadInfo.getId(), i2));
                        break;
                    case 11:
                        if (downloadStatusChangeListener instanceof com.ss.android.download.api.download.dq) {
                            break;
                        } else {
                            downloadStatusChangeListener.onDownloadActive(downloadShortInfo, o.dq(downloadInfo.getId(), i2));
                            break;
                        }
                }
            }
        }
        i = 0;
        if (i >= 0) {
        }
        downloadShortInfo.updateFromNewDownloadInfo(downloadInfo);
        o.dq(downloadShortInfo);
        while (r9.hasNext()) {
        }
    }

    public void dq(DownloadInfo downloadInfo, boolean z) {
        if (this.dq.f9152d == null || downloadInfo == null || downloadInfo.getId() == 0) {
            return;
        }
        int status = downloadInfo.getStatus();
        if (status == -1 || status == -4) {
            com.ss.android.downloadlib.p.dq.dq().dq(this.f9158d, 2);
        } else if (kk.dq(this.dq.f9152d) || (z && com.ss.android.downloadlib.p.ox.dq().ox() && (status == -2 || status == -3))) {
            com.ss.android.downloadlib.p.dq.dq().dq(this.f9158d, 2);
        }
        switch (status) {
            case -4:
            case -1:
                dq();
                com.ss.android.downloadlib.addownload.d.iw dq2 = com.ss.android.downloadlib.addownload.d.iw.dq();
                com.ss.android.downloadlib.addownload.d.s sVar = this.dq;
                dq2.dq(new com.ss.android.downloadad.api.dq.d(sVar.f9152d, sVar.ox, sVar.p, downloadInfo.getId()));
                break;
            case -3:
                if (!com.ss.android.downloadlib.mn.mp.dq(this.dq.f9152d)) {
                    com.ss.android.downloadlib.p.dq.dq().dq(this.f9158d, 5, downloadInfo);
                    if (z && com.ss.android.downloadlib.p.ox.dq().d() && !com.ss.android.downloadlib.p.ox.dq().d(this.f9158d, this.dq.f9152d.getLogExtra())) {
                        com.ss.android.downloadlib.p.dq.dq().dq(this.f9158d, 2);
                        break;
                    }
                } else {
                    com.ss.android.downloadlib.s.ox.dq().d("SUCCESSED isInstalledApp");
                    break;
                }
                break;
            case -2:
                com.ss.android.downloadlib.p.dq.dq().dq(this.f9158d, 4, downloadInfo);
                if (z && com.ss.android.downloadlib.p.ox.dq().d() && !com.ss.android.downloadlib.p.ox.dq().d(this.f9158d, this.dq.f9152d.getLogExtra())) {
                    com.ss.android.downloadlib.p.dq.dq().dq(this.f9158d, 2);
                    break;
                }
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 7:
            case 8:
                com.ss.android.downloadlib.p.dq.dq().dq(this.f9158d, 3, downloadInfo);
                break;
        }
    }

    public boolean dq(int i) {
        if (this.dq.p.getDownloadMode() == 2 && i == 2) {
            return true;
        }
        return this.dq.p.getDownloadMode() == 2 && i == 1 && no.kk().optInt("disable_lp_if_market", 0) == 1;
    }

    public boolean dq(int i, DownloadModel downloadModel) {
        return com.ss.android.socialbase.appdownloader.iw.s.ox() && dq(i) && !com.ss.android.downloadlib.mn.mp.dq(downloadModel);
    }

    public boolean dq(Context context, int i, boolean z) {
        if (com.ss.android.downloadlib.mn.mp.dq(this.dq.f9152d)) {
            com.ss.android.downloadad.api.dq.d p = com.ss.android.downloadlib.addownload.d.iw.dq().p(this.dq.dq);
            if (p != null) {
                com.ss.android.socialbase.downloader.notification.d.dq().iw(p.gh());
            }
            return com.ss.android.downloadlib.d.dq.dq(this.dq);
        }
        if (dq(i) && !TextUtils.isEmpty(this.dq.f9152d.getPackageName()) && no.kk().optInt("disable_market") != 1) {
            if (com.ss.android.downloadlib.d.dq.dq(this.dq, i)) {
                return true;
            }
            return this.p.kk() && this.p.p(true);
        }
        if (!z || this.dq.p.getDownloadMode() != 4 || this.p.s()) {
            return false;
        }
        this.p.ox(true);
        return true;
    }

    public boolean dq(boolean z) {
        return !z && this.dq.p.getDownloadMode() == 1;
    }

    public void ox(DownloadInfo downloadInfo) {
        if (!kk.dq(this.dq.f9152d) || this.ox) {
            return;
        }
        com.ss.android.downloadlib.p.dq.dq().dq("file_status", (downloadInfo == null || !com.ss.android.downloadlib.mn.mp.d(downloadInfo.getTargetFilePath())) ? 2 : 1, this.dq);
        this.ox = true;
    }

    public boolean p(DownloadInfo downloadInfo) {
        return iw() || s(downloadInfo);
    }
}

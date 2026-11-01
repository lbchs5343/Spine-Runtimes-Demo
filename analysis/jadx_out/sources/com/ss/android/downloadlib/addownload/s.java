package com.ss.android.downloadlib.addownload;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.config.r;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.download.api.download.ox;
import com.ss.android.download.api.model.DownloadShortInfo;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.addownload.ia;
import com.ss.android.downloadlib.mn.q;
import com.ss.android.socialbase.appdownloader.DownloadHandlerService;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.tn;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class s implements mn, q.dq {
    private static final String dq = "s";
    private SoftReference<OnItemClickListener> cd;

    /* renamed from: d, reason: collision with root package name */
    private final com.ss.android.downloadlib.mn.q f9188d;

    /* renamed from: f, reason: collision with root package name */
    private DownloadEventConfig f9189f;
    private DownloadController fw;
    private boolean gh;
    private SoftReference<IDownloadButtonClickListener> i;
    private DownloadInfo ia;
    private long ig;
    private final Map<Integer, Object> iw;
    private DownloadModel jy;
    private ox kk;
    private DownloadShortInfo mn;
    private String mp;
    private boolean no;
    private final IDownloadListener o;
    private ia ox;
    private p p;
    private long q;
    private final boolean r;
    private WeakReference<Context> s;

    public interface d {
        void dq(long j);
    }

    public interface dq {
        void dq();
    }

    public class ox extends com.bytedance.sdk.component.o.p.d<String, Void, DownloadInfo> {
        private ox() {
        }

        @Override // android.os.AsyncTask
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public DownloadInfo doInBackground(String... strArr) {
            DownloadInfo downloadInfo = null;
            if (strArr != null && (strArr.length <= 0 || !TextUtils.isEmpty(strArr[0]))) {
                String str = (strArr.length < 3 || TextUtils.isEmpty(strArr[2])) ? "" : strArr[2];
                String str2 = strArr[0];
                if (s.this.jy != null && !TextUtils.isEmpty(s.this.jy.getFilePath())) {
                    downloadInfo = !TextUtils.isEmpty(str) ? Downloader.getInstance(no.getContext()).getDownloadInfo(Downloader.getInstance(no.getContext()).getDownloadId(str, s.this.jy.getFilePath())) : Downloader.getInstance(no.getContext()).getDownloadInfo(str2, s.this.jy.getFilePath());
                }
                if (downloadInfo == null) {
                    return !TextUtils.isEmpty(str) ? com.ss.android.socialbase.appdownloader.p.o().dq(no.getContext(), str) : com.ss.android.socialbase.appdownloader.p.o().dq(no.getContext(), str2);
                }
            }
            return downloadInfo;
        }

        @Override // android.os.AsyncTask
        /* renamed from: dq, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(DownloadInfo downloadInfo) {
            super.onPostExecute(downloadInfo);
            if (isCancelled() || s.this.jy == null) {
                return;
            }
            try {
                com.ss.android.downloadlib.addownload.d.ox dq = com.ss.android.downloadlib.mn.mp.dq(s.this.jy.getPackageName(), s.this.jy.getVersionCode(), s.this.jy.getVersionName());
                com.ss.android.downloadlib.addownload.d.ia.dq().dq(s.this.jy.getVersionCode(), dq.d(), com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadInfo));
                boolean dq2 = dq.dq();
                if (downloadInfo == null || downloadInfo.getId() == 0 || (!dq2 && Downloader.getInstance(no.getContext()).isDownloadSuccessAndFileNotExist(downloadInfo))) {
                    if (downloadInfo != null && Downloader.getInstance(no.getContext()).isDownloadSuccessAndFileNotExist(downloadInfo)) {
                        com.ss.android.socialbase.downloader.notification.d.dq().iw(downloadInfo.getId());
                        s.this.ia = null;
                    }
                    if (s.this.ia != null) {
                        Downloader.getInstance(no.getContext()).removeTaskMainListener(s.this.ia.getId());
                        if (s.this.r) {
                            Downloader.getInstance(s.this.getContext()).setMainThreadListener(s.this.ia.getId(), s.this.o, false);
                        } else {
                            Downloader.getInstance(s.this.getContext()).setMainThreadListener(s.this.ia.getId(), s.this.o);
                        }
                    }
                    if (dq2) {
                        s sVar = s.this;
                        sVar.ia = new DownloadInfo.dq(sVar.jy.getDownloadUrl()).dq();
                        s.this.ia.setStatus(-3);
                        s.this.ox.dq(s.this.ia, s.this.fw(), ia.dq((Map<Integer, Object>) s.this.iw), dq2);
                    } else {
                        Iterator<DownloadStatusChangeListener> it = ia.dq((Map<Integer, Object>) s.this.iw).iterator();
                        while (it.hasNext()) {
                            it.next().onIdle();
                        }
                        s.this.ia = null;
                    }
                    s.this.ox.ox(s.this.ia);
                }
                Downloader.getInstance(no.getContext()).removeTaskMainListener(downloadInfo.getId());
                if (s.this.ia == null || s.this.ia.getStatus() != -4) {
                    s.this.ia = downloadInfo;
                    if (s.this.r) {
                        Downloader.getInstance(no.getContext()).setMainThreadListener(s.this.ia.getId(), s.this.o, false);
                    } else {
                        Downloader.getInstance(no.getContext()).setMainThreadListener(s.this.ia.getId(), s.this.o);
                    }
                } else {
                    s.this.ia = null;
                }
                s.this.ox.dq(s.this.ia, s.this.fw(), ia.dq((Map<Integer, Object>) s.this.iw), dq2);
                s.this.ox.ox(s.this.ia);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public s() {
        com.ss.android.downloadlib.mn.q qVar = new com.ss.android.downloadlib.mn.q(Looper.getMainLooper(), this);
        this.f9188d = qVar;
        this.iw = new ConcurrentHashMap();
        this.o = new ia.dq(qVar);
        this.q = -1L;
        this.jy = null;
        this.f9189f = null;
        this.fw = null;
        this.ox = new ia(this);
        this.p = new p(qVar);
        this.r = com.ss.android.socialbase.downloader.mn.dq.ox().dq("ttdownloader_callback_twice");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, int i2, DownloadInfo downloadInfo) {
        if (!com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_click_start")) {
            com.ss.android.socialbase.appdownloader.p.o().dq(no.getContext(), i, i2);
        } else if (i2 == -3 || com.ss.android.socialbase.downloader.downloader.p.dq().s(i)) {
            com.ss.android.socialbase.appdownloader.p.o().dq(no.getContext(), i, i2);
        } else {
            dq(false, false);
        }
    }

    private void dq(DownloadInfo downloadInfo) {
        Message obtain = Message.obtain();
        obtain.what = 3;
        obtain.obj = downloadInfo;
        this.f9188d.sendMessage(obtain);
    }

    private void f() {
        ox oxVar = this.kk;
        if (oxVar != null && oxVar.getStatus() != AsyncTask.Status.FINISHED) {
            this.kk.cancel(true);
        }
        this.kk = new ox();
        if (TextUtils.isEmpty(this.mp)) {
            com.ss.android.downloadlib.mn.d.dq(this.kk, this.jy.getDownloadUrl(), this.jy.getPackageName());
        } else {
            com.ss.android.downloadlib.mn.d.dq(this.kk, this.jy.getDownloadUrl(), this.jy.getPackageName(), this.mp);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DownloadShortInfo fw() {
        if (this.mn == null) {
            this.mn = new DownloadShortInfo();
        }
        return this.mn;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        WeakReference<Context> weakReference = this.s;
        return (weakReference == null || weakReference.get() == null) ? no.getContext() : this.s.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ia(boolean z) {
        Iterator<DownloadStatusChangeListener> it = ia.dq(this.iw).iterator();
        while (it.hasNext()) {
            it.next().onDownloadStart(this.jy, mp());
        }
        int dq2 = this.ox.dq(no.getContext(), this.o);
        String str = dq;
        com.ss.android.downloadlib.mn.no.dq(str, "beginDown id:" + dq2, null);
        if (dq2 == 0) {
            DownloadInfo dq3 = new DownloadInfo.dq(this.jy.getDownloadUrl()).dq();
            dq3.setStatus(-1);
            dq(dq3);
            com.ss.android.downloadlib.p.dq.dq().dq(this.q, new BaseException(2, "start download failed, id=0"));
            com.ss.android.downloadlib.s.ox.dq().d("beginDown");
        } else if (this.ia != null && !com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_click_start")) {
            this.ox.dq(this.ia, false);
        } else if (z) {
            this.ox.dq();
        }
        if (this.ox.dq(ox())) {
            com.ss.android.downloadlib.mn.no.dq(str, "beginDown IC id:" + dq2, null);
            no();
        }
    }

    private DownloadEventConfig ig() {
        DownloadEventConfig downloadEventConfig = this.f9189f;
        return downloadEventConfig == null ? new ox.dq().dq() : downloadEventConfig;
    }

    private void iw(final boolean z) {
        DownloadModel downloadModel;
        DownloadController downloadController;
        DownloadController downloadController2;
        String str = dq;
        com.ss.android.downloadlib.mn.no.dq(str, "pBCD", null);
        if (jy()) {
            com.ss.android.downloadlib.addownload.d.s s = com.ss.android.downloadlib.addownload.d.iw.dq().s(this.q);
            if (this.gh) {
                if (!kk()) {
                    dq(z, true);
                    return;
                } else {
                    if (p(false) && (downloadController2 = s.p) != null && downloadController2.isAutoDownloadOnCardShow()) {
                        dq(z, true);
                        return;
                    }
                    return;
                }
            }
            if (this.jy.isAd() && (downloadController = s.p) != null && downloadController.enableShowComplianceDialog() && s.f9152d != null && com.ss.android.downloadlib.addownload.compliance.d.dq().dq(s.f9152d) && com.ss.android.downloadlib.addownload.compliance.d.dq().dq(s)) {
                return;
            }
            dq(z, true);
            return;
        }
        com.ss.android.downloadlib.mn.no.dq(str, "pBCD continue download, status:" + this.ia.getStatus(), null);
        DownloadInfo downloadInfo = this.ia;
        if (downloadInfo != null && (downloadModel = this.jy) != null) {
            downloadInfo.setOnlyWifi(downloadModel.isNeedWifi());
        }
        final int status = this.ia.getStatus();
        final int id = this.ia.getId();
        final com.ss.android.downloadad.api.dq.d dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(this.ia);
        if (status == -2 || status == -1) {
            this.ox.dq(this.ia, z);
            if (dq2 != null) {
                dq2.ia(System.currentTimeMillis());
                dq2.kk(this.ia.getCurBytes());
            }
            this.ia.setDownloadFromReserveWifi(false);
            this.p.dq(new com.ss.android.downloadlib.addownload.d.s(this.q, this.jy, ig(), mp()));
            this.p.dq(id, this.ia.getCurBytes(), this.ia.getTotalBytes(), new dq() { // from class: com.ss.android.downloadlib.addownload.s.3
                @Override // com.ss.android.downloadlib.addownload.s.dq
                public void dq() {
                    if (s.this.p.dq()) {
                        return;
                    }
                    s sVar = s.this;
                    sVar.dq(id, status, sVar.ia);
                }
            });
            if (status == -2 && com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dq2).dq("show_pause_continue_toast", 0) == 1) {
                com.ss.android.downloadlib.ia.dq().d().postDelayed(new Runnable() { // from class: com.ss.android.downloadlib.addownload.s.4
                    @Override // java.lang.Runnable
                    public void run() {
                        no.ox().dq(13, no.getContext(), s.this.jy, "已恢复下载", null, 0);
                    }
                }, 500L);
                return;
            }
            return;
        }
        if (!q.dq(status)) {
            this.ox.dq(this.ia, z);
            dq(id, status, this.ia);
        } else if (this.jy.enablePause()) {
            this.p.dq(true);
            com.ss.android.downloadlib.ox.ia.dq().d(com.ss.android.downloadlib.addownload.d.iw.dq().p(this.q));
            if (com.ss.android.downloadlib.mn.s.dq((com.ss.android.downloadad.api.dq.dq) dq2).dq("cancel_pause_optimise_switch", 0) == 1) {
                com.ss.android.downloadlib.addownload.p.p.dq().dq(dq2, status, new com.ss.android.downloadlib.addownload.p.ia() { // from class: com.ss.android.downloadlib.addownload.s.6
                    @Override // com.ss.android.downloadlib.addownload.p.ia
                    public void dq(com.ss.android.downloadad.api.dq.d dVar) {
                        if (s.this.ia == null && com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_handle_pause")) {
                            s.this.ia = Downloader.getInstance(no.getContext()).getDownloadInfo(id);
                        }
                        s.this.ox.dq(s.this.ia, z);
                        if (s.this.ia != null && com.ss.android.socialbase.downloader.kk.iw.d(no.getContext()) && s.this.ia.isPauseReserveOnWifi()) {
                            s.this.ia.stopPauseReserveOnWifi();
                            com.ss.android.downloadlib.p.dq.dq().dq("cancel_pause_reserve_wifi_cancel_on_wifi", dq2);
                        } else {
                            s sVar = s.this;
                            sVar.dq(id, status, sVar.ia);
                        }
                    }
                }, new com.ss.android.downloadlib.addownload.dq.ox() { // from class: com.ss.android.downloadlib.addownload.s.5
                    @Override // com.ss.android.downloadlib.addownload.dq.ox
                    public void delete() {
                        s.this.dq(true);
                    }
                });
            } else {
                com.ss.android.downloadlib.addownload.p.no.dq().dq(dq2, status, new com.ss.android.downloadlib.addownload.p.ia() { // from class: com.ss.android.downloadlib.addownload.s.7
                    @Override // com.ss.android.downloadlib.addownload.p.ia
                    public void dq(com.ss.android.downloadad.api.dq.d dVar) {
                        if (s.this.ia == null && com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_handle_pause")) {
                            s.this.ia = Downloader.getInstance(no.getContext()).getDownloadInfo(id);
                        }
                        s.this.ox.dq(s.this.ia, z);
                        if (s.this.ia != null && com.ss.android.socialbase.downloader.kk.iw.d(no.getContext()) && s.this.ia.isPauseReserveOnWifi()) {
                            s.this.ia.stopPauseReserveOnWifi();
                            com.ss.android.downloadlib.p.dq.dq().d("pause_reserve_wifi_cancel_on_wifi", dq2);
                        } else {
                            s sVar = s.this;
                            sVar.dq(id, status, sVar.ia);
                        }
                    }
                });
            }
        }
    }

    private boolean jy() {
        if (!com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_click_start")) {
            DownloadInfo downloadInfo = this.ia;
            if (downloadInfo == null) {
                return true;
            }
            return !(downloadInfo.getStatus() == -3 || Downloader.getInstance(no.getContext()).canResume(this.ia.getId())) || this.ia.getStatus() == 0;
        }
        DownloadInfo downloadInfo2 = this.ia;
        if (downloadInfo2 == null) {
            return true;
        }
        if ((downloadInfo2.getStatus() == -3 && this.ia.getCurBytes() <= 0) || this.ia.getStatus() == 0 || this.ia.getStatus() == -4) {
            return true;
        }
        return com.ss.android.socialbase.downloader.kk.iw.dq(this.ia.getStatus(), this.ia.getSavePath(), this.ia.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mn(final boolean z) {
        this.p.dq(new com.ss.android.downloadlib.addownload.d.s(this.q, this.jy, ig(), mp()));
        this.p.dq(0, 0L, 0L, new dq() { // from class: com.ss.android.downloadlib.addownload.s.9
            @Override // com.ss.android.downloadlib.addownload.s.dq
            public void dq() {
                if (s.this.p.dq()) {
                    return;
                }
                s.this.ia(z);
            }
        });
    }

    private DownloadController mp() {
        if (this.fw == null) {
            this.fw = new com.ss.android.download.api.download.d();
        }
        return this.fw;
    }

    private void no() {
        SoftReference<OnItemClickListener> softReference = this.cd;
        if (softReference != null && softReference.get() != null) {
            this.cd.get().onItemClick(this.jy, ig(), mp());
            this.cd = null;
        } else {
            no.d();
            getContext();
            mp();
            ig();
        }
    }

    private boolean ox(int i) {
        if (!s()) {
            return false;
        }
        String dq2 = this.jy.getQuickAppModel().dq();
        int i2 = i != 1 ? i != 2 ? -1 : 4 : 5;
        DownloadModel downloadModel = this.jy;
        if (downloadModel instanceof AdDownloadModel) {
            ((AdDownloadModel) downloadModel).setFunnelType(3);
        }
        boolean ox2 = com.ss.android.downloadlib.mn.kk.ox(no.getContext(), dq2);
        if (!ox2) {
            com.ss.android.downloadlib.p.dq.dq().dq(this.q, false, 0);
            return ox2;
        }
        com.ss.android.downloadlib.p.dq.dq().dq(this.q, i);
        Message obtain = Message.obtain();
        obtain.what = i2;
        obtain.obj = Long.valueOf(this.jy.getId());
        com.ss.android.downloadlib.addownload.ox.dq().dq(this, i2, this.jy);
        return ox2;
    }

    private void q() {
        String str = dq;
        com.ss.android.downloadlib.mn.no.dq(str, "pICD", null);
        if (this.ox.p(this.ia)) {
            com.ss.android.downloadlib.mn.no.dq(str, "pICD BC", null);
            iw(false);
        } else {
            com.ss.android.downloadlib.mn.no.dq(str, "pICD IC", null);
            no();
        }
    }

    private void s(boolean z) {
        if (com.ss.android.downloadlib.mn.s.d(this.jy).d("notification_opt_2") == 1 && this.ia != null) {
            com.ss.android.socialbase.downloader.notification.d.dq().iw(this.ia.getId());
        }
        iw(z);
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public void d(final int i) {
        if (i != 1 && i != 2) {
            throw new IllegalArgumentException("error actionType");
        }
        this.ox.dq(this.q);
        if (!com.ss.android.downloadlib.addownload.d.iw.dq().s(this.q).e()) {
            com.ss.android.downloadlib.s.ox.dq().dq("handleDownload ModelBox !isStrictValid");
        }
        if (this.ox.dq(i, this.jy)) {
            com.ss.android.downloadlib.addownload.compliance.iw.dq().dq(this.ox.dq, new com.ss.android.downloadlib.addownload.compliance.ia() { // from class: com.ss.android.downloadlib.addownload.s.1
                @Override // com.ss.android.downloadlib.addownload.compliance.ia
                public void dq() {
                    int i2 = i;
                    if (i2 == 1) {
                        com.ss.android.socialbase.downloader.ox.dq.dq(s.dq, "miui new get miui deeplink fail: handleDownload id:" + s.this.q + ",tryPerformButtonClick:", null);
                        s.this.ox(true);
                        return;
                    }
                    if (i2 != 2) {
                        return;
                    }
                    com.ss.android.socialbase.downloader.ox.dq.dq(s.dq, "miui new get miui deeplink fail: handleDownload id:" + s.this.q + ",tryPerformButtonClick:", null);
                    s.this.d(true);
                }

                @Override // com.ss.android.downloadlib.addownload.compliance.ia
                public void dq(String str) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.putOpt("download_miui_new_market", 1);
                        jSONObject.putOpt("download_miui_market_deeplink", str);
                        if (com.ss.android.downloadlib.mn.ia.dq(s.this.getContext(), s.this.ox.dq, str, jSONObject, true, i)) {
                            jSONObject.putOpt("download_miui_jump_market_success", 1);
                            com.ss.android.downloadlib.addownload.compliance.iw.dq().dq(0, s.this.ox.dq, jSONObject);
                            return;
                        }
                        jSONObject.putOpt("download_miui_jump_market_success", 0);
                        com.ss.android.downloadlib.addownload.compliance.iw.dq().dq(1, s.this.ox.dq, jSONObject);
                        int i2 = i;
                        if (i2 == 1) {
                            com.ss.android.socialbase.downloader.ox.dq.dq(s.dq, "miui new rollback fail: handleDownload id:" + s.this.q + ",tryPerformButtonClick:", null);
                            s.this.ox(true);
                            return;
                        }
                        if (i2 != 2) {
                            return;
                        }
                        com.ss.android.socialbase.downloader.ox.dq.dq(s.dq, "miui new rollback fail: handleDownload id:" + s.this.q + ",tryPerformButtonClick:", null);
                        s.this.d(true);
                    } catch (Exception e2) {
                        com.ss.android.downloadlib.s.ox.dq().dq(e2, "generate miui new market param error");
                    }
                }
            });
            return;
        }
        if (this.ox.dq(getContext(), i, this.gh)) {
            return;
        }
        boolean ox2 = ox(i);
        if (i == 1) {
            if (ox2) {
                return;
            }
            com.ss.android.downloadlib.mn.no.dq(dq, tn.f(this.q, ",pIC:", new StringBuilder("handleDownload id:")), null);
            ox(true);
            return;
        }
        if (i == 2 && !ox2) {
            com.ss.android.downloadlib.mn.no.dq(dq, tn.f(this.q, ",pBC:", new StringBuilder("handleDownload id:")), null);
            d(true);
        }
    }

    public void d(boolean z) {
        s(z);
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public boolean d() {
        return this.no;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public mn dq(long j) {
        if (j == 0) {
            com.ss.android.downloadlib.s.ox.dq().dq(false, "setModelId");
            return this;
        }
        DownloadModel dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(j);
        if (dq2 != null) {
            this.jy = dq2;
            this.q = j;
            this.ox.dq(j);
        }
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public mn dq(IDownloadButtonClickListener iDownloadButtonClickListener) {
        if (iDownloadButtonClickListener == null) {
            this.i = null;
            return this;
        }
        this.i = new SoftReference<>(iDownloadButtonClickListener);
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public mn dq(OnItemClickListener onItemClickListener) {
        if (onItemClickListener == null) {
            this.cd = null;
            return this;
        }
        this.cd = new SoftReference<>(onItemClickListener);
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public mn dq(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.mp = str;
        }
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public s d(int i, DownloadStatusChangeListener downloadStatusChangeListener) {
        if (downloadStatusChangeListener != null) {
            if (no.kk().optInt("back_use_softref_listener") == 1) {
                this.iw.put(Integer.valueOf(i), downloadStatusChangeListener);
                return this;
            }
            if (no.kk().optInt("use_weakref_listener") == 1) {
                this.iw.put(Integer.valueOf(i), new WeakReference(downloadStatusChangeListener));
                return this;
            }
            this.iw.put(Integer.valueOf(i), new SoftReference(downloadStatusChangeListener));
        }
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public s d(Context context) {
        if (context != null) {
            this.s = new WeakReference<>(context);
        }
        no.d(context);
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public s d(DownloadController downloadController) {
        JSONObject extra;
        this.fw = downloadController;
        if (com.ss.android.downloadlib.mn.s.d(this.jy).d("force_auto_open") == 1) {
            mp().setLinkMode(1);
        }
        if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_show_dialog") && (extra = this.jy.getExtra()) != null && extra.optInt("subprocess") > 0) {
            mp().setEnableNewActivity(false);
        }
        com.ss.android.downloadlib.addownload.d.iw.dq().dq(this.q, mp());
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public s d(DownloadEventConfig downloadEventConfig) {
        this.f9189f = downloadEventConfig;
        this.gh = ig().getDownloadScene() == 0;
        com.ss.android.downloadlib.addownload.d.iw.dq().dq(this.q, ig());
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public s d(DownloadModel downloadModel) {
        if (downloadModel != null) {
            if (downloadModel.isAd()) {
                if (downloadModel.getId() <= 0 || TextUtils.isEmpty(downloadModel.getLogExtra())) {
                    com.ss.android.downloadlib.s.ox.dq().dq("setDownloadModel ad error");
                }
            } else if (downloadModel.getId() == 0 && (downloadModel instanceof AdDownloadModel)) {
                com.ss.android.downloadlib.s.ox.dq().dq(false, "setDownloadModel id=0");
                if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_model_id")) {
                    ((AdDownloadModel) downloadModel).setId(downloadModel.getDownloadUrl().hashCode());
                }
            }
            com.ss.android.downloadlib.addownload.d.iw.dq().dq(downloadModel);
            this.q = downloadModel.getId();
            this.jy = downloadModel;
            if (kk.dq(downloadModel)) {
                ((AdDownloadModel) downloadModel).setExtraValue(3L);
                com.ss.android.downloadad.api.dq.d p = com.ss.android.downloadlib.addownload.d.iw.dq().p(this.q);
                if (p != null && p.ig() != 3) {
                    p.s(3L);
                    com.ss.android.downloadlib.addownload.d.kk.dq().dq(p);
                }
            }
        }
        return this;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public void dq() {
        this.no = true;
        com.ss.android.downloadlib.addownload.d.iw.dq().dq(this.q, ig());
        com.ss.android.downloadlib.addownload.d.iw.dq().dq(this.q, mp());
        this.ox.dq(this.q);
        f();
        if (no.kk().optInt("enable_empty_listener", 1) == 1 && this.iw.get(Integer.MIN_VALUE) == null) {
            d(Integer.MIN_VALUE, new com.ss.android.download.api.config.dq());
        }
    }

    @Override // com.ss.android.downloadlib.mn.q.dq
    public void dq(Message message) {
        if (message != null && this.no && message.what == 3) {
            this.ia = (DownloadInfo) message.obj;
            this.ox.dq(message, fw(), this.iw);
        }
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public void dq(boolean z) {
        if (this.ia != null) {
            if (z) {
                com.ss.android.socialbase.appdownloader.ox.p d2 = com.ss.android.socialbase.appdownloader.p.o().d();
                if (d2 != null) {
                    d2.dq(this.ia);
                }
                Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).cancel(this.ia.getId(), true);
                return;
            }
            Intent intent = new Intent(no.getContext(), (Class<?>) DownloadHandlerService.class);
            intent.setAction("android.ss.intent.action.DOWNLOAD_DELETE");
            intent.putExtra("extra_click_download_ids", this.ia.getId());
            no.getContext().startService(intent);
        }
    }

    public void dq(boolean z, final boolean z2) {
        if (z) {
            com.ss.android.downloadlib.p.dq.dq().dq(this.q, 2);
        }
        if (com.ss.android.downloadlib.mn.mp.dq()) {
            if (!com.ss.android.downloadlib.mn.o.d("android.permission.READ_MEDIA_IMAGES") && !com.ss.android.downloadlib.mn.o.d("android.permission.READ_MEDIA_AUDIO") && !com.ss.android.downloadlib.mn.o.d("android.permission.READ_MEDIA_VIDEO") && !mp().enableNewActivity()) {
                this.jy.setFilePath(this.ox.d());
            }
        } else if (!com.ss.android.downloadlib.mn.o.d("android.permission.WRITE_EXTERNAL_STORAGE") && !mp().enableNewActivity()) {
            this.jy.setFilePath(this.ox.d());
        }
        if (com.ss.android.downloadlib.mn.s.ox(this.jy) != 0) {
            mn(z2);
        } else {
            com.ss.android.downloadlib.mn.no.dq(dq, "pBCD not start", null);
            this.ox.dq(new r() { // from class: com.ss.android.downloadlib.addownload.s.8
                @Override // com.ss.android.download.api.config.r
                public void dq() {
                    com.ss.android.downloadlib.mn.no.dq(s.dq, "pBCD start download", null);
                    s.this.mn(z2);
                }

                @Override // com.ss.android.download.api.config.r
                public void dq(String str) {
                    com.ss.android.downloadlib.mn.no.dq(s.dq, "pBCD onDenied", null);
                }
            });
        }
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public boolean dq(int i) {
        if (i == 0) {
            this.iw.clear();
        } else {
            this.iw.remove(Integer.valueOf(i));
        }
        if (!this.iw.isEmpty()) {
            if (this.iw.size() == 1 && this.iw.containsKey(Integer.MIN_VALUE)) {
                this.ox.d(this.ia);
            }
            return false;
        }
        this.no = false;
        this.ig = System.currentTimeMillis();
        if (this.ia != null) {
            Downloader.getInstance(no.getContext()).removeTaskMainListener(this.ia.getId());
        }
        ox oxVar = this.kk;
        if (oxVar != null && oxVar.getStatus() != AsyncTask.Status.FINISHED) {
            this.kk.cancel(true);
        }
        this.ox.dq(this.ia);
        String str = dq;
        StringBuilder sb = new StringBuilder("onUnbind removeCallbacksAndMessages, downloadUrl:");
        DownloadInfo downloadInfo = this.ia;
        sb.append(downloadInfo == null ? "" : downloadInfo.getUrl());
        com.ss.android.downloadlib.mn.no.dq(str, sb.toString(), null);
        this.f9188d.removeCallbacksAndMessages(null);
        this.mn = null;
        this.ia = null;
        return true;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public void ia() {
        com.ss.android.downloadlib.addownload.d.iw.dq().iw(this.q);
    }

    public void iw() {
        this.f9188d.post(new Runnable() { // from class: com.ss.android.downloadlib.addownload.s.2
            @Override // java.lang.Runnable
            public void run() {
                Iterator<DownloadStatusChangeListener> it = ia.dq((Map<Integer, Object>) s.this.iw).iterator();
                while (it.hasNext()) {
                    it.next().onInstalled(s.this.fw());
                }
            }
        });
    }

    public boolean kk() {
        SoftReference<IDownloadButtonClickListener> softReference = this.i;
        if (softReference == null) {
            return false;
        }
        return kk.dq(this.jy, softReference.get());
    }

    public void mn() {
        if (this.iw.size() == 0) {
            return;
        }
        Iterator<DownloadStatusChangeListener> it = ia.dq(this.iw).iterator();
        while (it.hasNext()) {
            it.next().onIdle();
        }
        DownloadInfo downloadInfo = this.ia;
        if (downloadInfo != null) {
            downloadInfo.setStatus(-4);
        }
    }

    public void ox(boolean z) {
        if (z) {
            com.ss.android.downloadlib.p.dq.dq().dq(this.q, 1);
        }
        q();
    }

    public boolean ox() {
        DownloadInfo downloadInfo = this.ia;
        return (downloadInfo == null || downloadInfo.getStatus() == 0) ? false : true;
    }

    @Override // com.ss.android.downloadlib.addownload.mn
    public long p() {
        return this.ig;
    }

    public boolean p(boolean z) {
        SoftReference<IDownloadButtonClickListener> softReference = this.i;
        if (softReference == null || softReference.get() == null) {
            com.ss.android.downloadlib.s.ox.dq().d("mDownloadButtonClickListener has recycled");
            return false;
        }
        try {
            if (z) {
                this.i.get().handleMarketFailedComplianceDialog();
            } else {
                this.i.get().handleComplianceDialog(true);
            }
            this.i = null;
            return true;
        } catch (Exception unused) {
            com.ss.android.downloadlib.s.ox.dq().d("mDownloadButtonClickListener has recycled");
            return false;
        }
    }

    public boolean s() {
        return no.kk().optInt("quick_app_enable_switch", 0) == 0 && this.jy.getQuickAppModel() != null && !TextUtils.isEmpty(this.jy.getQuickAppModel().dq()) && com.ss.android.downloadlib.addownload.ox.dq(this.ia) && com.ss.android.downloadlib.mn.mp.dq(getContext(), new Intent("android.intent.action.VIEW", Uri.parse(this.jy.getQuickAppModel().dq())));
    }
}

package com.ss.android.downloadlib;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.text.TextUtils;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.download.api.model.d;
import com.ss.android.downloadad.api.download.AdDownloadController;
import com.ss.android.downloadad.api.download.AdDownloadEventConfig;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.downloadlib.s.d;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements com.ss.android.downloadad.api.d {

    /* renamed from: d, reason: collision with root package name */
    private static volatile d f9197d = null;
    private static String dq = "d";
    private o ox = o.dq(no.getContext());

    private d() {
    }

    public static DownloadController d() {
        return dq(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, IDownloadButtonClickListener iDownloadButtonClickListener) {
        DownloadController downloadController2 = downloadController;
        if (!com.ss.android.download.api.ox.dq.dq(uri) || no.kk().optInt("disable_market") == 1) {
            return false;
        }
        if (context == null) {
            context = no.getContext();
        }
        String d2 = com.ss.android.download.api.ox.dq.d(uri);
        if (downloadModel == null) {
            return com.ss.android.downloadlib.mn.kk.dq(context, d2).getType() == 5;
        }
        if (!TextUtils.isEmpty(d2) && (downloadModel instanceof AdDownloadModel)) {
            ((AdDownloadModel) downloadModel).setPackageName(d2);
        }
        if (downloadController2 != null) {
            downloadController2.setDownloadMode(2);
        } else if ((downloadModel instanceof AdDownloadModel) && TextUtils.isEmpty(downloadModel.getDownloadUrl())) {
            ((AdDownloadModel) downloadModel).setDownloadUrl(uri.toString());
            downloadController2 = dq(true);
        } else {
            downloadController2 = downloadModel.getDownloadUrl().startsWith("market") ? dq(true) : d();
        }
        com.ss.android.downloadlib.addownload.d.s sVar = new com.ss.android.downloadlib.addownload.d.s(downloadModel.getId(), downloadModel, (DownloadEventConfig) mp.dq(downloadEventConfig, ox()), downloadController2);
        com.ss.android.downloadlib.addownload.d.iw.dq().dq(sVar.f9152d);
        com.ss.android.downloadlib.addownload.d.iw.dq().dq(sVar.dq, sVar.ox);
        com.ss.android.downloadlib.addownload.d.iw.dq().dq(sVar.dq, sVar.p);
        if (mp.dq(downloadModel) && com.ss.android.socialbase.downloader.mn.dq.ox().d("app_link_opt") == 1 && com.ss.android.downloadlib.d.dq.dq(sVar)) {
            return true;
        }
        JSONObject jSONObject = new JSONObject();
        mp.dq(jSONObject, "market_url", uri.toString());
        mp.dq(jSONObject, "download_scene", (Object) 1);
        com.ss.android.downloadlib.p.dq.dq().d("market_click_open", jSONObject, sVar);
        com.ss.android.downloadlib.addownload.d.mn dq2 = com.ss.android.downloadlib.mn.kk.dq(context, sVar, d2);
        String dq3 = mp.dq(dq2.d(), "open_market");
        if (dq2.getType() == 5) {
            com.ss.android.downloadlib.d.dq.dq(dq3, jSONObject, sVar, true);
            return true;
        }
        if (dq2.getType() != 6) {
            return true;
        }
        mp.dq(jSONObject, "error_code", Integer.valueOf(dq2.dq()));
        com.ss.android.downloadlib.p.dq.dq().d("market_open_failed", jSONObject, sVar);
        if (com.ss.android.downloadlib.addownload.kk.dq(downloadModel, iDownloadButtonClickListener)) {
            iDownloadButtonClickListener.handleMarketFailedComplianceDialog();
        }
        return false;
    }

    public static DownloadController dq(boolean z) {
        AdDownloadController.Builder shouldUseNewWebView = new AdDownloadController.Builder().setLinkMode(0).setIsEnableBackDialog(true).setIsEnableMultipleDownload(false).setShouldUseNewWebView(false);
        if (z) {
            shouldUseNewWebView.setDownloadMode(2);
        } else {
            shouldUseNewWebView.setDownloadMode(0);
        }
        return shouldUseNewWebView.build();
    }

    public static d dq() {
        if (f9197d == null) {
            synchronized (d.class) {
                try {
                    if (f9197d == null) {
                        f9197d = new d();
                    }
                } finally {
                }
            }
        }
        return f9197d;
    }

    public static DownloadEventConfig ox() {
        return new AdDownloadEventConfig.Builder().setClickButtonTag("landing_h5_download_ad_button").setClickItemTag("landing_h5_download_ad_button").setClickStartLabel("click_start_detail").setClickPauseLabel("click_pause_detail").setClickContinueLabel("click_continue_detail").setClickInstallLabel("click_install_detail").setClickOpenLabel("click_open_detail").setStorageDenyLabel("storage_deny_detail").setDownloadScene(1).setIsEnableClickEvent(false).setIsEnableNoChargeClickEvent(true).setIsEnableV3Event(false).build();
    }

    public Dialog d(Context context, String str, boolean z, final DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i, boolean z2, IDownloadButtonClickListener iDownloadButtonClickListener) {
        if (dq(downloadModel.getId())) {
            if (z2) {
                dq(downloadModel.getId(), downloadEventConfig, downloadController);
            } else {
                d(downloadModel.getId());
            }
            return null;
        }
        if (context == null || TextUtils.isEmpty(downloadModel.getDownloadUrl())) {
            return null;
        }
        this.ox.dq(context, i, downloadStatusChangeListener, downloadModel);
        final DownloadEventConfig downloadEventConfig2 = (DownloadEventConfig) mp.dq(downloadEventConfig, ox());
        final DownloadController downloadController2 = (DownloadController) mp.dq(downloadController, d());
        downloadEventConfig2.setDownloadScene(1);
        if ((downloadController2.enableShowComplianceDialog() && com.ss.android.downloadlib.addownload.compliance.d.dq().dq(downloadModel)) ? true : (no.kk().optInt("disable_lp_dialog", 0) == 1) | z) {
            this.ox.dq(downloadModel.getDownloadUrl(), downloadModel.getId(), 2, downloadEventConfig2, downloadController2, iDownloadButtonClickListener);
            return null;
        }
        com.ss.android.downloadlib.mn.no.dq(dq, "tryStartDownload show dialog appName:" + downloadModel.getDownloadUrl(), null);
        Dialog d2 = no.ox().d(new d.dq(context).dq(downloadModel.getName()).d("确认要下载此应用吗？").ox("确认").p("取消").dq(new d.InterfaceC0211d() { // from class: com.ss.android.downloadlib.d.2
            @Override // com.ss.android.download.api.model.d.InterfaceC0211d
            public void d(DialogInterface dialogInterface) {
                com.ss.android.downloadlib.p.dq.dq().dq("landing_download_dialog_cancel", downloadModel, downloadEventConfig2, downloadController2);
                dialogInterface.dismiss();
            }

            @Override // com.ss.android.download.api.model.d.InterfaceC0211d
            public void dq(DialogInterface dialogInterface) {
                d.this.ox.dq(downloadModel.getDownloadUrl(), downloadModel.getId(), 2, downloadEventConfig2, downloadController2);
                com.ss.android.downloadlib.p.dq.dq().dq("landing_download_dialog_confirm", downloadModel, downloadEventConfig2, downloadController2);
                dialogInterface.dismiss();
            }

            @Override // com.ss.android.download.api.model.d.InterfaceC0211d
            public void ox(DialogInterface dialogInterface) {
                com.ss.android.downloadlib.p.dq.dq().dq("landing_download_dialog_cancel", downloadModel, downloadEventConfig2, downloadController2);
            }
        }).dq(0).dq());
        com.ss.android.downloadlib.p.dq.dq().dq("landing_download_dialog_show", downloadModel, downloadEventConfig2, downloadController2);
        return d2;
    }

    public void d(long j) {
        DownloadModel dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(j);
        com.ss.android.downloadad.api.dq.d p = com.ss.android.downloadlib.addownload.d.iw.dq().p(j);
        if (dq2 == null && p != null) {
            dq2 = p.z();
        }
        if (dq2 == null) {
            return;
        }
        DownloadEventConfig d2 = com.ss.android.downloadlib.addownload.d.iw.dq().d(j);
        DownloadController ox = com.ss.android.downloadlib.addownload.d.iw.dq().ox(j);
        if (d2 instanceof com.ss.android.download.api.download.ox) {
            d2 = null;
        }
        if (ox instanceof com.ss.android.download.api.download.d) {
            ox = null;
        }
        if (p == null) {
            if (d2 == null) {
                d2 = ox();
            }
            if (ox == null) {
                ox = d();
            }
        } else {
            if (d2 == null) {
                d2 = new AdDownloadEventConfig.Builder().setClickButtonTag(p.o()).setRefer(p.kk()).setIsEnableV3Event(p.mp()).setIsEnableClickEvent(false).setClickStartLabel("click_start_detail").setClickPauseLabel("click_pause_detail").setClickContinueLabel("click_continue_detail").setClickInstallLabel("click_install_detail").setStorageDenyLabel("storage_deny_detail").build();
            }
            if (ox == null) {
                ox = p.io();
            }
        }
        DownloadEventConfig downloadEventConfig = d2;
        DownloadController downloadController = ox;
        downloadEventConfig.setDownloadScene(1);
        this.ox.dq(dq2.getDownloadUrl(), j, 2, downloadEventConfig, downloadController);
    }

    @Override // com.ss.android.downloadad.api.d
    public Dialog dq(Context context, String str, boolean z, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i) {
        return dq(context, str, z, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i, false);
    }

    @Override // com.ss.android.downloadad.api.d
    public Dialog dq(Context context, String str, boolean z, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i, IDownloadButtonClickListener iDownloadButtonClickListener) {
        return dq(context, str, z, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i, false, iDownloadButtonClickListener);
    }

    public Dialog dq(Context context, String str, boolean z, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController, DownloadStatusChangeListener downloadStatusChangeListener, int i, boolean z2) {
        return dq(context, str, z, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i, z2, null);
    }

    public Dialog dq(final Context context, final String str, final boolean z, final DownloadModel downloadModel, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final DownloadStatusChangeListener downloadStatusChangeListener, final int i, final boolean z2, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        return (Dialog) com.ss.android.downloadlib.s.d.dq(new d.dq<Dialog>() { // from class: com.ss.android.downloadlib.d.1
            @Override // com.ss.android.downloadlib.s.d.dq
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Dialog d() {
                return d.this.d(context, str, z, downloadModel, downloadEventConfig, downloadController, downloadStatusChangeListener, i, z2, iDownloadButtonClickListener);
            }
        });
    }

    public void dq(long j, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        DownloadModel dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(j);
        com.ss.android.downloadad.api.dq.d p = com.ss.android.downloadlib.addownload.d.iw.dq().p(j);
        if (dq2 == null && p != null) {
            dq2 = p.z();
        }
        if (dq2 == null) {
            return;
        }
        if (downloadEventConfig == null || downloadController == null || (downloadEventConfig instanceof com.ss.android.download.api.download.ox) || (downloadController instanceof com.ss.android.download.api.download.d)) {
            d(j);
        } else {
            downloadEventConfig.setDownloadScene(1);
            this.ox.dq(dq2.getDownloadUrl(), j, 2, downloadEventConfig, downloadController);
        }
    }

    @Override // com.ss.android.downloadad.api.d
    public boolean dq(long j) {
        return (com.ss.android.downloadlib.addownload.d.iw.dq().dq(j) == null && com.ss.android.downloadlib.addownload.d.iw.dq().p(j) == null) ? false : true;
    }

    @Override // com.ss.android.downloadad.api.d
    public boolean dq(long j, int i) {
        DownloadModel dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(j);
        if (dq2 == null) {
            return false;
        }
        this.ox.dq(dq2.getDownloadUrl(), i);
        return true;
    }

    @Override // com.ss.android.downloadad.api.d
    public boolean dq(Context context, long j, String str, DownloadStatusChangeListener downloadStatusChangeListener, int i) {
        com.ss.android.downloadad.api.dq.d p = com.ss.android.downloadlib.addownload.d.iw.dq().p(j);
        if (p != null) {
            this.ox.dq(context, i, downloadStatusChangeListener, p.z());
            return true;
        }
        DownloadModel dq2 = com.ss.android.downloadlib.addownload.d.iw.dq().dq(j);
        if (dq2 == null) {
            return false;
        }
        this.ox.dq(context, i, downloadStatusChangeListener, dq2);
        return true;
    }

    @Override // com.ss.android.downloadad.api.d
    public boolean dq(Context context, Uri uri, DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        return dq(context, uri, downloadModel, downloadEventConfig, downloadController, null);
    }

    @Override // com.ss.android.downloadad.api.d
    public boolean dq(final Context context, final Uri uri, final DownloadModel downloadModel, final DownloadEventConfig downloadEventConfig, final DownloadController downloadController, final IDownloadButtonClickListener iDownloadButtonClickListener) {
        return ((Boolean) com.ss.android.downloadlib.s.d.dq(new d.dq<Boolean>() { // from class: com.ss.android.downloadlib.d.3
            @Override // com.ss.android.downloadlib.s.d.dq
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Boolean d() {
                return Boolean.valueOf(d.this.d(context, uri, downloadModel, downloadEventConfig, downloadController, iDownloadButtonClickListener));
            }
        })).booleanValue();
    }
}

package com.bytedance.sdk.openadsdk.api.dq;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.download.api.model.DownloadShortInfo;
import g.cpq;
import g.gok;
import g.hat;

/* loaded from: classes.dex */
public class s extends com.bytedance.sdk.openadsdk.api.d implements DownloadStatusChangeListener {
    public s(EventListener eventListener) {
        this.dq = eventListener;
    }

    @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
    public void onDownloadActive(DownloadShortInfo downloadShortInfo, int i) {
        gok h;
        if (dq()) {
            h = null;
        } else {
            cpq f2 = cpq.f();
            hat f3 = hat.f();
            f3.f19148c.put(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_SHORT, new p(downloadShortInfo));
            f3.o(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_PERCENT, i);
            f2.f13284b = f3.k();
            h = f2.h();
        }
        dq(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE, h);
    }

    @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
    public void onDownloadFailed(DownloadShortInfo downloadShortInfo) {
        gok h;
        if (dq()) {
            h = null;
        } else {
            cpq f2 = cpq.f();
            hat f3 = hat.f();
            f3.f19148c.put(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_SHORT, new p(downloadShortInfo));
            f2.f13284b = f3.k();
            h = f2.h();
        }
        dq(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_FAILED, h);
    }

    @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
    public void onDownloadFinished(DownloadShortInfo downloadShortInfo) {
        gok h;
        if (dq()) {
            h = null;
        } else {
            cpq f2 = cpq.f();
            hat f3 = hat.f();
            f3.f19148c.put(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_SHORT, new p(downloadShortInfo));
            f2.f13284b = f3.k();
            h = f2.h();
        }
        dq(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ON_FINISHED, h);
    }

    @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
    public void onDownloadPaused(DownloadShortInfo downloadShortInfo, int i) {
        gok h;
        if (dq()) {
            h = null;
        } else {
            cpq f2 = cpq.f();
            hat f3 = hat.f();
            f3.f19148c.put(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_SHORT, new p(downloadShortInfo));
            f3.o(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_PERCENT, i);
            f2.f13284b = f3.k();
            h = f2.h();
        }
        dq(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_PAUSED, h);
    }

    @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
    public void onDownloadStart(DownloadModel downloadModel, DownloadController downloadController) {
        gok h;
        if (dq()) {
            h = null;
        } else {
            cpq f2 = cpq.f();
            hat f3 = hat.f();
            SparseArray sparseArray = f3.f19148c;
            sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODEL, new ox(downloadModel));
            sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER, new dq(downloadController));
            f2.f13284b = f3.k();
            h = f2.h();
        }
        dq(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_START, h);
    }

    @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
    public void onIdle() {
        dq(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_IDLE);
    }

    @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
    public void onInstalled(DownloadShortInfo downloadShortInfo) {
        gok h;
        if (dq()) {
            h = null;
        } else {
            cpq f2 = cpq.f();
            hat f3 = hat.f();
            f3.f19148c.put(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ACTIVE_SHORT, new p(downloadShortInfo));
            f2.f13284b = f3.k();
            h = f2.h();
        }
        dq(ValueSetConstants.VALUE_DOWNLOAD_STATUS_CHANGE_ON_DOWNLOAD_ON_INSTALLED, h);
    }
}

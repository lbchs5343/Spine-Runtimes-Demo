package com.bytedance.sdk.openadsdk.api.dq;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import g.cpq;
import g.gok;
import g.hat;

/* loaded from: classes.dex */
public class ia extends com.bytedance.sdk.openadsdk.api.d implements OnItemClickListener {
    public ia(EventListener eventListener) {
        this.dq = eventListener;
    }

    @Override // com.ss.android.download.api.config.OnItemClickListener
    public void onItemClick(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
        gok h;
        if (dq()) {
            h = null;
        } else {
            cpq f2 = cpq.f();
            hat f3 = hat.f();
            SparseArray sparseArray = f3.f19148c;
            sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_MODEL, new ox(downloadModel));
            sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_EVENT_CONFIG, new d(downloadEventConfig));
            sparseArray.put(ValueSetConstants.VALUE_DOWNLOAD_CONTROLLER, new dq(downloadController));
            f2.f13284b = f3.k();
            h = f2.h();
        }
        dq(ValueSetConstants.VALUE_ON_ITEM_CLICK, h);
    }
}

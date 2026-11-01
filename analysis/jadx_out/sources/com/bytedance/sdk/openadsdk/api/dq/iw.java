package com.bytedance.sdk.openadsdk.api.dq;

import com.bykv.vk.openvk.api.proto.EventListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import g.cpq;
import g.gok;
import g.hat;

/* loaded from: classes.dex */
public class iw extends com.bytedance.sdk.openadsdk.api.d implements IDownloadButtonClickListener {
    public iw(EventListener eventListener) {
        this.dq = eventListener;
    }

    @Override // com.ss.android.download.api.config.IDownloadButtonClickListener
    public void handleComplianceDialog(boolean z) {
        gok h;
        if (dq()) {
            h = null;
        } else {
            cpq f2 = cpq.f();
            hat f3 = hat.f();
            f3.i(ValueSetConstants.VALUE_HANDLE_COMPLIANCE_DIALOG_SHOULD_SHOW, z);
            f2.f13284b = f3.k();
            h = f2.h();
        }
        dq(ValueSetConstants.VALUE_HANDLE_COMPLIANCE_DIALOG, h);
    }

    @Override // com.ss.android.download.api.config.IDownloadButtonClickListener
    public void handleMarketFailedComplianceDialog() {
        dq(ValueSetConstants.VALUE_HANDLE_MARKET_FAILED_COMPLIANCE_DIALOG);
    }
}

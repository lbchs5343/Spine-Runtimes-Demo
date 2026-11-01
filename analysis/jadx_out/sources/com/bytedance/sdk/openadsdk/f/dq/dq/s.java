package com.bytedance.sdk.openadsdk.f.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.DownloadStatusController;
import g.hat;

/* loaded from: classes3.dex */
public class s implements DownloadStatusController {
    private final Bridge dq;

    public s(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    @Override // com.bytedance.sdk.openadsdk.DownloadStatusController
    public void cancelDownload() {
        this.dq.call(222102, hat.g(0).k(), Void.class);
    }

    @Override // com.bytedance.sdk.openadsdk.DownloadStatusController
    public void changeDownloadStatus() {
        this.dq.call(222101, hat.g(0).k(), Void.class);
    }
}

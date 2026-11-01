package com.ss.android.socialbase.downloader.exception;

import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import g.awf;

/* loaded from: classes.dex */
public class p extends BaseException {

    /* renamed from: d, reason: collision with root package name */
    private final long f9370d;
    private final long dq;

    public p(long j, long j2) {
        super(PluginConstants.ERROR_PLUGIN_SIGN_VERIFY, awf.t("space is not enough required space is : ", String.valueOf(j2), " but available space is :", String.valueOf(j)));
        this.dq = j;
        this.f9370d = j2;
    }

    public long d() {
        return this.f9370d;
    }

    public long dq() {
        return this.dq;
    }
}

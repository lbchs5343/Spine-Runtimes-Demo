package com.ss.android.socialbase.downloader.depend;

import java.util.List;

/* loaded from: classes.dex */
public abstract class d implements le {
    private boolean dq = false;

    @Override // com.ss.android.socialbase.downloader.depend.le
    public void dq(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.dq = true;
    }

    @Override // com.ss.android.socialbase.downloader.depend.le
    public boolean dq() {
        return this.dq;
    }
}

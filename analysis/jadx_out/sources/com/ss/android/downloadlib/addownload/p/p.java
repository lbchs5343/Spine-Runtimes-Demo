package com.ss.android.downloadlib.addownload.p;

import android.text.TextUtils;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class p {
    private static p dq;

    /* renamed from: d, reason: collision with root package name */
    private List<mn> f9184d;

    private p() {
        ArrayList arrayList = new ArrayList();
        this.f9184d = arrayList;
        arrayList.add(new s());
        this.f9184d.add(new d());
        this.f9184d.add(new ox());
    }

    public static p dq() {
        if (dq == null) {
            synchronized (no.class) {
                try {
                    if (dq == null) {
                        dq = new p();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public void dq(com.ss.android.downloadad.api.dq.d dVar, int i, ia iaVar, com.ss.android.downloadlib.addownload.dq.ox oxVar) {
        List<mn> list = this.f9184d;
        if (list == null || list.size() == 0 || dVar == null) {
            iaVar.dq(dVar);
        }
        DownloadInfo dq2 = !TextUtils.isEmpty(dVar.ws()) ? com.ss.android.downloadlib.o.dq(com.ss.android.downloadlib.addownload.no.getContext()).dq(dVar.ws(), null, true) : com.ss.android.downloadlib.o.dq(com.ss.android.downloadlib.addownload.no.getContext()).d(dVar.dq());
        if (dq2 == null) {
            dq2 = Downloader.getInstance(com.ss.android.downloadlib.addownload.no.getContext()).getDownloadInfo(dVar.gh());
        }
        if (dq2 == null || !"application/vnd.android.package-archive".equals(dq2.getMimeType())) {
            iaVar.dq(dVar);
            return;
        }
        if (new o().dq(dVar, i, iaVar)) {
            return;
        }
        Iterator<mn> it = this.f9184d.iterator();
        while (it.hasNext()) {
            if (it.next().dq(dVar, i, iaVar, oxVar)) {
                return;
            }
        }
        iaVar.dq(dVar);
    }
}

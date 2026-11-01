package com.ss.android.downloadlib.addownload.p;

import android.content.Context;
import android.text.TextUtils;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class no {
    private static no dq;

    /* renamed from: d, reason: collision with root package name */
    private List<kk> f9180d;

    private no() {
        ArrayList arrayList = new ArrayList();
        this.f9180d = arrayList;
        arrayList.add(new o());
        this.f9180d.add(new ig());
        this.f9180d.add(new iw());
        this.f9180d.add(new dq());
    }

    public static no dq() {
        if (dq == null) {
            synchronized (no.class) {
                try {
                    if (dq == null) {
                        dq = new no();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public void dq(com.ss.android.downloadad.api.dq.d dVar, int i, ia iaVar) {
        List<kk> list = this.f9180d;
        if (list == null || list.size() == 0 || dVar == null) {
            iaVar.dq(dVar);
            return;
        }
        DownloadInfo dq2 = !TextUtils.isEmpty(dVar.ws()) ? com.ss.android.downloadlib.o.dq((Context) null).dq(dVar.ws(), null, true) : com.ss.android.downloadlib.o.dq((Context) null).d(dVar.dq());
        if (dq2 == null || !"application/vnd.android.package-archive".equals(dq2.getMimeType())) {
            iaVar.dq(dVar);
            return;
        }
        boolean z = com.ss.android.socialbase.downloader.mn.dq.dq(dVar.gh()).dq("pause_optimise_switch", 0) == 1;
        for (kk kkVar : this.f9180d) {
            if (z || (kkVar instanceof ig)) {
                if (kkVar.dq(dVar, i, iaVar)) {
                    return;
                }
            }
        }
        iaVar.dq(dVar);
    }
}

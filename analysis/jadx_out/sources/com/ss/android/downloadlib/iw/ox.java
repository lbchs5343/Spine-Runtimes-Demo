package com.ss.android.downloadlib.iw;

import com.ss.android.socialbase.appdownloader.ox.kk;
import com.ss.android.socialbase.appdownloader.ox.o;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ox implements o {
    private static volatile ox dq;

    /* renamed from: d, reason: collision with root package name */
    private List<o> f9229d;

    private ox() {
        ArrayList arrayList = new ArrayList();
        this.f9229d = arrayList;
        arrayList.add(new d());
        this.f9229d.add(new dq());
    }

    public static ox dq() {
        if (dq == null) {
            synchronized (ox.class) {
                try {
                    if (dq == null) {
                        dq = new ox();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final DownloadInfo downloadInfo, final int i, final kk kkVar) {
        if (i == this.f9229d.size() || i < 0) {
            kkVar.dq();
        } else {
            this.f9229d.get(i).dq(downloadInfo, new kk() { // from class: com.ss.android.downloadlib.iw.ox.1
                @Override // com.ss.android.socialbase.appdownloader.ox.kk
                public void dq() {
                    ox.this.dq(downloadInfo, i + 1, kkVar);
                }
            });
        }
    }

    @Override // com.ss.android.socialbase.appdownloader.ox.o
    public void dq(DownloadInfo downloadInfo, kk kkVar) {
        if (downloadInfo != null && this.f9229d.size() != 0) {
            dq(downloadInfo, 0, kkVar);
        } else if (kkVar != null) {
            kkVar.dq();
        }
    }
}

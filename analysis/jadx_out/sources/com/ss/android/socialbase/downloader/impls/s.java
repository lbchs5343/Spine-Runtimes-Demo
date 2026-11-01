package com.ss.android.socialbase.downloader.impls;

import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public class s extends dq {

    /* renamed from: d, reason: collision with root package name */
    private static com.ss.android.socialbase.downloader.ia.p f9403d;

    public s() {
        f9403d = new com.ss.android.socialbase.downloader.ia.p();
    }

    public static void ox(List<Callable<Object>> list) throws InterruptedException {
        ExecutorService fw = com.ss.android.socialbase.downloader.downloader.ox.fw();
        if (fw != null) {
            fw.invokeAll(list);
        }
    }

    public static List<Future> p(List<Runnable> list) {
        ExecutorService fw = com.ss.android.socialbase.downloader.downloader.ox.fw();
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(fw.submit(it.next()));
        }
        return arrayList;
    }

    public static Runnable s(List<Future> list) {
        BlockingQueue<Runnable> queue;
        Runnable runnable;
        if (list != null && !list.isEmpty()) {
            try {
                ExecutorService fw = com.ss.android.socialbase.downloader.downloader.ox.fw();
                if ((fw instanceof ThreadPoolExecutor) && (queue = ((ThreadPoolExecutor) fw).getQueue()) != null && !queue.isEmpty()) {
                    Iterator<Future> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            runnable = null;
                            break;
                        }
                        Future next = it.next();
                        if ((next instanceof Runnable) && queue.remove(next)) {
                            runnable = (Runnable) next;
                            break;
                        }
                    }
                    if (runnable != null) {
                        list.remove(runnable);
                        return runnable;
                    }
                }
            } catch (Throwable th) {
                com.ss.android.socialbase.downloader.ox.dq.p("DefaultDownloadEngine", "getUnstartedTask() error: " + th.toString());
            }
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.impls.dq
    public void d(int i) {
        com.ss.android.socialbase.downloader.ia.p pVar = f9403d;
        if (pVar == null) {
            return;
        }
        pVar.ox(i);
    }

    @Override // com.ss.android.socialbase.downloader.impls.dq
    public List<Integer> dq() {
        return f9403d.dq();
    }

    @Override // com.ss.android.socialbase.downloader.impls.dq
    public void dq(int i, long j) {
        com.ss.android.socialbase.downloader.ia.p pVar = f9403d;
        if (pVar == null) {
            return;
        }
        pVar.dq(i, j);
    }

    @Override // com.ss.android.socialbase.downloader.impls.dq
    public void dq(int i, DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d("DownloadTask", "start doDownload for task : ".concat(String.valueOf(i)));
        f9403d.dq(new com.ss.android.socialbase.downloader.ia.ox(downloadTask, this.dq));
    }

    @Override // com.ss.android.socialbase.downloader.impls.dq
    public void dq(com.ss.android.socialbase.downloader.ia.ox oxVar) {
        com.ss.android.socialbase.downloader.ia.p pVar = f9403d;
        if (pVar == null) {
            return;
        }
        pVar.d(oxVar);
    }

    @Override // com.ss.android.socialbase.downloader.impls.dq
    public boolean dq(int i) {
        DownloadInfo p;
        com.ss.android.socialbase.downloader.ia.p pVar = f9403d;
        if (pVar == null || !pVar.dq(i) || (p = p(i)) == null) {
            return false;
        }
        if (DownloadStatus.isDownloading(p.getStatus())) {
            return true;
        }
        d(i);
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.impls.dq
    public com.ss.android.socialbase.downloader.ia.ox ox(int i) {
        com.ss.android.socialbase.downloader.ia.p pVar = f9403d;
        if (pVar == null) {
            return null;
        }
        return pVar.d(i);
    }
}

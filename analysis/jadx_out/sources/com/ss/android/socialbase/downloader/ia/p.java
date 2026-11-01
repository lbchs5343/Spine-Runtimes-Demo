package com.ss.android.socialbase.downloader.ia;

import android.util.SparseArray;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class p {
    private static ExecutorService dq = new com.bytedance.sdk.component.o.p.p(2, 2, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new dq("Download_OP_Thread"));
    private int ox = 0;

    /* renamed from: d, reason: collision with root package name */
    private volatile SparseArray<ox> f9380d = new SparseArray<>();

    private void d() {
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.f9380d.size(); i++) {
                int keyAt = this.f9380d.keyAt(i);
                if (!this.f9380d.get(keyAt).p()) {
                    arrayList.add(Integer.valueOf(keyAt));
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                try {
                    Integer num = (Integer) arrayList.get(i2);
                    if (num != null) {
                        this.f9380d.remove(num.intValue());
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void dq(Runnable runnable) {
        dq.execute(runnable);
    }

    private void ox(ox oxVar) {
        Future mn;
        if (oxVar == null) {
            return;
        }
        try {
            ExecutorService f2 = com.ss.android.socialbase.downloader.downloader.ox.f();
            DownloadTask ox = oxVar.ox();
            if (ox != null && ox.getDownloadInfo() != null) {
                int executorGroup = ox.getDownloadInfo().getExecutorGroup();
                if (executorGroup == 3) {
                    f2 = com.ss.android.socialbase.downloader.downloader.ox.q();
                } else if (executorGroup == 4) {
                    f2 = com.ss.android.socialbase.downloader.downloader.ox.jy();
                }
            }
            if (f2 == null || !(f2 instanceof ThreadPoolExecutor)) {
                return;
            }
            ((ThreadPoolExecutor) f2).remove(oxVar);
            if (!com.ss.android.socialbase.downloader.mn.dq.dq(oxVar.s()).d("pause_with_interrupt", false) || (mn = oxVar.mn()) == null) {
                return;
            }
            mn.cancel(true);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public ox d(int i) {
        synchronized (p.class) {
            try {
                d();
                ox oxVar = this.f9380d.get(i);
                if (oxVar == null) {
                    return null;
                }
                oxVar.d();
                ox(oxVar);
                this.f9380d.remove(i);
                return oxVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(ox oxVar) {
        if (oxVar == null) {
            return;
        }
        synchronized (p.class) {
            try {
                if (com.ss.android.socialbase.downloader.kk.dq.dq(524288)) {
                    int indexOfValue = this.f9380d.indexOfValue(oxVar);
                    if (indexOfValue >= 0) {
                        this.f9380d.removeAt(indexOfValue);
                    }
                } else {
                    this.f9380d.remove(oxVar.s());
                }
            } finally {
            }
        }
    }

    public List<Integer> dq() {
        ArrayList arrayList;
        synchronized (p.class) {
            try {
                d();
                arrayList = new ArrayList();
                for (int i = 0; i < this.f9380d.size(); i++) {
                    ox oxVar = this.f9380d.get(this.f9380d.keyAt(i));
                    if (oxVar != null) {
                        arrayList.add(Integer.valueOf(oxVar.s()));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    public void dq(int i, long j) {
        this.f9380d.get(i);
    }

    public void dq(ox oxVar) {
        oxVar.iw();
        synchronized (p.class) {
            try {
                int i = this.ox;
                if (i >= 500) {
                    d();
                    this.ox = 0;
                } else {
                    this.ox = i + 1;
                }
                this.f9380d.put(oxVar.s(), oxVar);
            } finally {
            }
        }
        DownloadTask ox = oxVar.ox();
        try {
            ExecutorService f2 = com.ss.android.socialbase.downloader.downloader.ox.f();
            if (ox != null && ox.getDownloadInfo() != null) {
                if ("mime_type_plg".equals(ox.getDownloadInfo().getMimeType()) && com.ss.android.socialbase.downloader.mn.dq.ox().dq("divide_plugin", 1) == 1) {
                    ox.getDownloadInfo().safePutToDBJsonData("executor_group", 3);
                }
                int executorGroup = ox.getDownloadInfo().getExecutorGroup();
                if (executorGroup == 3) {
                    f2 = com.ss.android.socialbase.downloader.downloader.ox.q();
                } else if (executorGroup == 4) {
                    f2 = com.ss.android.socialbase.downloader.downloader.ox.jy();
                }
            }
            if (f2 == null) {
                com.ss.android.socialbase.downloader.p.dq.dq(ox.getMonitorDepend(), ox.getDownloadInfo(), new BaseException(1003, "execute failed cpu thread executor service is null"), ox.getDownloadInfo() != null ? ox.getDownloadInfo().getStatus() : 0);
            } else if (com.ss.android.socialbase.downloader.mn.dq.dq(oxVar.s()).d("pause_with_interrupt", false)) {
                oxVar.dq(f2.submit(oxVar));
            } else {
                f2.execute(oxVar);
            }
        } catch (Exception e2) {
            if (ox != null) {
                com.ss.android.socialbase.downloader.p.dq.dq(ox.getMonitorDepend(), ox.getDownloadInfo(), new BaseException(1003, com.ss.android.socialbase.downloader.kk.iw.d(e2, "DownloadThreadPoolExecute")), ox.getDownloadInfo() != null ? ox.getDownloadInfo().getStatus() : 0);
            }
            e2.printStackTrace();
        } catch (OutOfMemoryError e3) {
            if (ox != null) {
                com.ss.android.socialbase.downloader.p.dq.dq(ox.getMonitorDepend(), ox.getDownloadInfo(), new BaseException(1003, "execute OOM"), ox.getDownloadInfo() != null ? ox.getDownloadInfo().getStatus() : 0);
            }
            e3.printStackTrace();
        }
    }

    public boolean dq(int i) {
        synchronized (p.class) {
            try {
                boolean z = false;
                if (this.f9380d != null && this.f9380d.size() > 0) {
                    ox oxVar = this.f9380d.get(i);
                    if (oxVar != null && oxVar.p()) {
                        z = true;
                    }
                    return z;
                }
                return false;
            } finally {
            }
        }
    }

    public void ox(int i) {
        synchronized (p.class) {
            try {
                d();
                ox oxVar = this.f9380d.get(i);
                if (oxVar != null) {
                    oxVar.dq();
                    ox(oxVar);
                    this.f9380d.remove(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}

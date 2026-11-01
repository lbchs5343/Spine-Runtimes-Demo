package com.ss.android.socialbase.downloader.d;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.SparseArray;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.ss.android.socialbase.downloader.d.d;
import com.ss.android.socialbase.downloader.d.ox;
import com.ss.android.socialbase.downloader.downloader.SqlDownloadCacheService;
import com.ss.android.socialbase.downloader.downloader.ox;
import com.ss.android.socialbase.downloader.downloader.r;
import com.ss.android.socialbase.downloader.iw.kk;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class iw implements ServiceConnection, r {

    /* renamed from: d, reason: collision with root package name */
    private static boolean f9320d;
    private static int ox;
    private static long p;
    private ox dq;
    private Future<?> kk;
    private ox.dq.InterfaceC0247dq mn;
    private Handler s = new Handler(Looper.getMainLooper());
    private d iw = null;
    private Runnable ia = new Runnable() { // from class: com.ss.android.socialbase.downloader.d.iw.1
        @Override // java.lang.Runnable
        public void run() {
            if (iw.f9320d || iw.this.mn == null) {
                return;
            }
            iw.this.mn.dq();
        }
    };
    private CountDownLatch o = new CountDownLatch(1);

    public iw() {
        SqlDownloadCacheService.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean mn() {
        if (Build.VERSION.SDK_INT >= 26 || f9320d) {
            return false;
        }
        if (ox > 5) {
            com.ss.android.socialbase.downloader.ox.dq.p("SqlDownloadCacheAidlWra", "bindMainProcess: bind too many times!!! ");
            return false;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - p < 15000) {
            com.ss.android.socialbase.downloader.ox.dq.p("SqlDownloadCacheAidlWra", "bindMainProcess: time too short since last bind!!! ");
            return false;
        }
        ox++;
        p = currentTimeMillis;
        this.s.postDelayed(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.iw.3
            @Override // java.lang.Runnable
            public void run() {
                SqlDownloadCacheService.dq(com.ss.android.socialbase.downloader.downloader.ox.ob(), iw.this);
            }
        }, 1000L);
        return true;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo d(int i) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.d(i);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo d(int i, long j) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.d(i, j);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<DownloadInfo> d() {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.d();
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<DownloadInfo> d(String str) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.d(str);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.d(i, list);
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d(DownloadInfo downloadInfo) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.d(downloadInfo);
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d(com.ss.android.socialbase.downloader.model.d dVar) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.d(dVar);
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo dq(int i, int i2) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.dq(i, i2);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo dq(int i, long j) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.dq(i, j);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo dq(int i, long j, String str, String str2) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.dq(i, j, str, str2);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public ArrayList<kk> q(int i) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<DownloadInfo> dq(String str) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.dq(str);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public void dq() {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.dq();
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(int i, int i2, int i3, int i4) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.dq(i, i2, i3, i4);
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(int i, int i2, int i3, long j) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.dq(i, i2, i3, j);
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(int i, int i2, long j) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.dq(i, i2, j);
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.dq(i, list);
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.r
    public void dq(final SparseArray<DownloadInfo> sparseArray, final SparseArray<List<com.ss.android.socialbase.downloader.model.d>> sparseArray2, final p pVar) {
        com.ss.android.socialbase.downloader.downloader.ox.ig().submit(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.iw.4
            @Override // java.lang.Runnable
            public void run() {
                boolean z;
                p pVar2;
                Future future;
                iw.this.dq(new d.dq() { // from class: com.ss.android.socialbase.downloader.d.iw.4.1
                    @Override // com.ss.android.socialbase.downloader.d.d
                    public void dq(Map map, Map map2) {
                        com.ss.android.socialbase.downloader.kk.iw.dq(sparseArray, map);
                        com.ss.android.socialbase.downloader.kk.iw.dq(sparseArray2, map2);
                        pVar.dq();
                        iw.this.dq((d) null);
                    }
                });
                try {
                    z = !iw.this.o.await(PushUIConfig.dismissTime, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    th.printStackTrace();
                    z = false;
                }
                if (z && (future = iw.this.kk) != null) {
                    future.cancel(true);
                }
                iw.this.dq();
                if (!z || (pVar2 = pVar) == null) {
                    return;
                }
                pVar2.dq();
            }
        });
    }

    public void dq(d dVar) {
        synchronized (this) {
            ox oxVar = this.dq;
            if (oxVar != null) {
                try {
                    oxVar.dq(dVar);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            } else {
                this.iw = dVar;
            }
        }
    }

    public void dq(ox.dq.InterfaceC0247dq interfaceC0247dq) {
        this.mn = interfaceC0247dq;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(com.ss.android.socialbase.downloader.model.d dVar) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.dq(dVar);
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean dq(int i, Map<Long, kk> map) {
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean dq(DownloadInfo downloadInfo) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.dq(downloadInfo);
            }
            return false;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo ia(int i) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.ia(i);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public Map<Long, kk> ig(int i) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean iw(int i) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.iw(i);
            }
            return false;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo kk(int i) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.kk(i);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo mn(int i) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.mn(i);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void mp(int i) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo o(int i) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.o(i);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, final IBinder iBinder) {
        f9320d = true;
        this.s.removeCallbacks(this.ia);
        try {
            this.dq = ox.dq.dq(iBinder);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.kk = com.ss.android.socialbase.downloader.downloader.ox.ig().submit(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.iw.2
            @Override // java.lang.Runnable
            public void run() {
                IBinder iBinder2;
                IBinder.DeathRecipient deathRecipient;
                synchronized (this) {
                    try {
                        try {
                            if (iw.this.iw != null && iw.this.dq != null) {
                                iw.this.dq.dq(iw.this.iw);
                            }
                            iBinder2 = iBinder;
                            deathRecipient = new IBinder.DeathRecipient() { // from class: com.ss.android.socialbase.downloader.d.iw.2.1
                                @Override // android.os.IBinder.DeathRecipient
                                public void binderDied() {
                                    boolean unused = iw.f9320d = false;
                                    if (iw.this.mn() || iw.this.mn == null) {
                                        return;
                                    }
                                    iw.this.s.postDelayed(iw.this.ia, 2000L);
                                }
                            };
                        } catch (Throwable th2) {
                            try {
                                com.ss.android.socialbase.downloader.ox.dq.d("SqlDownloadCacheAidlWra", "onServiceConnected fail", th2);
                                if (iw.this.mn != null) {
                                    iw.this.mn.dq();
                                }
                                iw.this.o.countDown();
                                iBinder2 = iBinder;
                                deathRecipient = new IBinder.DeathRecipient() { // from class: com.ss.android.socialbase.downloader.d.iw.2.1
                                    @Override // android.os.IBinder.DeathRecipient
                                    public void binderDied() {
                                        boolean unused = iw.f9320d = false;
                                        if (iw.this.mn() || iw.this.mn == null) {
                                            return;
                                        }
                                        iw.this.s.postDelayed(iw.this.ia, 2000L);
                                    }
                                };
                            } finally {
                                iw.this.o.countDown();
                                try {
                                    iBinder.linkToDeath(new IBinder.DeathRecipient() { // from class: com.ss.android.socialbase.downloader.d.iw.2.1
                                        @Override // android.os.IBinder.DeathRecipient
                                        public void binderDied() {
                                            boolean unused = iw.f9320d = false;
                                            if (iw.this.mn() || iw.this.mn == null) {
                                                return;
                                            }
                                            iw.this.s.postDelayed(iw.this.ia, 2000L);
                                        }
                                    }, 0);
                                } catch (Throwable unused) {
                                }
                            }
                        }
                        iBinder2.linkToDeath(deathRecipient, 0);
                    } catch (Throwable unused2) {
                    }
                }
            }
        });
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.dq = null;
        f9320d = false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo ox(int i, long j) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.ox(i, j);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<com.ss.android.socialbase.downloader.model.d> ox(int i) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.ox(i);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<DownloadInfo> ox(String str) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.ox(str);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void ox() {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.ox();
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo p(int i, long j) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.p(i, j);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<DownloadInfo> p(String str) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.p(str);
            }
            return null;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void p(int i) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                oxVar.p(i);
            }
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean p() {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.p();
            }
            return false;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean s() {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.s();
            }
            return false;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean s(int i) {
        try {
            ox oxVar = this.dq;
            if (oxVar != null) {
                return oxVar.s(i);
            }
            return false;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }
}

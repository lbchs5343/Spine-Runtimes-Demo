package com.ss.android.socialbase.downloader.impls;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.downloader.IndependentProcessDownloadService;
import com.ss.android.socialbase.downloader.downloader.kk;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class q extends com.ss.android.socialbase.downloader.downloader.dq implements ServiceConnection {
    private static final String s = "q";
    private int ia = -1;
    private com.ss.android.socialbase.downloader.downloader.kk iw;
    private com.ss.android.socialbase.downloader.downloader.q mn;

    private void mn() {
        SparseArray<List<DownloadTask>> clone;
        try {
            synchronized (this.dq) {
                clone = this.dq.clone();
                this.dq.clear();
            }
            if (clone == null || clone.size() <= 0 || com.ss.android.socialbase.downloader.downloader.ox.n() == null) {
                return;
            }
            for (int i = 0; i < clone.size(); i++) {
                List<DownloadTask> list = clone.get(clone.keyAt(i));
                if (list != null) {
                    Iterator<DownloadTask> it = list.iterator();
                    while (it.hasNext()) {
                        try {
                            this.iw.dq(com.ss.android.socialbase.downloader.kk.mn.dq(it.next()));
                        } catch (RemoteException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th) {
            com.ss.android.socialbase.downloader.ox.dq.d(s, "resumePendingTaskForIndependent failed", th);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq, com.ss.android.socialbase.downloader.downloader.jy
    public void d(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        String str = s;
        StringBuilder sb = new StringBuilder("tryDownload aidlService == null:");
        sb.append(this.iw == null);
        com.ss.android.socialbase.downloader.ox.dq.d(str, sb.toString());
        if (this.iw == null) {
            dq(downloadTask);
            startService(com.ss.android.socialbase.downloader.downloader.ox.ob(), this);
            return;
        }
        mn();
        try {
            this.iw.dq(com.ss.android.socialbase.downloader.kk.mn.dq(downloadTask));
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq, com.ss.android.socialbase.downloader.downloader.jy
    public IBinder dq(Intent intent) {
        if (intent != null && intent.getBooleanExtra("fix_downloader_db_sigbus", false)) {
            com.ss.android.socialbase.downloader.mn.dq.dq("fix_sigbus_downloader_db", true);
        }
        com.ss.android.socialbase.downloader.ox.dq.d(s, "onBind IndependentDownloadBinder");
        return new mp();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq, com.ss.android.socialbase.downloader.downloader.jy
    public void dq(int i) {
        com.ss.android.socialbase.downloader.downloader.kk kkVar = this.iw;
        if (kkVar == null) {
            this.ia = i;
            return;
        }
        try {
            kkVar.ig(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq, com.ss.android.socialbase.downloader.downloader.jy
    public void dq(com.ss.android.socialbase.downloader.downloader.q qVar) {
        this.mn = qVar;
    }

    @Override // android.content.ServiceConnection
    public void onBindingDied(ComponentName componentName) {
        this.iw = null;
        com.ss.android.socialbase.downloader.downloader.q qVar = this.mn;
        if (qVar != null) {
            qVar.ia();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        String str = s;
        com.ss.android.socialbase.downloader.ox.dq.d(str, "onServiceConnected ");
        this.iw = kk.dq.dq(iBinder);
        com.ss.android.socialbase.downloader.downloader.q qVar = this.mn;
        if (qVar != null) {
            qVar.dq(iBinder);
        }
        StringBuilder sb = new StringBuilder("onServiceConnected aidlService!=null");
        sb.append(this.iw != null);
        sb.append(" pendingTasks.size:");
        sb.append(this.dq.size());
        com.ss.android.socialbase.downloader.ox.dq.d(str, sb.toString());
        if (this.iw != null) {
            com.ss.android.socialbase.downloader.downloader.p.dq().d();
            this.f9355d = true;
            this.p = false;
            int i = this.ia;
            if (i != -1) {
                try {
                    this.iw.ig(i);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
            if (this.iw != null) {
                mn();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        com.ss.android.socialbase.downloader.ox.dq.d(s, "onServiceDisconnected ");
        this.iw = null;
        this.f9355d = false;
        com.ss.android.socialbase.downloader.downloader.q qVar = this.mn;
        if (qVar != null) {
            qVar.ia();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq, com.ss.android.socialbase.downloader.downloader.jy
    public void ox(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.p.dq().dq(downloadTask.getDownloadId(), true);
        dq n = com.ss.android.socialbase.downloader.downloader.ox.n();
        if (n != null) {
            n.dq(downloadTask);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq, com.ss.android.socialbase.downloader.downloader.jy
    public void startService() {
        if (this.iw == null) {
            startService(com.ss.android.socialbase.downloader.downloader.ox.ob(), this);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq
    public void startService(Context context, ServiceConnection serviceConnection) {
        try {
            com.ss.android.socialbase.downloader.ox.dq.d(s, "bindService");
            Intent intent = new Intent(context, (Class<?>) IndependentProcessDownloadService.class);
            if (com.ss.android.socialbase.downloader.kk.iw.dq()) {
                intent.putExtra("fix_downloader_db_sigbus", com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_sigbus_downloader_db"));
            }
            if (serviceConnection != null) {
                context.bindService(intent, serviceConnection, 1);
            }
            context.startService(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq
    public void stopService(Context context, ServiceConnection serviceConnection) {
        com.ss.android.socialbase.downloader.ox.dq.d(s, "stopService");
        this.f9355d = false;
        Intent intent = new Intent(context, (Class<?>) IndependentProcessDownloadService.class);
        if (serviceConnection != null) {
            context.unbindService(serviceConnection);
        }
        context.stopService(intent);
    }
}

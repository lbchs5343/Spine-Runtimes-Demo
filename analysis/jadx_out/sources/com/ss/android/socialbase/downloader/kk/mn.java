package com.ss.android.socialbase.downloader.kk;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadInterceptor;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.cd;
import com.ss.android.socialbase.downloader.depend.ce;
import com.ss.android.socialbase.downloader.depend.e;
import com.ss.android.socialbase.downloader.depend.er;
import com.ss.android.socialbase.downloader.depend.f;
import com.ss.android.socialbase.downloader.depend.fw;
import com.ss.android.socialbase.downloader.depend.gh;
import com.ss.android.socialbase.downloader.depend.i;
import com.ss.android.socialbase.downloader.depend.ia;
import com.ss.android.socialbase.downloader.depend.ig;
import com.ss.android.socialbase.downloader.depend.iw;
import com.ss.android.socialbase.downloader.depend.jy;
import com.ss.android.socialbase.downloader.depend.k;
import com.ss.android.socialbase.downloader.depend.kk;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.depend.le;
import com.ss.android.socialbase.downloader.depend.mn;
import com.ss.android.socialbase.downloader.depend.mp;
import com.ss.android.socialbase.downloader.depend.n;
import com.ss.android.socialbase.downloader.depend.o;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.depend.q;
import com.ss.android.socialbase.downloader.depend.r;
import com.ss.android.socialbase.downloader.depend.s;
import com.ss.android.socialbase.downloader.depend.u;
import com.ss.android.socialbase.downloader.depend.wp;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.model.dq;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn {
    private static Handler dq = new Handler(Looper.getMainLooper());

    public static IDownloadFileUriProvider dq(final com.ss.android.socialbase.downloader.depend.mn mnVar) {
        if (mnVar == null) {
            return null;
        }
        return new IDownloadFileUriProvider() { // from class: com.ss.android.socialbase.downloader.kk.mn.24
            @Override // com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider
            public Uri getUriForFile(String str, String str2) {
                try {
                    return com.ss.android.socialbase.downloader.depend.mn.this.dq(str, str2);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return null;
                }
            }
        };
    }

    public static IDownloadInterceptor dq(final com.ss.android.socialbase.downloader.depend.ia iaVar) {
        if (iaVar == null) {
            return null;
        }
        return new IDownloadInterceptor() { // from class: com.ss.android.socialbase.downloader.kk.mn.22
            @Override // com.ss.android.socialbase.downloader.depend.IDownloadInterceptor
            public boolean intercepte() {
                try {
                    return com.ss.android.socialbase.downloader.depend.ia.this.dq();
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
        };
    }

    public static IDownloadListener dq(final com.ss.android.socialbase.downloader.depend.kk kkVar) {
        if (kkVar == null) {
            return null;
        }
        return new gh() { // from class: com.ss.android.socialbase.downloader.kk.mn.25
            @Override // com.ss.android.socialbase.downloader.depend.gh
            public void dq(DownloadInfo downloadInfo) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.kk(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onCanceled(DownloadInfo downloadInfo) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.iw(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onFailed(DownloadInfo downloadInfo, BaseException baseException) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.dq(downloadInfo, baseException);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onFirstStart(DownloadInfo downloadInfo) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.mn(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onFirstSuccess(DownloadInfo downloadInfo) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.ia(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onPause(DownloadInfo downloadInfo) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.p(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onPrepare(DownloadInfo downloadInfo) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.dq(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onProgress(DownloadInfo downloadInfo) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.ox(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onRetry(DownloadInfo downloadInfo, BaseException baseException) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.d(downloadInfo, baseException);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onRetryDelay(DownloadInfo downloadInfo, BaseException baseException) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.ox(downloadInfo, baseException);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onStart(DownloadInfo downloadInfo) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.d(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.IDownloadListener
            public void onSuccessed(DownloadInfo downloadInfo) {
                try {
                    com.ss.android.socialbase.downloader.depend.kk.this.s(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        };
    }

    public static cd dq(final f fVar) {
        if (fVar == null) {
            return null;
        }
        return new cd() { // from class: com.ss.android.socialbase.downloader.kk.mn.19
            @Override // com.ss.android.socialbase.downloader.depend.cd
            public boolean dq(long j, long j2, fw fwVar) {
                try {
                    return f.this.dq(j, j2, mn.dq(fwVar));
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
        };
    }

    public static ce dq(final er erVar) {
        if (erVar == null) {
            return null;
        }
        return new ce.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.17
            @Override // com.ss.android.socialbase.downloader.depend.ce
            public void dq(int i, int i2) {
                er.this.dq(i, i2);
            }
        };
    }

    public static e dq(final kx kxVar) {
        if (kxVar == null) {
            return null;
        }
        return new e.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.23
            @Override // com.ss.android.socialbase.downloader.depend.e
            public String dq() throws RemoteException {
                return kx.this.dq();
            }

            @Override // com.ss.android.socialbase.downloader.depend.e
            public void dq(int i, DownloadInfo downloadInfo, String str, String str2) throws RemoteException {
                kx.this.dq(i, downloadInfo, str, str2);
            }

            @Override // com.ss.android.socialbase.downloader.depend.e
            public boolean dq(boolean z) throws RemoteException {
                return kx.this.dq(z);
            }
        };
    }

    public static er dq(final ce ceVar) {
        if (ceVar == null) {
            return null;
        }
        return new er() { // from class: com.ss.android.socialbase.downloader.kk.mn.18
            @Override // com.ss.android.socialbase.downloader.depend.er
            public void dq(int i, int i2) {
                try {
                    ce.this.dq(i, i2);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        };
    }

    public static f dq(final cd cdVar) {
        if (cdVar == null) {
            return null;
        }
        return new f.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.31
            @Override // com.ss.android.socialbase.downloader.depend.f
            public boolean dq(long j, long j2, jy jyVar) throws RemoteException {
                return cd.this.dq(j, j2, mn.dq(jyVar));
            }
        };
    }

    public static fw dq(final jy jyVar) {
        if (jyVar == null) {
            return null;
        }
        return new fw() { // from class: com.ss.android.socialbase.downloader.kk.mn.2
            @Override // com.ss.android.socialbase.downloader.depend.fw
            public void dq() {
                try {
                    jy.this.dq();
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        };
    }

    public static i dq(final k kVar) {
        if (kVar == null) {
            return null;
        }
        return new i.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.28
            @Override // com.ss.android.socialbase.downloader.depend.i
            public boolean dq(r rVar) throws RemoteException {
                return k.this.dq(mn.dq(rVar));
            }
        };
    }

    public static com.ss.android.socialbase.downloader.depend.ia dq(final IDownloadInterceptor iDownloadInterceptor) {
        if (iDownloadInterceptor == null) {
            return null;
        }
        return new ia.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.6
            @Override // com.ss.android.socialbase.downloader.depend.ia
            public boolean dq() throws RemoteException {
                return IDownloadInterceptor.this.intercepte();
            }
        };
    }

    public static ig dq(final mp mpVar) {
        if (mpVar == null) {
            return null;
        }
        return new ig.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.9
            @Override // com.ss.android.socialbase.downloader.depend.ig
            public boolean d(DownloadInfo downloadInfo) throws RemoteException {
                return mp.this.d(downloadInfo);
            }

            @Override // com.ss.android.socialbase.downloader.depend.ig
            public void dq(DownloadInfo downloadInfo) throws RemoteException {
                try {
                    mp.this.dq(downloadInfo);
                } catch (BaseException e2) {
                    throw new IllegalArgumentException(e2);
                }
            }
        };
    }

    public static com.ss.android.socialbase.downloader.depend.iw dq(final q qVar) {
        if (qVar == null) {
            return null;
        }
        return new iw.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.3
            @Override // com.ss.android.socialbase.downloader.depend.iw
            public void dq(DownloadInfo downloadInfo, BaseException baseException, int i) throws RemoteException {
                q.this.dq(downloadInfo, baseException, i);
            }
        };
    }

    public static jy dq(final fw fwVar) {
        if (fwVar == null) {
            return null;
        }
        return new jy.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.20
            @Override // com.ss.android.socialbase.downloader.depend.jy
            public void dq() throws RemoteException {
                fw.this.dq();
            }
        };
    }

    public static k dq(final i iVar) {
        if (iVar == null) {
            return null;
        }
        return new k() { // from class: com.ss.android.socialbase.downloader.kk.mn.15
            @Override // com.ss.android.socialbase.downloader.depend.k
            public boolean dq(le leVar) {
                try {
                    return i.this.dq(mn.dq(leVar));
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
        };
    }

    public static com.ss.android.socialbase.downloader.depend.kk dq(final IDownloadListener iDownloadListener, final boolean z) {
        if (iDownloadListener == null) {
            return null;
        }
        return new kk.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.12
            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void d(final DownloadInfo downloadInfo) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.5
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onStart(downloadInfo);
                        }
                    });
                } else {
                    IDownloadListener.this.onStart(downloadInfo);
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void d(final DownloadInfo downloadInfo, final BaseException baseException) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.2
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onRetry(downloadInfo, baseException);
                        }
                    });
                } else {
                    IDownloadListener.this.onRetry(downloadInfo, baseException);
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public int dq() throws RemoteException {
                return IDownloadListener.this.hashCode();
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void dq(final DownloadInfo downloadInfo) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onPrepare(downloadInfo);
                        }
                    });
                } else {
                    IDownloadListener.this.onPrepare(downloadInfo);
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void dq(final DownloadInfo downloadInfo, final BaseException baseException) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.9
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onFailed(downloadInfo, baseException);
                        }
                    });
                } else {
                    IDownloadListener.this.onFailed(downloadInfo, baseException);
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void ia(final DownloadInfo downloadInfo) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.12
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onFirstSuccess(downloadInfo);
                        }
                    });
                } else {
                    IDownloadListener.this.onFirstSuccess(downloadInfo);
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void iw(final DownloadInfo downloadInfo) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.10
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onCanceled(downloadInfo);
                        }
                    });
                } else {
                    IDownloadListener.this.onCanceled(downloadInfo);
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void kk(final DownloadInfo downloadInfo) throws RemoteException {
                IDownloadListener iDownloadListener2 = IDownloadListener.this;
                if (iDownloadListener2 instanceof gh) {
                    if (z) {
                        mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.4
                            @Override // java.lang.Runnable
                            public void run() {
                                ((gh) IDownloadListener.this).dq(downloadInfo);
                            }
                        });
                    } else {
                        ((gh) iDownloadListener2).dq(downloadInfo);
                    }
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void mn(final DownloadInfo downloadInfo) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.11
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onFirstStart(downloadInfo);
                        }
                    });
                } else {
                    IDownloadListener.this.onFirstStart(downloadInfo);
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void ox(final DownloadInfo downloadInfo) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.6
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onProgress(downloadInfo);
                        }
                    });
                } else {
                    IDownloadListener.this.onProgress(downloadInfo);
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void ox(final DownloadInfo downloadInfo, final BaseException baseException) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.3
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onRetryDelay(downloadInfo, baseException);
                        }
                    });
                } else {
                    IDownloadListener.this.onRetryDelay(downloadInfo, baseException);
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void p(final DownloadInfo downloadInfo) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.7
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onPause(downloadInfo);
                        }
                    });
                } else {
                    IDownloadListener.this.onPause(downloadInfo);
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kk
            public void s(final DownloadInfo downloadInfo) throws RemoteException {
                if (z) {
                    mn.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.kk.mn.12.8
                        @Override // java.lang.Runnable
                        public void run() {
                            IDownloadListener.this.onSuccessed(downloadInfo);
                        }
                    });
                } else {
                    IDownloadListener.this.onSuccessed(downloadInfo);
                }
            }
        };
    }

    public static kx dq(final e eVar) {
        if (eVar == null) {
            return null;
        }
        return new kx() { // from class: com.ss.android.socialbase.downloader.kk.mn.7
            @Override // com.ss.android.socialbase.downloader.depend.kx
            public String dq() {
                try {
                    return e.this.dq();
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return null;
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kx
            public void dq(int i, DownloadInfo downloadInfo, String str, String str2) {
                try {
                    e.this.dq(i, downloadInfo, str, str2);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.kx
            public boolean dq(boolean z) {
                try {
                    return e.this.dq(z);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
        };
    }

    public static le dq(final r rVar) {
        if (rVar == null) {
            return null;
        }
        return new le() { // from class: com.ss.android.socialbase.downloader.kk.mn.30
            @Override // com.ss.android.socialbase.downloader.depend.le
            public void dq(List<String> list) {
                try {
                    r.this.dq(list);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.le
            public boolean dq() {
                try {
                    return r.this.dq();
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
        };
    }

    public static com.ss.android.socialbase.downloader.depend.mn dq(final IDownloadFileUriProvider iDownloadFileUriProvider) {
        if (iDownloadFileUriProvider == null) {
            return null;
        }
        return new mn.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.29
            @Override // com.ss.android.socialbase.downloader.depend.mn
            public Uri dq(String str, String str2) throws RemoteException {
                return IDownloadFileUriProvider.this.getUriForFile(str, str2);
            }
        };
    }

    public static mp dq(final ig igVar) {
        if (igVar == null) {
            return null;
        }
        return new mp() { // from class: com.ss.android.socialbase.downloader.kk.mn.8
            @Override // com.ss.android.socialbase.downloader.depend.mp
            public boolean d(DownloadInfo downloadInfo) {
                try {
                    return ig.this.d(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return false;
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.mp
            public void dq(DownloadInfo downloadInfo) throws BaseException {
                try {
                    ig.this.dq(downloadInfo);
                } catch (RemoteException e2) {
                    throw new BaseException(1008, e2);
                }
            }
        };
    }

    public static n dq(final op opVar) {
        if (opVar == null) {
            return null;
        }
        return new n.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.26
            @Override // com.ss.android.socialbase.downloader.depend.n
            public boolean d(DownloadInfo downloadInfo) throws RemoteException {
                return op.this.d(downloadInfo);
            }

            @Override // com.ss.android.socialbase.downloader.depend.n
            public boolean dq(DownloadInfo downloadInfo) throws RemoteException {
                return op.this.dq(downloadInfo);
            }

            @Override // com.ss.android.socialbase.downloader.depend.n
            public boolean ox(DownloadInfo downloadInfo) throws RemoteException {
                return op.this.ox(downloadInfo);
            }
        };
    }

    public static com.ss.android.socialbase.downloader.depend.o dq(final wp wpVar) {
        if (wpVar == null) {
            return null;
        }
        return new o.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.4
            @Override // com.ss.android.socialbase.downloader.depend.o
            public int[] d() throws RemoteException {
                wp wpVar2 = wp.this;
                if (wpVar2 instanceof com.ss.android.socialbase.downloader.depend.ox) {
                    return ((com.ss.android.socialbase.downloader.depend.ox) wpVar2).dq();
                }
                return null;
            }

            @Override // com.ss.android.socialbase.downloader.depend.o
            public String dq() throws RemoteException {
                return wp.this.d();
            }

            @Override // com.ss.android.socialbase.downloader.depend.o
            public void dq(String str) throws RemoteException {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                try {
                    wp.this.dq(new JSONObject(str));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        };
    }

    public static op dq(final n nVar) {
        if (nVar == null) {
            return null;
        }
        return new op() { // from class: com.ss.android.socialbase.downloader.kk.mn.10
            @Override // com.ss.android.socialbase.downloader.depend.op
            public boolean d(DownloadInfo downloadInfo) {
                try {
                    return n.this.d(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return false;
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.op
            public boolean dq(DownloadInfo downloadInfo) {
                try {
                    return n.this.dq(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return false;
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.op
            public boolean ox(DownloadInfo downloadInfo) {
                try {
                    return n.this.ox(downloadInfo);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return false;
                }
            }
        };
    }

    public static q dq(final com.ss.android.socialbase.downloader.depend.iw iwVar) {
        if (iwVar == null) {
            return null;
        }
        return new q() { // from class: com.ss.android.socialbase.downloader.kk.mn.13
            @Override // com.ss.android.socialbase.downloader.depend.q
            public void dq(DownloadInfo downloadInfo, BaseException baseException, int i) {
                if (downloadInfo == null) {
                    return;
                }
                try {
                    com.ss.android.socialbase.downloader.depend.iw.this.dq(downloadInfo, baseException, i);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }
        };
    }

    public static r dq(final le leVar) {
        if (leVar == null) {
            return null;
        }
        return new r.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.16
            @Override // com.ss.android.socialbase.downloader.depend.r
            public void dq(List<String> list) {
                le.this.dq(list);
            }

            @Override // com.ss.android.socialbase.downloader.depend.r
            public boolean dq() {
                return le.this.dq();
            }
        };
    }

    public static com.ss.android.socialbase.downloader.depend.s dq(final com.ss.android.socialbase.downloader.downloader.ia iaVar) {
        if (iaVar == null) {
            return null;
        }
        return new s.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.5
            @Override // com.ss.android.socialbase.downloader.depend.s
            public int dq(long j) throws RemoteException {
                return com.ss.android.socialbase.downloader.downloader.ia.this.dq(j);
            }
        };
    }

    public static u dq(final com.ss.android.socialbase.downloader.downloader.gh ghVar) {
        if (ghVar == null) {
            return null;
        }
        return new u.dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.27
            @Override // com.ss.android.socialbase.downloader.depend.u
            public long dq(int i, int i2) throws RemoteException {
                return com.ss.android.socialbase.downloader.downloader.gh.this.dq(i, i2);
            }
        };
    }

    public static wp dq(final com.ss.android.socialbase.downloader.depend.o oVar) {
        if (oVar == null) {
            return null;
        }
        return new com.ss.android.socialbase.downloader.depend.ox() { // from class: com.ss.android.socialbase.downloader.kk.mn.14
            @Override // com.ss.android.socialbase.downloader.depend.wp
            public String d() {
                try {
                    return com.ss.android.socialbase.downloader.depend.o.this.dq();
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return "";
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.wp
            public void dq(JSONObject jSONObject) {
                if (jSONObject == null) {
                    return;
                }
                try {
                    com.ss.android.socialbase.downloader.depend.o.this.dq(jSONObject.toString());
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
            }

            @Override // com.ss.android.socialbase.downloader.depend.ox
            public int[] dq() {
                try {
                    return com.ss.android.socialbase.downloader.depend.o.this.d();
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return null;
                }
            }
        };
    }

    public static com.ss.android.socialbase.downloader.downloader.gh dq(final u uVar) {
        if (uVar == null) {
            return null;
        }
        return new com.ss.android.socialbase.downloader.downloader.gh() { // from class: com.ss.android.socialbase.downloader.kk.mn.21
            @Override // com.ss.android.socialbase.downloader.downloader.gh
            public long dq(int i, int i2) {
                try {
                    return u.this.dq(i, i2);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return 0L;
                }
            }
        };
    }

    public static com.ss.android.socialbase.downloader.downloader.ia dq(final com.ss.android.socialbase.downloader.depend.s sVar) {
        if (sVar == null) {
            return null;
        }
        return new com.ss.android.socialbase.downloader.downloader.ia() { // from class: com.ss.android.socialbase.downloader.kk.mn.11
            @Override // com.ss.android.socialbase.downloader.downloader.ia
            public int dq(long j) {
                try {
                    return com.ss.android.socialbase.downloader.depend.s.this.dq(j);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                    return 0;
                }
            }
        };
    }

    public static DownloadTask dq(com.ss.android.socialbase.downloader.model.dq dqVar) {
        if (dqVar == null) {
            return null;
        }
        try {
            DownloadTask downloadTask = new DownloadTask(dqVar.dq());
            downloadTask.chunkStategy(dq(dqVar.d())).notificationEventListener(dq(dqVar.ox())).interceptor(dq(dqVar.s())).depend(dq(dqVar.iw())).monitorDepend(dq(dqVar.o())).forbiddenHandler(dq(dqVar.mn())).diskSpaceHandler(dq(dqVar.kk())).fileUriProvider(dq(dqVar.no())).notificationClickCallback(dq(dqVar.p())).retryDelayTimeCalculator(dq(dqVar.ia()));
            com.ss.android.socialbase.downloader.constants.iw iwVar = com.ss.android.socialbase.downloader.constants.iw.MAIN;
            com.ss.android.socialbase.downloader.depend.kk d2 = dqVar.d(iwVar.ordinal());
            if (d2 != null) {
                downloadTask.mainThreadListenerWithHashCode(d2.hashCode(), dq(d2));
            }
            com.ss.android.socialbase.downloader.constants.iw iwVar2 = com.ss.android.socialbase.downloader.constants.iw.SUB;
            com.ss.android.socialbase.downloader.depend.kk d3 = dqVar.d(iwVar2.ordinal());
            if (d3 != null) {
                downloadTask.subThreadListenerWithHashCode(d3.hashCode(), dq(d3));
            }
            com.ss.android.socialbase.downloader.constants.iw iwVar3 = com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION;
            com.ss.android.socialbase.downloader.depend.kk d4 = dqVar.d(iwVar3.ordinal());
            if (d4 != null) {
                downloadTask.notificationListenerWithHashCode(d4.hashCode(), dq(d4));
            }
            dq(downloadTask, dqVar, iwVar);
            dq(downloadTask, dqVar, iwVar2);
            dq(downloadTask, dqVar, iwVar3);
            dq(downloadTask, dqVar);
            return downloadTask;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static com.ss.android.socialbase.downloader.model.dq dq(final DownloadTask downloadTask) {
        if (downloadTask == null) {
            return null;
        }
        return new dq.AbstractBinderC0252dq() { // from class: com.ss.android.socialbase.downloader.kk.mn.1
            @Override // com.ss.android.socialbase.downloader.model.dq
            public com.ss.android.socialbase.downloader.depend.kk d(int i) throws RemoteException {
                return mn.dq(DownloadTask.this.getSingleDownloadListener(iw.s(i)), i != com.ss.android.socialbase.downloader.constants.iw.SUB.ordinal());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public com.ss.android.socialbase.downloader.depend.s d() throws RemoteException {
                return mn.dq(DownloadTask.this.getChunkStrategy());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public int dq(int i) throws RemoteException {
                return DownloadTask.this.getDownloadListenerSize(iw.s(i));
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public com.ss.android.socialbase.downloader.depend.kk dq(int i, int i2) throws RemoteException {
                return mn.dq(DownloadTask.this.getDownloadListenerByIndex(iw.s(i), i2), i != com.ss.android.socialbase.downloader.constants.iw.SUB.ordinal());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public DownloadInfo dq() throws RemoteException {
                return DownloadTask.this.getDownloadInfo();
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public u ia() throws RemoteException {
                return mn.dq(DownloadTask.this.getRetryDelayTimeCalculator());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public int ig() throws RemoteException {
                return DownloadTask.this.getDownloadCompleteHandlers().size();
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public com.ss.android.socialbase.downloader.depend.iw iw() throws RemoteException {
                return mn.dq(DownloadTask.this.getDepend());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public f kk() throws RemoteException {
                return mn.dq(DownloadTask.this.getDiskSpaceHandler());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public i mn() throws RemoteException {
                return mn.dq(DownloadTask.this.getForbiddenHandler());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public com.ss.android.socialbase.downloader.depend.mn no() throws RemoteException {
                return mn.dq(DownloadTask.this.getFileUriProvider());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public com.ss.android.socialbase.downloader.depend.o o() throws RemoteException {
                return mn.dq(DownloadTask.this.getMonitorDepend());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public e ox() throws RemoteException {
                return mn.dq(DownloadTask.this.getNotificationEventListener());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public ig ox(int i) throws RemoteException {
                return mn.dq(DownloadTask.this.getDownloadCompleteHandlerByIndex(i));
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public n p() throws RemoteException {
                return mn.dq(DownloadTask.this.getNotificationClickCallback());
            }

            @Override // com.ss.android.socialbase.downloader.model.dq
            public com.ss.android.socialbase.downloader.depend.ia s() throws RemoteException {
                return mn.dq(DownloadTask.this.getInterceptor());
            }
        };
    }

    private static void dq(DownloadTask downloadTask, com.ss.android.socialbase.downloader.model.dq dqVar) throws RemoteException {
        for (int i = 0; i < dqVar.ig(); i++) {
            ig ox = dqVar.ox(i);
            if (ox != null) {
                downloadTask.addDownloadCompleteHandler(dq(ox));
            }
        }
    }

    private static void dq(DownloadTask downloadTask, com.ss.android.socialbase.downloader.model.dq dqVar, com.ss.android.socialbase.downloader.constants.iw iwVar) throws RemoteException {
        SparseArray<IDownloadListener> sparseArray = new SparseArray<>();
        for (int i = 0; i < dqVar.dq(iwVar.ordinal()); i++) {
            com.ss.android.socialbase.downloader.depend.kk dq2 = dqVar.dq(iwVar.ordinal(), i);
            if (dq2 != null) {
                sparseArray.put(dq2.dq(), dq(dq2));
            }
        }
        downloadTask.setDownloadListeners(sparseArray, iwVar);
    }
}

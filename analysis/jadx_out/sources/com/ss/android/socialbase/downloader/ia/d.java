package com.ss.android.socialbase.downloader.ia;

import android.annotation.SuppressLint;
import android.os.Process;
import com.ss.android.socialbase.downloader.downloader.o;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import com.ss.android.socialbase.downloader.network.kk;
import java.io.IOException;
import java.util.List;

/* loaded from: classes.dex */
public class d implements Runnable {
    private static final String dq = "d";

    /* renamed from: d, reason: collision with root package name */
    private com.ss.android.socialbase.downloader.model.d f9371d;
    private kk ia;
    private boolean ig;
    private DownloadInfo iw;
    private o kk;
    private final iw mn;
    private volatile boolean no;
    private volatile boolean o;
    private com.ss.android.socialbase.downloader.model.d ox;
    private com.ss.android.socialbase.downloader.downloader.s p;
    private final DownloadTask s;

    public d(com.ss.android.socialbase.downloader.model.d dVar, DownloadTask downloadTask, iw iwVar) {
        this.ig = false;
        this.ox = dVar;
        this.s = downloadTask;
        if (downloadTask != null) {
            this.iw = downloadTask.getDownloadInfo();
        }
        this.mn = iwVar;
        this.kk = com.ss.android.socialbase.downloader.downloader.ox.e();
        this.ox.dq(this);
    }

    public d(com.ss.android.socialbase.downloader.model.d dVar, DownloadTask downloadTask, kk kkVar, iw iwVar) {
        this(dVar, downloadTask, iwVar);
        this.ia = kkVar;
    }

    private void dq(com.ss.android.socialbase.downloader.model.d dVar, long j) {
        com.ss.android.socialbase.downloader.model.d s = dVar.p() ? dVar.s() : dVar;
        if (s == null) {
            if (dVar.p()) {
                this.kk.dq(dVar.no(), dVar.gh(), j);
            }
        } else {
            if (s.ia()) {
                this.kk.dq(s.no(), s.d(), j);
            }
            s.d(j);
            this.kk.dq(s.no(), s.gh(), s.d(), j);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x0238, code lost:
    
        if (r2 < 0) goto L167;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0261 A[Catch: all -> 0x01d2, TryCatch #6 {all -> 0x01d2, blocks: (B:74:0x01df, B:76:0x01e9, B:129:0x01ef, B:78:0x01f8, B:80:0x0200, B:110:0x0206, B:83:0x0211, B:85:0x0215, B:87:0x021d, B:89:0x022e, B:91:0x0254, B:93:0x025a, B:94:0x0267, B:96:0x026f, B:101:0x0261, B:103:0x023d, B:105:0x0249, B:114:0x027a, B:116:0x0282, B:118:0x028a, B:120:0x0292, B:122:0x029a, B:125:0x02a3, B:141:0x01c2, B:146:0x01cc, B:151:0x01d6), top: B:73:0x01df, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01e5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:184:0x01a9 A[Catch: all -> 0x017a, BaseException -> 0x017c, TRY_LEAVE, TryCatch #8 {BaseException -> 0x017c, blocks: (B:57:0x014d, B:59:0x0156, B:63:0x0162, B:64:0x0168, B:167:0x018f, B:168:0x019d, B:182:0x01a5, B:184:0x01a9, B:195:0x01be, B:196:0x01c1), top: B:56:0x014d }] */
    /* JADX WARN: Removed duplicated region for block: B:198:? A[Catch: all -> 0x017a, BaseException -> 0x017c, SYNTHETIC, TRY_LEAVE, TryCatch #8 {BaseException -> 0x017c, blocks: (B:57:0x014d, B:59:0x0156, B:63:0x0162, B:64:0x0168, B:167:0x018f, B:168:0x019d, B:182:0x01a5, B:184:0x01a9, B:195:0x01be, B:196:0x01c1), top: B:56:0x014d }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0103 A[Catch: all -> 0x00d2, BaseException -> 0x018b, TRY_ENTER, TryCatch #3 {BaseException -> 0x018b, blocks: (B:23:0x004e, B:25:0x0058, B:28:0x0063, B:47:0x00f9, B:49:0x0103, B:51:0x0107, B:54:0x0144, B:202:0x00df), top: B:22:0x004e }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01e9 A[Catch: all -> 0x01d2, TRY_ENTER, TryCatch #6 {all -> 0x01d2, blocks: (B:74:0x01df, B:76:0x01e9, B:129:0x01ef, B:78:0x01f8, B:80:0x0200, B:110:0x0206, B:83:0x0211, B:85:0x0215, B:87:0x021d, B:89:0x022e, B:91:0x0254, B:93:0x025a, B:94:0x0267, B:96:0x026f, B:101:0x0261, B:103:0x023d, B:105:0x0249, B:114:0x027a, B:116:0x0282, B:118:0x028a, B:120:0x0292, B:122:0x029a, B:125:0x02a3, B:141:0x01c2, B:146:0x01cc, B:151:0x01d6), top: B:73:0x01df, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x025a A[Catch: all -> 0x01d2, TryCatch #6 {all -> 0x01d2, blocks: (B:74:0x01df, B:76:0x01e9, B:129:0x01ef, B:78:0x01f8, B:80:0x0200, B:110:0x0206, B:83:0x0211, B:85:0x0215, B:87:0x021d, B:89:0x022e, B:91:0x0254, B:93:0x025a, B:94:0x0267, B:96:0x026f, B:101:0x0261, B:103:0x023d, B:105:0x0249, B:114:0x027a, B:116:0x0282, B:118:0x028a, B:120:0x0292, B:122:0x029a, B:125:0x02a3, B:141:0x01c2, B:146:0x01cc, B:151:0x01d6), top: B:73:0x01df, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x026f A[Catch: all -> 0x01d2, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x01d2, blocks: (B:74:0x01df, B:76:0x01e9, B:129:0x01ef, B:78:0x01f8, B:80:0x0200, B:110:0x0206, B:83:0x0211, B:85:0x0215, B:87:0x021d, B:89:0x022e, B:91:0x0254, B:93:0x025a, B:94:0x0267, B:96:0x026f, B:101:0x0261, B:103:0x023d, B:105:0x0249, B:114:0x027a, B:116:0x0282, B:118:0x028a, B:120:0x0292, B:122:0x029a, B:125:0x02a3, B:141:0x01c2, B:146:0x01cc, B:151:0x01d6), top: B:73:0x01df, inners: #14 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x026b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean dq(com.ss.android.socialbase.downloader.model.d dVar) {
        com.ss.android.socialbase.downloader.model.d dVar2;
        boolean z;
        long j;
        kk kkVar;
        while (true) {
            if (!dVar.p() || !dVar.iw() || (dVar2 = dVar.s()) == null || dVar2.gh() != dVar.gh()) {
                dVar2 = null;
            }
            com.ss.android.socialbase.downloader.model.d dVar3 = dVar2;
            if (dVar3 != null && dVar3.kk()) {
                return true;
            }
            long q = dVar.q();
            long f2 = dVar.f();
            long q2 = dVar.q();
            if (dVar3 != null) {
                q2 = dVar3.q();
                q = dVar3.q();
                f2 = dVar3.f();
            }
            long j2 = q;
            long j3 = f2;
            long j4 = 0;
            boolean z2 = false;
            try {
                try {
                    if (s()) {
                        return false;
                    }
                    String ox = ox();
                    boolean z3 = this.ia != null;
                    this.ig = z3;
                    dVar.d(z3);
                    try {
                        if (!this.ig) {
                            List<com.ss.android.socialbase.downloader.model.ox> dq2 = com.ss.android.socialbase.downloader.kk.iw.dq(this.iw.getExtraHeaders(), this.iw.geteTag(), j2, j3);
                            dq2.add(new com.ss.android.socialbase.downloader.model.ox("Chunk-Index", String.valueOf(dVar.gh())));
                            com.ss.android.socialbase.downloader.kk.iw.dq(dq2, this.iw);
                            com.ss.android.socialbase.downloader.kk.iw.d(dq2, this.iw);
                            this.ia = com.ss.android.socialbase.downloader.downloader.ox.dq(this.iw.isNeedDefaultHttpServiceBackUp(), this.iw.getMaxBytes(), ox, dq2);
                        }
                        try {
                            kk kkVar2 = this.ia;
                            if (kkVar2 != null && this.mn != null) {
                                try {
                                    int d2 = kkVar2.d();
                                    if (d2 < 200 || d2 >= 300) {
                                        this.mn.dq(this.ia);
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    th.printStackTrace();
                                    if (s()) {
                                    }
                                }
                            }
                        } catch (BaseException e2) {
                            e = e2;
                            z = false;
                            try {
                                if (s()) {
                                }
                            } finally {
                                p();
                            }
                        }
                    } catch (BaseException e3) {
                        try {
                            throw e3;
                        } catch (Throwable th2) {
                            th = th2;
                            Throwable th3 = th;
                            kkVar = this.ia;
                            if (kkVar != null) {
                                throw th3;
                            }
                            if (this.mn == null) {
                                throw th3;
                            }
                            try {
                                int d3 = kkVar.d();
                                if (d3 >= 200 && d3 < 300) {
                                    throw th3;
                                }
                                this.mn.dq(this.ia);
                                throw th3;
                            } catch (Throwable th4) {
                                th4.printStackTrace();
                                throw th3;
                            }
                        }
                    } catch (Throwable th5) {
                        try {
                            com.ss.android.socialbase.downloader.kk.iw.dq(th5, "ChunkRunnableConnection");
                            kk kkVar3 = this.ia;
                            if (kkVar3 != null && this.mn != null) {
                                try {
                                    int d4 = kkVar3.d();
                                    if (d4 < 200 || d4 >= 300) {
                                        this.mn.dq(this.ia);
                                    }
                                } catch (Throwable th6) {
                                    th = th6;
                                    th.printStackTrace();
                                    if (s()) {
                                    }
                                }
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            Throwable th32 = th;
                            kkVar = this.ia;
                            if (kkVar != null) {
                            }
                        }
                    }
                    if (s()) {
                        return false;
                    }
                    kk kkVar4 = this.ia;
                    if (kkVar4 == null) {
                        throw new BaseException(1022, new IOException("download can't continue, chunk connection is null"));
                    }
                    if (!this.ig) {
                        try {
                            int d5 = kkVar4.d();
                            if (!com.ss.android.socialbase.downloader.kk.iw.p(d5)) {
                                throw new BaseException(1002, "Http response error , code is : " + String.valueOf(d5) + " ");
                            }
                        } catch (BaseException e4) {
                            throw e4;
                        } catch (Throwable th8) {
                            com.ss.android.socialbase.downloader.kk.iw.dq(th8, "ChunkRunnableGetResponseCode");
                        }
                    }
                    z = false;
                    try {
                        try {
                            this.p = new com.ss.android.socialbase.downloader.downloader.s(this.iw, ox, this.ia, dVar, this.mn);
                            if (dVar3 != null) {
                                long ox2 = dVar3.ox(false);
                                if (j3 != 0 && j3 >= j2) {
                                    ox2 = (j3 - j2) + 1;
                                }
                                this.p.dq(dVar3.q(), dVar3.f(), ox2);
                            }
                            try {
                                this.p.p();
                                return true;
                            } catch (BaseException e5) {
                                e = e5;
                                z2 = true;
                                if (s()) {
                                    return true;
                                }
                                if (com.ss.android.socialbase.downloader.kk.iw.d(e)) {
                                    this.mn.dq(e, z);
                                    return z;
                                }
                                if (!this.mn.dq(e)) {
                                    if (!this.iw.isNeedChunkDowngradeRetry() || this.iw.isChunkDowngradeRetryUsed() || this.iw.getChunkCount() <= 1 || !com.ss.android.socialbase.downloader.kk.iw.dq(e, this.iw)) {
                                        this.mn.d(e);
                                        return z;
                                    }
                                    this.mn.ox(e);
                                    return z;
                                }
                                if (com.ss.android.socialbase.downloader.kk.iw.dq(e)) {
                                    this.mn.dq(e, true);
                                    return z;
                                }
                                if (z2) {
                                    if (this.p == null) {
                                        this.mn.d(e);
                                        return z;
                                    }
                                    if (com.ss.android.socialbase.downloader.kk.dq.dq(32)) {
                                        j = this.p.dq() - this.p.s();
                                        if (j > 0) {
                                            dq(dVar, this.p.s());
                                        }
                                        if ((!com.ss.android.socialbase.downloader.kk.dq.dq(16) ? this.mn.dq(dVar, e, j) : this.mn.dq(e, j)) != com.ss.android.socialbase.downloader.exception.ia.RETURN) {
                                            return z;
                                        }
                                        dVar.d(z);
                                        p();
                                    } else {
                                        j4 = this.p.dq() - q2;
                                        dq(dVar, q2);
                                    }
                                }
                                j = j4;
                                if ((!com.ss.android.socialbase.downloader.kk.dq.dq(16) ? this.mn.dq(dVar, e, j) : this.mn.dq(e, j)) != com.ss.android.socialbase.downloader.exception.ia.RETURN) {
                                }
                            }
                        } catch (BaseException e6) {
                            e = e6;
                            z2 = false;
                            if (s()) {
                            }
                        }
                    } catch (Throwable th9) {
                        th = th9;
                        if (s()) {
                            return true;
                        }
                        try {
                            com.ss.android.socialbase.downloader.kk.iw.dq(th, "downloadChunkInner");
                        } catch (BaseException e7) {
                            this.mn.d(e7);
                        }
                        return z;
                    }
                } catch (BaseException e8) {
                    e = e8;
                    z = false;
                }
            } catch (Throwable th10) {
                th = th10;
                z = false;
            }
        }
    }

    private String ox() {
        return this.iw.getConnectionUrl();
    }

    private void p() {
        kk kkVar = this.ia;
        if (kkVar != null) {
            kkVar.p();
            this.ia = null;
        }
    }

    private boolean s() {
        return this.o || this.no;
    }

    public void d() {
        this.no = true;
        com.ss.android.socialbase.downloader.downloader.s sVar = this.p;
        if (sVar != null) {
            sVar.ox();
        }
    }

    public void dq() {
        this.o = true;
        com.ss.android.socialbase.downloader.downloader.s sVar = this.p;
        if (sVar != null) {
            sVar.d();
        }
    }

    public void dq(long j, long j2) {
        com.ss.android.socialbase.downloader.downloader.s sVar = this.p;
        if (sVar == null) {
            return;
        }
        sVar.dq(j, j2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0017, code lost:
    
        r3.f9371d.dq(false);
     */
    @Override // java.lang.Runnable
    @SuppressLint({"DefaultLocale"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Process.setThreadPriority(10);
        this.f9371d = this.ox;
        while (true) {
            try {
                this.f9371d.dq(this);
                if (!dq(this.f9371d)) {
                    break;
                }
                this.f9371d.dq(false);
                if (!s()) {
                    this.f9371d = this.mn.dq(this.f9371d.gh());
                    if (s() || this.f9371d == null) {
                        break;
                    }
                    try {
                        Thread.sleep(50L);
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                } else {
                    break;
                }
            } catch (Throwable th2) {
                com.ss.android.socialbase.downloader.model.d dVar = this.f9371d;
                if (dVar != null) {
                    dVar.dq(false);
                }
                p();
                this.mn.dq(this);
                throw th2;
            }
        }
        com.ss.android.socialbase.downloader.model.d dVar2 = this.f9371d;
        if (dVar2 != null) {
            dVar2.dq(false);
        }
        p();
        this.mn.dq(this);
    }
}

package com.bykv.vk.openvk.component.video.dq.dq.dq;

import android.content.Context;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.fw;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.q;
import g.tn;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.SocketTimeoutException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class d implements ox {
    private RandomAccessFile kk;
    private final p o;
    private File ox;
    private File p;
    private long s;
    private volatile long dq = -2147483648L;

    /* renamed from: d, reason: collision with root package name */
    private final Object f560d = new Object();
    private volatile long iw = -1;
    private volatile boolean mn = false;
    private volatile boolean ia = false;

    public d(Context context, p pVar) {
        this.s = 0L;
        this.kk = null;
        this.o = pVar;
        try {
            this.ox = com.bykv.vk.openvk.component.video.dq.s.ox.d(pVar.s(), pVar.fw());
            this.p = com.bykv.vk.openvk.component.video.dq.s.ox.ox(pVar.s(), pVar.fw());
            if (p()) {
                this.kk = new RandomAccessFile(this.p, "r");
            } else {
                this.kk = new RandomAccessFile(this.ox, "rw");
            }
            if (p()) {
                return;
            }
            this.s = this.ox.length();
            dq();
        } catch (Throwable unused) {
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_MediaDLPlay", "Error using file ", pVar.f(), " as disc cache");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iw() throws IOException {
        synchronized (this.f560d) {
            if (p()) {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_MediaDLPlay", "complete: isCompleted ", this.o.f(), this.o.fw());
                return;
            }
            try {
            } finally {
                return;
            }
            if (this.ox.renameTo(this.p)) {
                RandomAccessFile randomAccessFile = this.kk;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.kk = new RandomAccessFile(this.p, "rw");
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_MediaDLPlay", "complete: rename ", this.o.fw(), this.o.f());
                return;
            }
            throw new IOException("Error renaming file " + this.ox + " to " + this.p + " for completion!");
        }
    }

    private boolean p() {
        return this.p.exists();
    }

    private long s() {
        return p() ? this.p.length() : this.ox.length();
    }

    @Override // com.bykv.vk.openvk.component.video.dq.dq.dq.ox
    public void d() {
        try {
            if (!this.mn) {
                this.kk.close();
            }
            File file = this.ox;
            if (file != null) {
                file.setLastModified(System.currentTimeMillis());
            }
            File file2 = this.p;
            if (file2 != null) {
                file2.setLastModified(System.currentTimeMillis());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        this.mn = true;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.dq.dq.ox
    public int dq(long j, byte[] bArr, int i, int i2) throws IOException {
        try {
            if (j == this.dq) {
                return -1;
            }
            int i3 = 0;
            int i4 = 0;
            while (!this.mn) {
                synchronized (this.f560d) {
                    try {
                        long s = s();
                        if (j < s) {
                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_MediaDLPlay", "read:  read " + j + " success");
                            this.kk.seek(j);
                            i4 = this.kk.read(bArr, i, i2);
                        } else {
                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_MediaDLPlay", "read: wait at ", Long.valueOf(j), "  file size = ", Long.valueOf(s));
                            i3 += 33;
                            this.f560d.wait(33L);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i4 > 0) {
                    return i4;
                }
                if (i3 >= 20000) {
                    throw new SocketTimeoutException();
                }
            }
            return -1;
        } catch (Throwable th2) {
            if (th2 instanceof IOException) {
                throw th2;
            }
            throw new IOException();
        }
    }

    public void dq() {
        ig.dq d2 = com.bykv.vk.openvk.component.video.api.ox.ox() != null ? com.bykv.vk.openvk.component.video.api.ox.ox().d() : new ig.dq("v_cache");
        long gh = this.o.gh();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        d2.dq(gh, timeUnit).d(this.o.r(), timeUnit).ox(this.o.i(), timeUnit);
        ig dq = d2.dq();
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_MediaDLPlay", "RANGE, bytes=", Long.valueOf(this.s), " file hash=", this.o.fw());
        dq.dq(new q.dq().dq("RANGE", tn.f(this.s, "-", new StringBuilder("bytes="))).dq(this.o.f()).dq().d()).dq(new com.bytedance.sdk.component.d.dq.ox() { // from class: com.bykv.vk.openvk.component.video.dq.dq.dq.d.1
            @Override // com.bytedance.sdk.component.d.dq.ox
            public void onFailure(com.bytedance.sdk.component.d.dq.d dVar, IOException iOException) {
                d.this.ia = false;
                d.this.dq = -1L;
            }

            /* JADX WARN: Removed duplicated region for block: B:43:0x023a A[Catch: all -> 0x0236, TryCatch #2 {all -> 0x0236, blocks: (B:58:0x0232, B:43:0x023a, B:44:0x023d, B:46:0x0248, B:48:0x025c), top: B:57:0x0232 }] */
            /* JADX WARN: Removed duplicated region for block: B:57:0x0232 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // com.bytedance.sdk.component.d.dq.ox
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onResponse(com.bytedance.sdk.component.d.dq.d dVar, f fVar) throws IOException {
                fw fwVar;
                if (fVar == null) {
                    d.this.ia = false;
                    d dVar2 = d.this;
                    dVar2.dq = dVar2.iw;
                    return;
                }
                InputStream inputStream = null;
                try {
                    d.this.ia = fVar.p();
                    if (d.this.ia) {
                        try {
                            fwVar = fVar.iw();
                            try {
                                if (d.this.ia && fwVar != null) {
                                    try {
                                        d.this.dq = fwVar.dq() + d.this.s;
                                        inputStream = fwVar.ox();
                                    } catch (Throwable th) {
                                        th = th;
                                        try {
                                            d.this.ia = false;
                                            d dVar3 = d.this;
                                            dVar3.dq = dVar3.iw;
                                            th.printStackTrace();
                                            if (inputStream != null) {
                                                try {
                                                    inputStream.close();
                                                } catch (Throwable th2) {
                                                    th2.printStackTrace();
                                                    return;
                                                }
                                            }
                                            if (fwVar != null) {
                                                fwVar.close();
                                            }
                                            fVar.close();
                                            if (d.this.ia || d.this.ox.length() != d.this.dq) {
                                                return;
                                            }
                                            d.this.iw();
                                            return;
                                        } finally {
                                        }
                                    }
                                }
                                if (inputStream == null) {
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (Throwable th3) {
                                            th3.printStackTrace();
                                            return;
                                        }
                                    }
                                    if (fwVar != null) {
                                        fwVar.close();
                                    }
                                    fVar.close();
                                    if (d.this.ia && d.this.ox.length() == d.this.dq) {
                                        d.this.iw();
                                        return;
                                    }
                                    return;
                                }
                                byte[] bArr = new byte[8192];
                                long j = d.this.s;
                                long j2 = 0;
                                long j3 = 0;
                                int i = 0;
                                while (true) {
                                    int read = inputStream.read(bArr, i, 8192 - i);
                                    if (read == -1) {
                                        break;
                                    }
                                    i += read;
                                    j3 += read;
                                    boolean z = j3 % 8192 == j2 || j3 == d.this.dq - d.this.s;
                                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_MediaDLPlay", "Write segment,execAppend =", Boolean.valueOf(z), " offset=", Integer.valueOf(i), " totalLength = ", Long.valueOf(d.this.dq), " saveSize =", Long.valueOf(j3), " startSaved=", Long.valueOf(d.this.s), " fileHash=", d.this.o.fw(), " url=", d.this.o.f());
                                    if (z) {
                                        synchronized (d.this.f560d) {
                                            com.bykv.vk.openvk.component.video.dq.s.ox.dq(d.this.kk, bArr, Long.valueOf(j).intValue(), i, d.this.o.fw());
                                        }
                                        j += i;
                                        i = 0;
                                    }
                                    j2 = 0;
                                }
                                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_MediaDLPlay", "Write segment,Write over, startIndex =", Long.valueOf(d.this.s), " totalLength = ", Long.valueOf(d.this.dq), " saveSize = ", Long.valueOf(j3), " writeEndSegment =", Boolean.valueOf(j3 == d.this.dq - d.this.s), " url=", d.this.o.f());
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            fwVar = null;
                            d.this.ia = false;
                            d dVar32 = d.this;
                            dVar32.dq = dVar32.iw;
                            th.printStackTrace();
                            if (inputStream != null) {
                            }
                            if (fwVar != null) {
                            }
                            fVar.close();
                            if (d.this.ia) {
                                return;
                            } else {
                                return;
                            }
                        }
                    } else {
                        d.this.ia = false;
                        d dVar4 = d.this;
                        dVar4.dq = dVar4.iw;
                        fwVar = null;
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th6) {
                            th6.printStackTrace();
                            return;
                        }
                    }
                    if (fwVar != null) {
                        fwVar.close();
                    }
                    fVar.close();
                    if (d.this.ia && d.this.ox.length() == d.this.dq) {
                        d.this.iw();
                    }
                } catch (Throwable th7) {
                    th = th7;
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.dq.dq.dq.ox
    public long ox() throws IOException {
        if (p()) {
            this.dq = this.p.length();
        } else {
            synchronized (this.f560d) {
                int i = 0;
                while (this.dq == -2147483648L) {
                    try {
                        try {
                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_MediaDLPlay", "totalLength: wait");
                            i += 15;
                            this.f560d.wait(5L);
                            if (i > 20000) {
                                return -1L;
                            }
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                            throw new IOException("total length InterruptException");
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_MediaDLPlay", "totalLength= ", Long.valueOf(this.dq));
        return this.dq;
    }
}

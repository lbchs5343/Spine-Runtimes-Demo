package com.bykv.vk.openvk.component.video.dq.dq.d;

import android.content.Context;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bykv.vk.openvk.component.video.api.s.dq;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.fw;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.q;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private p f557d;
    private Context dq;
    private File p;
    private File s;
    private volatile boolean ox = false;
    private final List<dq.InterfaceC0005dq> iw = new ArrayList();
    private volatile boolean mn = false;

    public d(Context context, p pVar) {
        this.p = null;
        this.s = null;
        this.dq = context;
        this.f557d = pVar;
        this.p = com.bykv.vk.openvk.component.video.dq.s.ox.d(pVar.s(), pVar.fw());
        this.s = com.bykv.vk.openvk.component.video.dq.s.ox.ox(pVar.s(), pVar.fw());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(p pVar, int i) {
        synchronized (dq.InterfaceC0005dq.class) {
            try {
                for (dq.InterfaceC0005dq interfaceC0005dq : this.iw) {
                    if (interfaceC0005dq != null) {
                        interfaceC0005dq.d(pVar, i);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean d() {
        if (this.s.exists()) {
            return true;
        }
        if (!this.f557d.mp()) {
            if (this.p.length() >= this.f557d.iw()) {
                return true;
            }
            if (this.f557d.d() > 0 && this.p.length() >= this.f557d.d()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(p pVar, int i) {
        synchronized (dq.InterfaceC0005dq.class) {
            try {
                for (dq.InterfaceC0005dq interfaceC0005dq : this.iw) {
                    if (interfaceC0005dq != null) {
                        interfaceC0005dq.dq(pVar, i);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(p pVar, int i, String str) {
        synchronized (dq.InterfaceC0005dq.class) {
            try {
                for (dq.InterfaceC0005dq interfaceC0005dq : this.iw) {
                    if (interfaceC0005dq != null) {
                        interfaceC0005dq.dq(pVar, i, str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    private void ox() {
        ig.dq d2 = com.bykv.vk.openvk.component.video.api.ox.ox() != null ? com.bykv.vk.openvk.component.video.api.ox.ox().d() : new ig.dq("v_preload");
        long gh = this.f557d.gh();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        d2.dq(gh, timeUnit).d(this.f557d.r(), timeUnit).ox(this.f557d.i(), timeUnit);
        ig dq = d2.dq();
        q.dq dqVar = new q.dq();
        final long length = this.p.length();
        int iw = this.f557d.iw();
        boolean mp = this.f557d.mp();
        int d3 = this.f557d.d();
        if (d3 > 0) {
            if (d3 >= this.f557d.ig()) {
                mp = true;
            } else {
                iw = d3;
            }
        }
        if (mp) {
            dqVar.dq("RANGE", "bytes=" + length + "-").dq(this.f557d.f()).dq().d();
        } else {
            dqVar.dq("RANGE", "bytes=" + length + "-" + iw).dq(this.f557d.f()).dq().d();
        }
        dq.dq(dqVar.d()).dq(new com.bytedance.sdk.component.d.dq.ox() { // from class: com.bykv.vk.openvk.component.video.dq.dq.d.d.1
            @Override // com.bytedance.sdk.component.d.dq.ox
            public void onFailure(com.bytedance.sdk.component.d.dq.d dVar, IOException iOException) {
                d dVar2 = d.this;
                dVar2.dq(dVar2.f557d, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, iOException.getMessage());
                ox.dq(d.this.f557d);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Removed duplicated region for block: B:20:0x0264 A[Catch: all -> 0x0269, TryCatch #4 {all -> 0x0269, blocks: (B:18:0x0254, B:20:0x0264, B:21:0x026d), top: B:17:0x0254 }] */
            /* JADX WARN: Removed duplicated region for block: B:24:0x026b  */
            /* JADX WARN: Type inference failed for: r6v6 */
            @Override // com.bytedance.sdk.component.d.dq.ox
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onResponse(com.bytedance.sdk.component.d.dq.d dVar, f fVar) throws IOException {
                char c2;
                char c3;
                char c4;
                char c5;
                InputStream inputStream;
                Closeable closeable;
                Closeable closeable2;
                fw iw2;
                RandomAccessFile randomAccessFile;
                long j;
                Closeable closeable3;
                Closeable closeable4;
                d dVar2;
                long j2 = length;
                int i = 4;
                fw fwVar = null;
                if (fVar != null) {
                    try {
                        boolean p = fVar.p();
                        if (p) {
                            iw2 = fVar.iw();
                            try {
                                iw2 = fVar.iw();
                                if (!p || iw2 == null) {
                                    c2 = 3;
                                    c3 = 2;
                                    inputStream = null;
                                    j = 0;
                                } else {
                                    c2 = 3;
                                    c3 = 2;
                                    try {
                                        j = length + iw2.dq();
                                        inputStream = iw2.ox();
                                    } catch (Throwable th) {
                                        th = th;
                                        inputStream = null;
                                        closeable3 = null;
                                        fwVar = iw2;
                                        closeable2 = closeable3;
                                        c4 = 1;
                                        c5 = 0;
                                        closeable4 = closeable2;
                                        th.printStackTrace();
                                        d.this.p();
                                        d dVar3 = d.this;
                                        dVar3.dq(dVar3.f557d, fVar == null ? fVar.ox() : MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, th.getMessage());
                                        d.this.dq(closeable4);
                                        d.this.dq(inputStream);
                                        d.this.dq(fwVar);
                                        d.this.dq(fVar);
                                        String f2 = d.this.f557d.f();
                                        Integer valueOf = Integer.valueOf(d.this.f557d.iw());
                                        Object[] objArr = new Object[4];
                                        objArr[c5] = "Pre finally ";
                                        objArr[c4] = f2;
                                        objArr[c3] = " Preload size=";
                                        objArr[c2] = valueOf;
                                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr);
                                        ox.dq(d.this.f557d);
                                    }
                                }
                                if (inputStream == null) {
                                    try {
                                        d dVar4 = d.this;
                                        dVar4.dq(dVar4.f557d, fVar.ox(), fVar.s());
                                        d.this.dq((Closeable) null);
                                        d.this.dq(inputStream);
                                        d.this.dq(iw2);
                                        d.this.dq(fVar);
                                        String f3 = d.this.f557d.f();
                                        Integer valueOf2 = Integer.valueOf(d.this.f557d.iw());
                                        Object[] objArr2 = new Object[4];
                                        objArr2[0] = "Pre finally ";
                                        objArr2[1] = f3;
                                        objArr2[c3] = " Preload size=";
                                        objArr2[c2] = valueOf2;
                                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr2);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        closeable3 = null;
                                        fwVar = iw2;
                                        closeable2 = closeable3;
                                        c4 = 1;
                                        c5 = 0;
                                        closeable4 = closeable2;
                                        th.printStackTrace();
                                        d.this.p();
                                        d dVar32 = d.this;
                                        dVar32.dq(dVar32.f557d, fVar == null ? fVar.ox() : MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, th.getMessage());
                                        d.this.dq(closeable4);
                                        d.this.dq(inputStream);
                                        d.this.dq(fwVar);
                                        d.this.dq(fVar);
                                        String f22 = d.this.f557d.f();
                                        Integer valueOf3 = Integer.valueOf(d.this.f557d.iw());
                                        Object[] objArr3 = new Object[4];
                                        objArr3[c5] = "Pre finally ";
                                        objArr3[c4] = f22;
                                        objArr3[c3] = " Preload size=";
                                        objArr3[c2] = valueOf3;
                                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr3);
                                        ox.dq(d.this.f557d);
                                    }
                                } else {
                                    try {
                                        c4 = 1;
                                        try {
                                            randomAccessFile = new RandomAccessFile(d.this.p, "rw");
                                            try {
                                                byte[] bArr = new byte[8192];
                                                long j3 = 0;
                                                int i2 = 0;
                                                while (true) {
                                                    int read = inputStream.read(bArr, i2, 8192 - i2);
                                                    c5 = 0;
                                                    if (read != -1) {
                                                        try {
                                                            if (d.this.ox) {
                                                                d dVar5 = d.this;
                                                                dVar5.d(dVar5.f557d, fVar.ox());
                                                                d.this.dq(randomAccessFile);
                                                                d.this.dq(inputStream);
                                                                d.this.dq(iw2);
                                                                d.this.dq(fVar);
                                                                String f4 = d.this.f557d.f();
                                                                Integer valueOf4 = Integer.valueOf(d.this.f557d.iw());
                                                                Object[] objArr4 = new Object[i];
                                                                objArr4[0] = "Pre finally ";
                                                                objArr4[1] = f4;
                                                                objArr4[c3] = " Preload size=";
                                                                objArr4[c2] = valueOf4;
                                                                com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr4);
                                                                break;
                                                            }
                                                            i2 += read;
                                                            j3 += read;
                                                            if (j3 % 8192 == 0 || j3 == j - length) {
                                                                com.bykv.vk.openvk.component.video.dq.s.ox.dq(randomAccessFile, bArr, Long.valueOf(j2).intValue(), i2, d.this.f557d.fw());
                                                                j2 += i2;
                                                                i2 = 0;
                                                            }
                                                            i = 4;
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            fwVar = iw2;
                                                            closeable = randomAccessFile;
                                                            closeable4 = closeable;
                                                            th.printStackTrace();
                                                            d.this.p();
                                                            d dVar322 = d.this;
                                                            dVar322.dq(dVar322.f557d, fVar == null ? fVar.ox() : MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, th.getMessage());
                                                            d.this.dq(closeable4);
                                                            d.this.dq(inputStream);
                                                            d.this.dq(fwVar);
                                                            d.this.dq(fVar);
                                                            String f222 = d.this.f557d.f();
                                                            Integer valueOf32 = Integer.valueOf(d.this.f557d.iw());
                                                            Object[] objArr32 = new Object[4];
                                                            objArr32[c5] = "Pre finally ";
                                                            objArr32[c4] = f222;
                                                            objArr32[c3] = " Preload size=";
                                                            objArr32[c2] = valueOf32;
                                                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr32);
                                                            ox.dq(d.this.f557d);
                                                        }
                                                    } else {
                                                        if (d.this.f557d.mp() && j == d.this.p.length()) {
                                                            d.this.s();
                                                        }
                                                        d dVar6 = d.this;
                                                        dVar6.dq(dVar6.f557d, fVar.ox());
                                                        fwVar = randomAccessFile;
                                                    }
                                                }
                                                d.this.dq(fwVar);
                                                d.this.dq(inputStream);
                                                d.this.dq(iw2);
                                                d.this.dq(fVar);
                                                String f5 = d.this.f557d.f();
                                                Integer valueOf5 = Integer.valueOf(d.this.f557d.iw());
                                                Object[] objArr5 = new Object[4];
                                                objArr5[c5] = "Pre finally ";
                                                objArr5[c4] = f5;
                                                objArr5[c3] = " Preload size=";
                                                objArr5[c2] = valueOf5;
                                                com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr5);
                                            } catch (Throwable th4) {
                                                th = th4;
                                                c5 = 0;
                                            }
                                        } catch (Throwable th5) {
                                            th = th5;
                                            c5 = 0;
                                            randomAccessFile = 0;
                                            fwVar = iw2;
                                            closeable = randomAccessFile;
                                            closeable4 = closeable;
                                            th.printStackTrace();
                                            d.this.p();
                                            d dVar3222 = d.this;
                                            dVar3222.dq(dVar3222.f557d, fVar == null ? fVar.ox() : MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, th.getMessage());
                                            d.this.dq(closeable4);
                                            d.this.dq(inputStream);
                                            d.this.dq(fwVar);
                                            d.this.dq(fVar);
                                            String f2222 = d.this.f557d.f();
                                            Integer valueOf322 = Integer.valueOf(d.this.f557d.iw());
                                            Object[] objArr322 = new Object[4];
                                            objArr322[c5] = "Pre finally ";
                                            objArr322[c4] = f2222;
                                            objArr322[c3] = " Preload size=";
                                            objArr322[c2] = valueOf322;
                                            com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr322);
                                            ox.dq(d.this.f557d);
                                        }
                                    } catch (Throwable th6) {
                                        th = th6;
                                        c4 = 1;
                                    }
                                }
                            } catch (Throwable th7) {
                                th = th7;
                                c2 = 3;
                                c3 = 2;
                                c4 = 1;
                                c5 = 0;
                                inputStream = null;
                                randomAccessFile = 0;
                            }
                        } else {
                            try {
                                d dVar7 = d.this;
                                dVar7.dq(dVar7.f557d, fVar.ox(), fVar.s());
                                d.this.dq((Closeable) null);
                                d.this.dq((Closeable) null);
                                d.this.dq((Closeable) null);
                                d.this.dq(fVar);
                                com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", "Pre finally ", d.this.f557d.f(), " Preload size=", Integer.valueOf(d.this.f557d.iw()));
                            } catch (Throwable th8) {
                                th = th8;
                                inputStream = null;
                                closeable2 = null;
                                c2 = 3;
                                c3 = 2;
                                c4 = 1;
                                c5 = 0;
                                closeable4 = closeable2;
                                try {
                                    th.printStackTrace();
                                    d.this.p();
                                    d dVar32222 = d.this;
                                    dVar32222.dq(dVar32222.f557d, fVar == null ? fVar.ox() : MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, th.getMessage());
                                    d.this.dq(closeable4);
                                    d.this.dq(inputStream);
                                    d.this.dq(fwVar);
                                    d.this.dq(fVar);
                                    String f22222 = d.this.f557d.f();
                                    Integer valueOf3222 = Integer.valueOf(d.this.f557d.iw());
                                    Object[] objArr3222 = new Object[4];
                                    objArr3222[c5] = "Pre finally ";
                                    objArr3222[c4] = f22222;
                                    objArr3222[c3] = " Preload size=";
                                    objArr3222[c2] = valueOf3222;
                                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr3222);
                                    ox.dq(d.this.f557d);
                                } finally {
                                    d.this.dq(closeable4);
                                    d.this.dq(inputStream);
                                    d.this.dq(fwVar);
                                    d.this.dq(fVar);
                                    String f6 = d.this.f557d.f();
                                    Integer valueOf6 = Integer.valueOf(d.this.f557d.iw());
                                    Object[] objArr6 = new Object[4];
                                    objArr6[c5] = "Pre finally ";
                                    objArr6[c4] = f6;
                                    objArr6[c3] = " Preload size=";
                                    objArr6[c2] = valueOf6;
                                    com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr6);
                                    ox.dq(d.this.f557d);
                                }
                            }
                        }
                    } catch (Throwable th9) {
                        th = th9;
                        c2 = 3;
                        c3 = 2;
                        c4 = 1;
                        c5 = 0;
                        inputStream = null;
                        closeable = null;
                    }
                } else {
                    c2 = 3;
                    c3 = 2;
                    c4 = 1;
                    c5 = 0;
                    try {
                        dVar2 = d.this;
                    } catch (Throwable th10) {
                        th = th10;
                    }
                    try {
                        dVar2.dq(dVar2.f557d, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, "Network link failed.");
                        inputStream = null;
                        iw2 = null;
                        d.this.dq(fwVar);
                        d.this.dq(inputStream);
                        d.this.dq(iw2);
                        d.this.dq(fVar);
                        String f52 = d.this.f557d.f();
                        Integer valueOf52 = Integer.valueOf(d.this.f557d.iw());
                        Object[] objArr52 = new Object[4];
                        objArr52[c5] = "Pre finally ";
                        objArr52[c4] = f52;
                        objArr52[c3] = " Preload size=";
                        objArr52[c2] = valueOf52;
                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr52);
                    } catch (Throwable th11) {
                        th = th11;
                        inputStream = null;
                        closeable4 = null;
                        th.printStackTrace();
                        d.this.p();
                        d dVar322222 = d.this;
                        dVar322222.dq(dVar322222.f557d, fVar == null ? fVar.ox() : MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, th.getMessage());
                        d.this.dq(closeable4);
                        d.this.dq(inputStream);
                        d.this.dq(fwVar);
                        d.this.dq(fVar);
                        String f222222 = d.this.f557d.f();
                        Integer valueOf32222 = Integer.valueOf(d.this.f557d.iw());
                        Object[] objArr32222 = new Object[4];
                        objArr32222[c5] = "Pre finally ";
                        objArr32222[c4] = f222222;
                        objArr32222[c3] = " Preload size=";
                        objArr32222[c2] = valueOf32222;
                        com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", objArr32222);
                        ox.dq(d.this.f557d);
                    }
                }
                ox.dq(d.this.f557d);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        try {
            this.s.delete();
            this.p.delete();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        try {
            if (this.p.renameTo(this.s)) {
                return;
            }
            throw new IOException("Error renaming file " + this.p + " to " + this.s + " for completion!");
        } catch (Throwable th) {
            th.printStackTrace();
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", th.getMessage());
        }
    }

    public p dq() {
        return this.f557d;
    }

    public void dq(dq.InterfaceC0005dq interfaceC0005dq) {
        if (this.mn) {
            synchronized (dq.InterfaceC0005dq.class) {
                this.iw.add(interfaceC0005dq);
            }
            return;
        }
        this.iw.add(interfaceC0005dq);
        if (!d()) {
            this.mn = true;
            this.f557d.kk(0);
            ox();
        } else {
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("VideoPreload", "Cache file is exist");
            this.f557d.kk(1);
            dq(this.f557d, 200);
            ox.dq(this.f557d);
        }
    }

    public void dq(boolean z) {
        this.ox = z;
    }
}

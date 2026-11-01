package com.bykv.vk.openvk.component.video.dq.dq;

import android.content.Context;
import android.media.MediaDataSource;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.ox.p;
import com.bykv.vk.openvk.component.video.dq.dq.dq.d;
import com.bykv.vk.openvk.component.video.dq.dq.dq.ox;
import g.awf;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;

/* loaded from: classes.dex */
public class dq extends MediaDataSource {
    public static final ConcurrentHashMap<String, dq> dq = new ConcurrentHashMap<>();

    /* renamed from: d, reason: collision with root package name */
    private final ox f559d;
    private long ox = -2147483648L;
    private final Context p;
    private final p s;

    public dq(Context context, p pVar) {
        this.p = context;
        this.s = pVar;
        this.f559d = new d(context, pVar);
    }

    public static dq dq(Context context, p pVar) {
        dq dqVar = new dq(context, pVar);
        dq.put(pVar.fw(), dqVar);
        return dqVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("SdkMediaDataSource", "close: ", this.s.f());
        ox oxVar = this.f559d;
        if (oxVar != null) {
            oxVar.d();
        }
        dq.remove(this.s.fw());
    }

    public p dq() {
        return this.s;
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        if (this.ox == -2147483648L) {
            if (this.p == null || TextUtils.isEmpty(this.s.f())) {
                return -1L;
            }
            this.ox = this.f559d.ox();
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("SdkMediaDataSource", "getSize: " + this.ox);
        }
        return this.ox;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
        int dq2 = this.f559d.dq(j, bArr, i, i2);
        StringBuilder l = awf.l(j, "readAt: position = ", "  buffer.length =");
        l.append(bArr.length);
        l.append("  offset = ");
        l.append(i);
        l.append(" size =");
        l.append(dq2);
        l.append("  current = ");
        l.append(Thread.currentThread());
        com.bykv.vk.openvk.component.video.api.iw.ox.dq("SdkMediaDataSource", l.toString());
        return dq2;
    }
}

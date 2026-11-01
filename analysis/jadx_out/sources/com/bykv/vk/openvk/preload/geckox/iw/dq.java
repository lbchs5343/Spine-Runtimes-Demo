package com.bykv.vk.openvk.preload.geckox.iw;

import com.bykv.vk.openvk.preload.geckox.mn.ox;
import com.bykv.vk.openvk.preload.geckox.utils.no;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class dq {

    /* renamed from: d, reason: collision with root package name */
    public String f657d;
    public String dq;
    private volatile com.bykv.vk.openvk.preload.geckox.iw.dq.dq iw;
    public volatile File ox;
    volatile Long p;
    public AtomicBoolean s = new AtomicBoolean(false);

    public dq(String str, String str2) {
        this.dq = str;
        this.f657d = str2;
    }

    private synchronized File d(String str) throws Exception {
        if (this.ox != null) {
            return this.ox;
        }
        if (this.p != null && this.p.longValue() == -1) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.dq);
        String str2 = File.separator;
        sb.append(str2);
        sb.append(str);
        sb.append(str2);
        sb.append("select.lock");
        com.bykv.vk.openvk.preload.geckox.mn.d dq = com.bykv.vk.openvk.preload.geckox.mn.d.dq(sb.toString());
        try {
            if (this.p == null) {
                this.p = no.dq(new File(this.dq, str));
            }
            if (this.p == null) {
                this.p = -1L;
                dq.dq();
                return null;
            }
            File file = new File(this.dq, str2 + str + str2 + this.p + str2 + "using.lock");
            this.ox = file.getParentFile();
            ox.dq(file.getAbsolutePath());
            File file2 = this.ox;
            dq.dq();
            return file2;
        } catch (Throwable th) {
            dq.dq();
            throw th;
        }
    }

    public static String dq(String str, String str2) {
        return str2.substring(str.length() + 1);
    }

    public final synchronized com.bykv.vk.openvk.preload.geckox.iw.dq.dq dq(String str) throws Exception {
        if (this.iw != null) {
            return this.iw;
        }
        File d2 = d(str);
        if (d2 == null) {
            throw new FileNotFoundException("channel no exist，channel:".concat(String.valueOf(str)));
        }
        File file = new File(d2, "res.macv");
        File file2 = new File(d2, "res");
        if (file2.exists() && file2.isDirectory()) {
            this.iw = new com.bykv.vk.openvk.preload.geckox.iw.dq.ox(d2);
        } else {
            if (!file.exists() || !file.isFile()) {
                throw new RuntimeException("can not find res, dir:" + d2.getAbsolutePath());
            }
            this.iw = new com.bykv.vk.openvk.preload.geckox.iw.dq.d(d2);
        }
        return this.iw;
    }
}
